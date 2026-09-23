// JBird
// JSONScanner.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

// MARK: - Byte constants

extension UInt8 {
    fileprivate static let tab: UInt8 = 0x09
    fileprivate static let newline: UInt8 = 0x0A
    fileprivate static let carriageReturn: UInt8 = 0x0D
    fileprivate static let space: UInt8 = 0x20
    fileprivate static let quote: UInt8 = 0x22
    fileprivate static let plus: UInt8 = 0x2B
    fileprivate static let comma: UInt8 = 0x2C
    fileprivate static let minus: UInt8 = 0x2D
    fileprivate static let period: UInt8 = 0x2E
    fileprivate static let solidus: UInt8 = 0x2F
    fileprivate static let zero: UInt8 = 0x30
    fileprivate static let nine: UInt8 = 0x39
    fileprivate static let colon: UInt8 = 0x3A
    fileprivate static let upperE: UInt8 = 0x45
    fileprivate static let openBracket: UInt8 = 0x5B
    fileprivate static let backslash: UInt8 = 0x5C
    fileprivate static let closeBracket: UInt8 = 0x5D
    fileprivate static let lowerB: UInt8 = 0x62
    fileprivate static let lowerE: UInt8 = 0x65
    fileprivate static let lowerF: UInt8 = 0x66
    fileprivate static let lowerN: UInt8 = 0x6E
    fileprivate static let lowerR: UInt8 = 0x72
    fileprivate static let lowerT: UInt8 = 0x74
    fileprivate static let lowerU: UInt8 = 0x75
    fileprivate static let openBrace: UInt8 = 0x7B
    fileprivate static let closeBrace: UInt8 = 0x7D
}

// MARK: - Bounds-checked byte match

extension Span where Element == UInt8 {
    /// Whether `index` is before the end of the span and holds `byte`.
    @inline(__always)
    func match(_ byte: UInt8, at index: Int) -> Bool {
        index < count && self[unchecked: index] == byte
    }
}

// MARK: - Scanner state

/// The mutable state carried through the scan.
struct JSONScanState {

    /// The read cursor, as a byte offset into the input.
    var index: Int = 0

    /// The scratch buffer that string escape decoding accumulates into.
    ///
    /// One buffer is reused for the whole parse, so a document with many escaped strings
    /// allocates once rather than once per string.
    var scratch: [UInt8] = []

    /// Object keys seen so far, so a key that repeats builds one `String` for the whole parse.
    ///
    /// Empty until the first key that would allocate, so a document with short keys or no
    /// objects at all never pays for the table.
    var keyCache: [String] = []

    /// The maximum value depth. `0` means unlimited.
    let maxDepth: Int

    /// Whether insignificant whitespace is skipped. The `requireMinified` option clears this.
    let skipsWhitespace: Bool

    /// Whether an object member whose value is null is dropped.
    let omitNullKeys: Bool

    /// Whether a null is dropped from an array, and from an object member.
    let omitNullValues: Bool

    /// Whether a repeated object key is an error.
    let requireUniqueKeys: Bool

    /// Whether every string is checked for valid UTF-8
    let validatesUTF8: Bool = false

    /// Whether each value checks for task cancellation.
    ///
    /// The asynchronous entry points set this. `Task.checkCancellation()` is not `async`,
    /// so one synchronous scanner serves both the sync and async paths.
    let checksCancellation: Bool

    init(
        _ options: JSON.DeserializationOptions,
        maxDepth: Int,
        checksCancellation: Bool
    ) {
        self.maxDepth = maxDepth
        self.skipsWhitespace = !options.contains(.requireMinified)
        self.omitNullKeys = options.contains(.omitNullKeys)
        self.omitNullValues = options.contains(.omitNullValues)
        self.requireUniqueKeys = options.contains(.requireUniqueKeys)
        self.checksCancellation = checksCancellation
    }

}

// MARK: - Entry point

enum JSONScanner {

    /// Parse a UTF-8 encoded byte buffer into a `JSON` value.
    ///
    /// - Parameters:
    ///   - data: The UTF-8 encoded input.
    ///   - options: The deserialization options.
    ///   - maxDepth: The recursion depth limit. `0` means unlimited.
    ///   - checksCancellation: Whether to check for task cancellation at each value.
    /// - Returns: The parsed value.
    /// - Throws: `JSON.DeserializationError` for malformed input, or `CancellationError`
    ///   when `checksCancellation` is set and the task is cancelled.
    static func parse(_ data: Data, _ options: JSON.DeserializationOptions, maxDepth: Int, checksCancellation: Bool) throws -> JSON {
        try data.withUnsafeBytes { raw in
            try parseSpan(
                raw.bindMemory(to: UInt8.self).span,
                options,
                maxDepth: maxDepth,
                checksCancellation: checksCancellation
            )
        }
    }

    private static func parseSpan(_ input: Span<UInt8>, _ options: JSON.DeserializationOptions, maxDepth: Int, checksCancellation: Bool) throws -> JSON {
        var state = JSONScanState(options, maxDepth: maxDepth, checksCancellation: checksCancellation)

        // Check for byte-order mark
        if options.contains(.allowByteOrderMark),
           input.count >= 3,
           input[unchecked: 0] == 0xEF,
           input[unchecked: 1] == 0xBB,
           input[unchecked: 2] == 0xBF {
            state.index = 3
        }

        let json = try scanValue(input, &state, depth: 0)

        skipWhitespace(input, &state)

        guard state.index >= input.count else {
            throw JSON.DeserializationError.invalidJSON
        }

        if !options.contains(.fragmentsAllowed) {
            switch json {
            case .array, .object:
                break
            case .bool, .null, .number, .string:
                throw JSON.DeserializationError.illegalFragment
            }
        }

        if options.contains(.omitNullValues), json.isNull {
            throw JSON.DeserializationError.illegalFragment
        }

        if checksCancellation {
            try Task.checkCancellation()
        }

        return json
    }

}

// MARK: - Whitespace

/// Eight space bytes as one word.
private let eightSpaces: UInt64 = 0x2020_2020_2020_2020

/// The run length at which widening starts to pay.
private let wideWhitespaceThreshold = 8

/// Skip insignificant whitespace (space, tab, line feed and carriage return).
@inline(__always)
private func skipWhitespace(_ input: Span<UInt8>, _ state: inout JSONScanState) {
    guard state.skipsWhitespace else { return }
    var i = state.index
    let count = input.count
    let start = i

    while i < count {
        let byte = input[unchecked: i]
        if byte == UInt8.space || byte == UInt8.newline || byte == UInt8.tab || byte == UInt8.carriageReturn {
            i &+= 1
            if i &- start == wideWhitespaceThreshold {
                break
            }
        } else {
            state.index = i
            return
        }
    }

    guard i &- start == wideWhitespaceThreshold else {
        state.index = i
        return
    }

    // A long run is an indent, so it is spaces from here on. Anything else falls back to the
    // scalar tail below.
    let raw = input.bytes
    while i &+ 8 <= count,
          raw.unsafeLoadUnaligned(fromByteOffset: i, as: UInt64.self) == eightSpaces {
        i &+= 8
    }

    while i < count {
        let byte = input[unchecked: i]
        if byte == UInt8.space || byte == UInt8.newline || byte == UInt8.tab || byte == UInt8.carriageReturn {
            i &+= 1
        } else {
            break
        }
    }
    state.index = i
}

// MARK: - Values

/// Scan one value, dispatching on its first byte.
///
/// Recursive. `scanArray` and `scanObject` call back into this for each element, so the
/// Swift call stack carries the document's nesting depth. `state.maxDepth` is what bounds
/// it, and `0` means unlimited.
///
/// `0` therefore makes deep input a stack overflow rather than a thrown error, and a stack
/// overflow cannot be caught. Only `.ignoreRecursionDepthLimit` produces it, through
/// `Deserialization.depthLimit`, so a caller reaches that state by asking for it by name.
private func scanValue(_ input: Span<UInt8>, _ state: inout JSONScanState, depth: Int) throws -> JSON {
    if state.checksCancellation {
        try Task.checkCancellation()
    }

    skipWhitespace(input, &state)

    guard state.index < input.count else {
        throw JSON.DeserializationError.unexpectedEndOfInput
    }

    // The depth limit counts values, not containers. A scalar at the limit fails too,
    // which is why a flat `{"a":1}` needs a limit of 2. This matches `json_parse_value`.
    if state.maxDepth != 0, depth >= state.maxDepth {
        throw JSON.DeserializationError.depthLimitExceeded
    }

    switch input[unchecked: state.index] {
    case UInt8.openBrace:
        return try scanObject(input, &state, depth: depth)
    case UInt8.openBracket:
        return try scanArray(input, &state, depth: depth)
    case UInt8.quote:
        return try .string(scanString(input, &state))
    case UInt8.lowerT:
        try expectLiteral(input, &state, "true")
        return .bool(true)
    case UInt8.lowerF:
        try expectLiteral(input, &state, "false")
        return .bool(false)
    case UInt8.lowerN:
        try expectLiteral(input, &state, "null")
        return .null
    case UInt8.minus, UInt8.zero ... UInt8.nine:
        return try .number(scanNumber(input, &state))
    default:
        throw JSON.DeserializationError.invalidCharacter
    }
}

// MARK: - Literals

/// Check that the input matches a keyword, and advance past it.
@inline(__always)
private func expectLiteral(_ input: Span<UInt8>, _ state: inout JSONScanState, _ literal: StaticString) throws {
    let count = literal.utf8CodeUnitCount
    guard state.index + count <= input.count else {
        throw JSON.DeserializationError.invalidLiteral
    }
    let start = literal.utf8Start
    for offset in 0 ..< count where input[unchecked: state.index &+ offset] != start[offset] {
        throw JSON.DeserializationError.invalidLiteral
    }
    state.index &+= count
}

// MARK: - Arrays

/// Scan an array, from its opening bracket to its closing bracket.
private func scanArray(_ input: Span<UInt8>, _ state: inout JSONScanState, depth: Int) throws -> JSON {
    state.index &+= 1 // the opening bracket

    var array = JSON.Array()

    skipWhitespace(input, &state)
    if input.match(.closeBracket, at: state.index) {
        state.index &+= 1
        return .array(array)
    }

    array.reserveCapacity(2)

    while true {
        let value = try scanValue(input, &state, depth: depth + 1)
        if !state.omitNullValues || !value.isNull {
            array.append(value)
        }

        skipWhitespace(input, &state)
        guard state.index < input.count else {
            throw JSON.DeserializationError.unexpectedEndOfInput
        }

        switch input[unchecked: state.index] {
        case UInt8.comma:
            // The comma branch loops straight back into value scanning, so `[1,]` reports
            // `invalidCharacter` from the value dispatch rather than a comma error.
            state.index &+= 1
        case UInt8.closeBracket:
            state.index &+= 1
            return .array(array)
        default:
            throw JSON.DeserializationError.expectedCommaOrBracket
        }
    }
}

// MARK: - Objects

/// Scan an object, from its opening brace to its closing brace.
private func scanObject(_ input: Span<UInt8>, _ state: inout JSONScanState, depth: Int) throws -> JSON {
    state.index &+= 1 // the opening brace

    var object = JSON.Object()

    // Duplicate detection uses a `Set`, not the output dictionary. The two are not
    // equivalent: a key is recorded before null omission is applied, so with
    // `omitNullKeys` the input `{"a":null,"a":1}` still reports `duplicateKey`.
    // The set is local, so each nested object gets its own. An empty `Set` does not
    // allocate, so this costs nothing when `requireUniqueKeys` is clear.
    var seenKeys = Set<String>()

    skipWhitespace(input, &state)
    if input.match(.closeBrace, at: state.index) {
        state.index &+= 1
        return .object(object)
    }

    object.reserveCapacity(4)

    while true {
        skipWhitespace(input, &state)
        // End of input at key position reports `missingObjectKey`, not
        // `unexpectedEndOfInput`. The C guard is `!has_more || peek != '"'`, so a bare
        // `{` and a non-quote key share one error. `{"a":1,}` lands here too.
        guard input.match(.quote, at: state.index) else {
            throw JSON.DeserializationError.missingObjectKey
        }

        let key = try scanKey(input, &state)

        // The check runs before the colon and the value are read, so `{"a":1,"a":@}`
        // reports `duplicateKey` rather than `invalidCharacter`.
        if state.requireUniqueKeys, !seenKeys.insert(key).inserted {
            throw JSON.DeserializationError.duplicateKey
        }

        skipWhitespace(input, &state)
        // End of input after the key reports `expectedColon` for the same reason.
        guard input.match(.colon, at: state.index) else {
            throw JSON.DeserializationError.expectedColon
        }
        state.index &+= 1

        let value = try scanValue(input, &state, depth: depth + 1)
        if (!state.omitNullKeys && !state.omitNullValues) || !value.isNull {
            object[key] = value
        }

        skipWhitespace(input, &state)
        guard state.index < input.count else {
            throw JSON.DeserializationError.unexpectedEndOfInput
        }

        switch input[unchecked: state.index] {
        case UInt8.comma:
            state.index &+= 1
        case UInt8.closeBrace:
            state.index &+= 1
            return .object(object)
        default:
            throw JSON.DeserializationError.expectedCommaOrBrace
        }
    }
}

// MARK: - Strings

/// Where a string's contents end, and whether the slow path is needed.
///
/// Both payloads are offsets, so this type needs no availability annotation.
private enum StringExtent {

    /// The string holds no escape, so the bytes are its contents. `end` is the closing quote.
    ///
    /// `hasNonASCII` reports whether any byte reached 0x80. It is a gate and not a verdict.
    /// False proves the range is valid UTF-8, because every byte is a single-byte scalar.
    /// True proves nothing, so the caller runs the validator over the range.
    case plain(end: Int, hasNonASCII: Bool)

    /// The string holds an escape at `escapeAt`, so it has to be decoded byte by byte.
    case escaped(escapeAt: Int)
}

/// Whether a byte range holds valid UTF-8.
///
/// RFC 8259 section 8.1 requires JSON text to be valid UTF-8. The scanner needs to reject
/// malformed input rather than let `String(decoding:)` repair it to U+FFFD, and the library
/// initializers that validate cost 79% to 200% more than `String(decoding:)` over the real
/// string population. See the port log for the measurement. So validation happens here and
/// construction stays on the fast initializer.
///
/// `findStringExtent` gates this call, so an all-ASCII string never reaches it. The ASCII
/// branch stays first regardless, because a string that holds one non-ASCII scalar is usually
/// ASCII everywhere else.
private func isValidUTF8(_ input: Span<UInt8>, _ range: Range<Int>) -> Bool {
    var i = range.lowerBound
    let end = range.upperBound
    while i < end {
        let byte = input[unchecked: i]
        if byte < 0x80 {
            i &+= 1
            continue
        }
        // 0xC0 and 0xC1 can only start an overlong two-byte encoding.
        if byte < 0xC2 {
            return false
        }
        if byte < 0xE0 {
            guard i &+ 1 < end, input[unchecked: i &+ 1] & 0xC0 == 0x80 else { return false }
            i &+= 2
        } else if byte < 0xF0 {
            guard i &+ 2 < end,
                  input[unchecked: i &+ 1] & 0xC0 == 0x80,
                  input[unchecked: i &+ 2] & 0xC0 == 0x80 else { return false }
            // 0xE0 0x80..0x9F is overlong. 0xED 0xA0..0xBF is a UTF-16 surrogate half.
            let next = input[unchecked: i &+ 1]
            if byte == 0xE0, next < 0xA0 { return false }
            if byte == 0xED, next >= 0xA0 { return false }
            i &+= 3
        } else if byte < 0xF5 {
            guard i &+ 3 < end,
                  input[unchecked: i &+ 1] & 0xC0 == 0x80,
                  input[unchecked: i &+ 2] & 0xC0 == 0x80,
                  input[unchecked: i &+ 3] & 0xC0 == 0x80 else { return false }
            // 0xF0 0x80..0x8F is overlong. 0xF4 0x90.. exceeds U+10FFFF.
            let next = input[unchecked: i &+ 1]
            if byte == 0xF0, next < 0x90 { return false }
            if byte == 0xF4, next >= 0x90 { return false }
            i &+= 4
        } else {
            // 0xF5 and above would encode a scalar past U+10FFFF.
            return false
        }
    }
    return true
}

/// Whether a byte array holds valid UTF-8.
///
/// The escaped path builds its result in a scratch buffer rather than in the input, so it
/// cannot use the `Span` form above.
private func isValidUTF8(_ bytes: [UInt8]) -> Bool {
    bytes.withUnsafeBufferPointer { buffer in
        buffer.withMemoryRebound(to: UInt8.self) { rebound in
            let span = rebound.span
            return isValidUTF8(span, 0 ..< span.count)
        }
    }
}

/// Locate the first lane a mask reports true.
///
/// `SIMDMask` has no such helper, so reinterpret the sixteen lanes as two 64-bit words. A true
/// lane is `0xFF` and the vector is little endian, so the first true lane is the first non-zero
/// byte, which `trailingZeroBitCount` divided by eight locates.
///
/// **Precondition: at least one lane is true.** An all-false mask returns 16, because
/// `trailingZeroBitCount` of zero is 64. The only caller guards with `any(interesting)`, so
/// this cannot happen. Any new caller needs the same guard.
///
/// Unsafe site: `unsafeBitCast` between two 16-byte layouts. No safe API exposes a mask's lanes
/// as an integer, and this is the movemask substitute the design calls for.
@inline(__always)
private func firstTrueLane(_ mask: SIMDMask<SIMD16<Int8>>) -> Int {
    let lanes = unsafeBitCast(mask, to: SIMD2<UInt64>.self)
    if lanes[0] != 0 {
        return lanes[0].trailingZeroBitCount >> 3
    }
    return 8 &+ (lanes[1].trailingZeroBitCount >> 3)
}

/// Find the end of a string's contents.
///
/// Both the value path and the key path use this, so the validation rules live in one place
/// rather than in two loops that must be kept in step.
@inline(__always)
private func findStringExtent(_ input: Span<UInt8>, from start: Int, validatesUTF8: Bool) throws -> StringExtent {
    let count = input.count
    var i = start
    // The high-bit gate accumulates rather than tests. `any()` is a horizontal reduction
    // across the vector, so one per chunk was measured as the larger part of the gate's cost.
    // A vertical OR per chunk, reduced once at the end, answers the same question.
    //
    // Both loops contribute. The SIMD loop stops at the first chunk holding a quote, a
    // backslash or a control byte, and the scalar loop finishes the string. A string shorter
    // than 16 bytes never enters the SIMD loop at all.
    var chunkBits = SIMD16<UInt8>(repeating: 0)
    var scalarBits: UInt8 = 0

    if count >= 16 {
        let raw = input.bytes
        let quotes = SIMD16<UInt8>(repeating: UInt8.quote)
        let backslashes = SIMD16<UInt8>(repeating: UInt8.backslash)
        let spaces = SIMD16<UInt8>(repeating: UInt8.space)
        while i &+ 16 <= count {
            let chunk = raw.unsafeLoadUnaligned(fromByteOffset: i, as: SIMD16<UInt8>.self)
            // A quote ends the string, a backslash starts an escape, and anything below space
            // is a control byte and therefore invalid. Everything else is ordinary.
            let interesting = (chunk .== quotes) .| (chunk .== backslashes) .| (chunk .< spaces)
            if any(interesting) {
                // Only the bytes before the interesting lane belong to this string. The rest
                // of the chunk is whatever follows the closing quote, so folding the whole
                // chunk in would raise the gate on bytes this string does not own.
                let stop = i &+ firstTrueLane(interesting)
                while i < stop {
                    scalarBits |= input[unchecked: i]
                    i &+= 1
                }
                break
            }
            chunkBits |= chunk
            i &+= 16
        }
    }

    while i < count {
        let byte = input[unchecked: i]
        if byte == UInt8.quote {
            // The accumulators run unconditionally, because one OR per chunk costs about what
            // guarding it would. The reduction is what the flag skips, along with the
            // validator behind it.
            return .plain(end: i, hasNonASCII: validatesUTF8 && hasHighBit(chunkBits, scalarBits))
        }
        if byte == UInt8.backslash {
            return .escaped(escapeAt: i)
        }
        if byte < UInt8.space {
            throw JSON.DeserializationError.invalidString
        }
        scalarBits |= byte
        i &+= 1
    }
    throw JSON.DeserializationError.unexpectedEndOfInput
}

/// Whether either accumulator saw a byte at or above 0x80.
///
/// A byte at or above 0x80 reads as negative in a signed lane, which is the cheapest high-bit
/// test SIMD offers. This runs once per string, not once per chunk.
@inline(__always)
private func hasHighBit(_ chunkBits: SIMD16<UInt8>, _ scalarBits: UInt8) -> Bool {
    if scalarBits & 0x80 != 0 {
        return true
    }
    return any(unsafeBitCast(chunkBits, to: SIMD16<Int8>.self) .< SIMD16<Int8>(repeating: 0))
}

/// Scan a string value, from its opening quote to its closing quote.
private func scanString(_ input: Span<UInt8>, _ state: inout JSONScanState) throws -> String {
    state.index &+= 1 // the opening quote

    let start = state.index
    switch try findStringExtent(input, from: start, validatesUTF8: state.validatesUTF8) {
    case let .plain(end, hasNonASCII):
        state.index = end &+ 1
        return try makeString(input, start ..< end, hasNonASCII: hasNonASCII)
    case let .escaped(escapeAt):
        return try scanEscapedString(input, &state, from: start, escapeAt: escapeAt)
    }
}

/// Scan an object key, reusing the `String` when the same key has already been seen.
private func scanKey(_ input: Span<UInt8>, _ state: inout JSONScanState) throws -> String {
    state.index &+= 1 // the opening quote

    let start = state.index
    switch try findStringExtent(input, from: start, validatesUTF8: state.validatesUTF8) {
    case let .plain(end, hasNonASCII):
        state.index = end &+ 1
        return try internedKey(input, start ..< end, &state, hasNonASCII: hasNonASCII)
    case let .escaped(escapeAt):
        // An escaped key is rare enough that caching it would not repay the decode.
        return try scanEscapedString(input, &state, from: start, escapeAt: escapeAt)
    }
}

/// The longest string Swift stores inside the `String` value itself, in UTF-8 bytes.
///
/// At or below this a `String` costs no allocation, so there is nothing for the cache to save
/// and the probe would be pure overhead.
private let inlineStringLimit = 15

/// Slots in the key cache. A power of two, so the index is a mask rather than a division.
///
/// Direct mapped with no chaining: a collision overwrites the occupant. That is sound because
/// this is a cache and not a table of record. A miss costs one comparison and then builds the
/// `String` the scanner would have built anyway.
private let keyCacheSlots = 256

@inline(__always)
private func internedKey(_ input: Span<UInt8>, _ range: Range<Int>, _ state: inout JSONScanState, hasNonASCII: Bool) throws -> String {
    if range.count <= inlineStringLimit {
        return try makeString(input, range, hasNonASCII: hasNonASCII)
    }

    if state.keyCache.isEmpty {
        state.keyCache = Array(repeating: "", count: keyCacheSlots)
    }

    // A constant-time discriminator, not a hash over every byte.
    //
    // FNV-1a was measured here first and cost about 20 ns of a 34 ns probe. It is a serial
    // dependency chain, `hash = (hash ^ byte) &* prime`, so a 20-byte key waits on 20 multiply
    // latencies whatever the throughput of the machine. Length plus the first and last eight
    // bytes discriminates about as well for real keys and costs two loads and one multiply.
    //
    // The key exceeds 15 bytes here, so both loads sit inside the range and cannot overlap
    // the span's ends.
    //
    // Unsafe site: `unsafeLoadUnaligned`. No safe API loads eight bytes at once from a `Span`.
    let raw = input.bytes
    let head = raw.unsafeLoadUnaligned(fromByteOffset: range.lowerBound, as: UInt64.self)
    let tail = raw.unsafeLoadUnaligned(fromByteOffset: range.upperBound &- 8, as: UInt64.self)
    let mixed = (head ^ (tail &* 0x9E37_79B9_7F4A_7C15) ^ UInt64(range.count))
        &* 0xFF51_AFD7_ED55_8CCD
    // The top bits carry the mixing, so take the slot from there rather than from the low bits.
    let slot = Int(mixed >> 56) & (keyCacheSlots - 1)

    let cached = state.keyCache[slot]
    // An empty `String` never occupies a slot, because a key reaching here exceeds 15 bytes.
    // The comparison is authoritative: the discriminator only chooses where to look, so a
    // collision costs one allocation and can never return the wrong key.
    // A hit needs no UTF-8 check. The occupant was validated when it was built, and the byte
    // comparison just proved this range is identical to it.
    if !cached.isEmpty, cached.utf8Matches(input, range) {
        return cached
    }

    let key = try makeString(input, range, hasNonASCII: hasNonASCII)
    state.keyCache[slot] = key
    return key
}

extension String {

    /// Whether this string's UTF-8 equals the given bytes.
    ///
    /// Compares without building a second `String`, which is the whole point of the cache.
    ///
    /// Iterating `utf8` was measured here first. `String.UTF8View`'s iterator is not a raw byte
    /// loop, and a cache probe runs this on every repeated key, so it goes through contiguous
    /// storage and compares eight bytes at a time instead. A native `String` built by
    /// `String(decoding:as:)` is always contiguous, so the fallback only exists for
    /// completeness.
    @inline(__always)
    fileprivate func utf8Matches(_ input: Span<UInt8>, _ range: Range<Int>) -> Bool {
        let count = range.count
        let raw = input.bytes
        let contiguous: Bool? = utf8.withContiguousStorageIfAvailable { stored -> Bool in
            guard stored.count == count else {
                return false
            }
            var offset = 0
            // Whole words first. Both sides are read unaligned, which costs nothing on arm64.
            while offset &+ 8 <= count {
                let lhs = raw.unsafeLoadUnaligned(
                    fromByteOffset: range.lowerBound &+ offset,
                    as: UInt64.self
                )
                let rhs = UnsafeRawPointer(stored.baseAddress! + offset)
                    .loadUnaligned(as: UInt64.self)
                if lhs != rhs {
                    return false
                }
                offset &+= 8
            }
            while offset < count {
                if input[unchecked: range.lowerBound &+ offset] != stored[offset] {
                    return false
                }
                offset &+= 1
            }
            return true
        }
        if let contiguous {
            return contiguous
        }
        var k = range.lowerBound
        for byte in utf8 {
            if k >= range.upperBound || byte != input[unchecked: k] {
                return false
            }
            k &+= 1
        }
        return k == range.upperBound
    }
}

/// Decode a string that contains at least one escape.
///
/// UNMEASURED, and not measurable with the corpora in the tree. Every ordinary byte is
/// appended one at a time, both the prefix before the first escape and each run between
/// escapes. Bulk copying those runs, and reusing `findStringExtent` to find them, would
/// replace N appends with one memcpy per run.
///
/// No benchmark corpus is escape-heavy, so there is nothing to measure the change against.
/// Adding such a corpus is the first step, not the optimisation. Until then this stays
/// simple, because `expectLiteral` records what happens when instruction counts are traded
/// for unsafe pointer code on faith.
///
/// - Parameters:
///   - from: The offset of the first byte of the string's contents.
///   - escapeAt: The offset of the first backslash.
private func scanEscapedString(_ input: Span<UInt8>, _ state: inout JSONScanState, from start: Int, escapeAt: Int) throws -> String {
    state.scratch.removeAll(keepingCapacity: true)
    state.scratch.reserveCapacity(escapeAt - start + 16)
    for k in start ..< escapeAt {
        state.scratch.append(input[unchecked: k])
    }

    let count = input.count
    var i = escapeAt

    while i < count {
        let byte = input[unchecked: i]

        if byte == UInt8.quote {
            state.index = i &+ 1
            // The `String` is built from a byte count, never from a C string, so an
            // escaped NUL survives instead of truncating the value.
            //
            // The scratch buffer mixes bytes copied straight from the input with bytes that
            // escape decoding wrote. The decoded escapes are well formed by construction,
            // because a lone surrogate throws above, so only the copied runs can be
            // malformed. Validating the whole buffer once is simpler and gives the same
            // answer as validating each run.
            //
            // This path takes no gate from `findStringExtent`, which stops at the first
            // backslash. An escaped string is rare, and the validator's ASCII branch is one
            // compare per byte, so the unconditional call costs little.
            guard !state.validatesUTF8 || isValidUTF8(state.scratch) else {
                throw JSON.DeserializationError.invalidString
            }
            return String(decoding: state.scratch, as: UTF8.self)
        }

        if byte == UInt8.backslash {
            i &+= 1
            guard i < count else {
                throw JSON.DeserializationError.unexpectedEndOfInput
            }
            switch input[unchecked: i] {
            case UInt8.quote:
                state.scratch.append(UInt8.quote)
            case UInt8.backslash:
                state.scratch.append(UInt8.backslash)
            case UInt8.solidus:
                state.scratch.append(UInt8.solidus)
            case UInt8.lowerB:
                state.scratch.append(0x08)
            case UInt8.lowerF:
                state.scratch.append(0x0C)
            case UInt8.lowerN:
                state.scratch.append(UInt8.newline)
            case UInt8.lowerR:
                state.scratch.append(UInt8.carriageReturn)
            case UInt8.lowerT:
                state.scratch.append(UInt8.tab)
            case UInt8.lowerU:
                i &+= 1
                let scalar = try decodeUnicodeEscape(input, &i)
                appendUTF8(&state.scratch, scalar)
                continue
            default:
                throw JSON.DeserializationError.invalidEscape
            }
            i &+= 1
            continue
        }

        if byte < UInt8.space {
            throw JSON.DeserializationError.invalidString
        }

        state.scratch.append(byte)
        i &+= 1
    }

    throw JSON.DeserializationError.unexpectedEndOfInput
}

/// Decode a `\u` escape, including a surrogate pair.
///
/// - Parameter i: On entry, the offset of the first hex digit. On return, the offset just
///   past the last byte consumed.
/// - Returns: The decoded scalar value.
@inline(__always)
private func decodeUnicodeEscape(_ input: Span<UInt8>, _ i: inout Int) throws -> UInt32 {
    let count = input.count

    var value = try hexQuad(input, i)
    i &+= 4

    if value >= 0xD800, value <= 0xDBFF {
        // A high surrogate must be followed by a `\u` low surrogate. Here end of input
        // reports `invalidUnicode`, not `unexpectedEndOfInput`, because the C folds both
        // causes into the same check.
        guard i &+ 2 <= count,
              input[unchecked: i] == UInt8.backslash,
              input[unchecked: i &+ 1] == UInt8.lowerU else {
            throw JSON.DeserializationError.invalidUnicode
        }
        let low = try hexQuad(input, i &+ 2)
        guard low >= 0xDC00, low <= 0xDFFF else {
            throw JSON.DeserializationError.invalidUnicode
        }
        i &+= 6
        value = 0x10000 &+ ((value &- 0xD800) << 10) &+ (low &- 0xDC00)
    } else if value >= 0xDC00, value <= 0xDFFF {
        // A lone low surrogate is not a scalar.
        throw JSON.DeserializationError.invalidUnicode
    }

    return value
}

@inline(__always)
private func hexQuad(_ input: Span<UInt8>, _ offset: Int) throws -> UInt32 {
    // The digits are read one at a time, which is what `json_parse_hex` does, so the two
    // failure causes stay distinct: no byte left reports `unexpectedEndOfInput`, while a
    // byte that is present but not a hex digit reports `invalidUnicode`. A single
    // "are there four bytes left" pre-check would report the wrong one for `"\u00"`,
    // where the closing quote, not the end of input, is what stops the scan.
    let count = input.count
    var value: UInt32 = 0
    for k in 0 ..< 4 {
        let at = offset &+ k
        guard at < count else {
            throw JSON.DeserializationError.unexpectedEndOfInput
        }
        guard let digit = hexValue(input[unchecked: at]) else {
            throw JSON.DeserializationError.invalidUnicode
        }
        value = (value << 4) | UInt32(digit)
    }
    return value
}

@inline(__always)
private func hexValue(_ byte: UInt8) -> UInt8? {
    switch byte {
    case 0x30 ... 0x39: byte &- 0x30 // 0-9
    case 0x41 ... 0x46: byte &- 0x41 &+ 10 // A-F
    case 0x61 ... 0x66: byte &- 0x61 &+ 10 // a-f
    default: nil
    }
}

/// Append the UTF-8 encoding of a scalar.
///
/// U+0000 is emitted as one `0x00` byte, not as the two-byte modified form, so an escaped
/// NUL round-trips into the `String`.
@inline(__always)
private func appendUTF8(_ out: inout [UInt8], _ scalar: UInt32) {
    if scalar < 0x80 {
        out.append(UInt8(truncatingIfNeeded: scalar))
    } else if scalar < 0x800 {
        out.append(UInt8(truncatingIfNeeded: 0xC0 | (scalar >> 6)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | (scalar & 0x3F)))
    } else if scalar < 0x10000 {
        out.append(UInt8(truncatingIfNeeded: 0xE0 | (scalar >> 12)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | ((scalar >> 6) & 0x3F)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | (scalar & 0x3F)))
    } else {
        out.append(UInt8(truncatingIfNeeded: 0xF0 | (scalar >> 18)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | ((scalar >> 12) & 0x3F)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | ((scalar >> 6) & 0x3F)))
        out.append(UInt8(truncatingIfNeeded: 0x80 | (scalar & 0x3F)))
    }
}

/// Build a `String` from a byte range of the input, rejecting malformed UTF-8.
///
/// `hasNonASCII` comes from `findStringExtent`. False proves the range is valid UTF-8 and
/// skips the check. True runs `isValidUTF8` over the range.
///
/// `String(decoding:)` repairs a malformed sequence to U+FFFD and tells the caller nothing,
/// so the validation cannot be left to it. The initializers that do validate were measured
/// and cost 79% to 200% more than this one. See the port log.
///
/// A `Span<UInt8>` conforms to neither `Collection` nor `Sequence`, so the buffer pointer is
/// the route that compiles at the package floor of macOS 13.0.
@inline(__always)
private func makeString(_ input: Span<UInt8>, _ range: Range<Int>, hasNonASCII: Bool) throws -> String {
    if hasNonASCII, !isValidUTF8(input, range) {
        throw JSON.DeserializationError.invalidString
    }
    let slice: Span<UInt8> = input.extracting(range)
    return slice.withUnsafeBufferPointer { buffer in
        String(decoding: buffer, as: UTF8.self)
    }
}

/// Build a `String` from a byte range the scanner has already proven is ASCII.
///
/// The number path is the only caller. Its range holds digits, a sign, a decimal point and an
/// exponent marker, so there is nothing to validate and nothing for `String(decoding:)` to
/// repair.
@inline(__always)
private func makeASCIIString(_ input: Span<UInt8>, _ range: Range<Int>) -> String {
    let slice: Span<UInt8> = input.extracting(range)
    return slice.withUnsafeBufferPointer { buffer in
        String(decoding: buffer, as: UTF8.self)
    }
}

// MARK: - Numbers

/// Powers of ten that are exactly representable as a `Double`.
///
/// `10^22` is the largest. Above that the value is no longer exact, so the single-rounding
/// fast path no longer holds.
private let powersOfTen: [Double] = [
    1e0, 1e1, 1e2, 1e3, 1e4, 1e5, 1e6, 1e7, 1e8, 1e9, 1e10, 1e11, 1e12, 1e13, 1e14, 1e15, 1e16, 1e17, 1e18, 1e19, 1e20, 1e21, 1e22
]

@inline(__always)
private func isDigit(_ byte: UInt8) -> Bool {
    byte &- UInt8.zero < 10
}

/// Scan a JSON number.
///
/// The mantissa accumulates into a `UInt64` and the decimal point contributes to a single
/// exponent, so one scale is applied at the end. The integer-or-double decision comes from
/// a range check against `Int`, not from a digit count.
private func scanNumber(_ input: Span<UInt8>, _ state: inout JSONScanState) throws -> JSON.Number {
    let count = input.count
    let start = state.index
    var i = start

    var isNegative = false
    if input[unchecked: i] == UInt8.minus {
        isNegative = true
        i &+= 1
    }

    var mantissa: UInt64 = 0
    // The power of ten the mantissa is scaled by. Digits dropped past `UInt64` capacity
    // raise it; fraction digits lower it.
    var exponent = 0
    // Set once a digit no longer fits, so the value is known to be inexact.
    var droppedDigits = false

    let mantissaLimitDiv10 = UInt64.max / 10
    let mantissaLimitMod10 = UInt64.max % 10

    let integerStart = i

    while i < count, isDigit(input[unchecked: i]) {
        let digit = UInt64(input[unchecked: i] &- UInt8.zero)
        if mantissa < mantissaLimitDiv10 || (mantissa == mantissaLimitDiv10 && digit <= mantissaLimitMod10) {
            mantissa = mantissa &* 10 &+ digit
        } else {
            exponent &+= 1
            droppedDigits = true
        }
        i &+= 1
    }
    let integerDigits = i - integerStart
    guard integerDigits > 0 else {
        throw JSON.DeserializationError.invalidNumber
    }
    // A leading zero may not be followed by another digit, so `00` and `0100` are invalid.
    if integerDigits > 1, input[unchecked: integerStart] == UInt8.zero {
        throw JSON.DeserializationError.invalidNumber
    }

    var isDouble = false

    // Fraction.
    if input.match(.period, at: i) {
        isDouble = true
        i &+= 1
        let fractionStart = i

        while i < count, isDigit(input[unchecked: i]) {
            let digit = UInt64(input[unchecked: i] &- UInt8.zero)
            if mantissa < mantissaLimitDiv10
                || (mantissa == mantissaLimitDiv10 && digit <= mantissaLimitMod10) {
                mantissa = mantissa &* 10 &+ digit
                exponent &-= 1
            } else {
                droppedDigits = true
            }
            i &+= 1
        }
        guard i > fractionStart else {
            throw JSON.DeserializationError.invalidNumber
        }
    }

    // Exponent.
    if input.match(.lowerE, at: i) || input.match(.upperE, at: i) {
        isDouble = true
        i &+= 1

        let isExponentNegative: Bool
        if input.match(.plus, at: i) {
            isExponentNegative = false
            i &+= 1
        } else if input.match(.minus, at: i) {
            isExponentNegative = true
            i &+= 1
        } else {
            isExponentNegative = false
        }

        let exponentStart = i
        var explicitExponent = 0
        while i < count, isDigit(input[unchecked: i]) {
            // Clamp rather than overflow. Anything past this magnitude already saturates
            // to zero or infinity.
            if explicitExponent < 1_000_000 {
                explicitExponent = explicitExponent * 10 + Int(input[unchecked: i] &- UInt8.zero)
            }
            i &+= 1
        }
        guard i > exponentStart else {
            throw JSON.DeserializationError.invalidNumber
        }
        exponent &+= isExponentNegative ? -explicitExponent : explicitExponent
    }

    state.index = i

    // Integer, when the literal has no fraction, no exponent, and lost no digits.
    if !isDouble, !droppedDigits {
        if isNegative {
            if mantissa <= UInt64(Int.max) {
                return JSON.Number(.int(-Int(mantissa)))
            }
            if mantissa == UInt64(Int.max) &+ 1 {
                return JSON.Number(.int(Int.min))
            }
        } else if mantissa <= UInt64(Int.max) {
            return JSON.Number(.int(Int(mantissa)))
        }
        // Out of integer range. Fall through and produce a `Double`.
        //
        // KNOWN GAP, silent. A positive integer from `Int.max + 1` to `UInt64.max` has no
        // integer representation in `JSON.Number`, so it becomes a `Double` and loses
        // precision above 2^53. No error and no flag marks the loss. Unsigned 64-bit
        // identifiers sit in exactly this range.
        //
        // The C behaved the same way, so this is not a port regression. `mantissa` already
        // holds the exact value, so a `.uint` case in `JSON.Number.Storage` would close it
        // from here in one branch. See "a `.uint` case" in `PARSER_SWIFT_MIGRATION.md`.
    }

    return JSON.Number(
        .double(makeDouble(input, start ..< i, mantissa, exponent, isNegative, droppedDigits))
    )
}

/// Scale a mantissa by a power of ten using one floating-point operation.
@inline(__always)
private func scaledDouble(_ mantissa: UInt64, _ exponent: Int, _ isNegative: Bool) -> Double {
    let base = Double(mantissa)
    let value = exponent >= 0
        ? base * powersOfTen[exponent]
        : base / powersOfTen[-exponent]
    return isNegative ? -value : value
}

/// Convert a scanned mantissa and exponent to a `Double`.
///
/// Three paths, in order of cost. The first two are correctly rounded by construction. The
/// third is Swift's own parser, which is correctly rounded, and takes the 0.03% of literals
/// that Eisel-Lemire declines to decide.
@inline(__always)
private func makeDouble(_ input: Span<UInt8>, _ range: Range<Int>, _ mantissa: UInt64, _ exponent: Int, _ isNegative: Bool, _ droppedDigits: Bool) -> Double {
    // Exact path: the mantissa and the scale are both exact in a `Double`, so the single
    // multiply or divide rounds once and is therefore correctly rounded.
    if mantissa <= (1 << 53), exponent >= -22, exponent <= 22 {
        return scaledDouble(mantissa, exponent, isNegative)
    }

    // Eisel-Lemire. This path is not rare: 91% of the numbers in `benchmark-canada.json` and
    // 25% of those in `benchmark-numeric.json` miss the exact path, because a 17-digit
    // mantissa exceeds `1 << 53`. The earlier implementation built a `String` here, which
    // heap allocates past 15 UTF-8 bytes, and made canada 2.08x slower than the C engine.
    //
    // `droppedDigits` bars it. Eisel-Lemire rounds the mantissa it is given, correctly and
    // exactly; it cannot know that digits past the 19th were discarded, so for a literal
    // like `1.0000000000000000000000001` it would round the truncated value and land one ULP
    // out. Only the full literal text settles those, so they go to the exact parser below.
    if !droppedDigits, let value = eiselLemire(mantissa, exponent, isNegative) {
        return value
    }

    // The product could not decide a rounding tie. Rare, so the `String` costs nothing
    // measurable here, unlike on the path above.
    //
    // Out-of-range exponent hook: `Double("1e999")` is `+infinity`, with no error, which
    // matches the C parser. To report a range error instead, test `isFinite` here.
    return Double(makeASCIIString(input, range)) ?? (isNegative ? -Double.infinity : Double.infinity)
}
