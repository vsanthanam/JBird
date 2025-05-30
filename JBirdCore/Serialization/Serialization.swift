// JBird
// Serialization.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
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
#if BUILD_XCFRAMEWORK
    @_implementationOnly import JBirdParser
#else
    import JBirdParser
#endif

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    // MARK: - API

    /// Precalculate the default recurstion and depth limits
    ///
    /// Calling this method ahead of your first deserialization operation will marginally improve performance
    /// - Note: If you have already performed on deserialization operation, or if you have already called this method once before, this method is a no-op
    public static func warmLimits() {
        _ = defaultRecursionDepthLimit
        _ = defaultInputSizeLimit
    }

    /// The default recursion depth limit
    ///
    /// This is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit to avoid recalculating it again.
    ///
    /// You can alter this behavior in two ways:
    /// - By calling ``JSON/withRecursionDepthLimit(_:operation:)-8riei`` to set a custom limit for the current task
    /// - By providing the ``JSON/DeserializationOptions/ignoreRecursionDepthLimit`` option when deserializing JSON
    public static let defaultRecursionDepthLimit: size_t = calculateMaxDepth()

    /// The default input size limit
    ///
    /// This is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same calculated limit to avoid recalculating it again.
    ///
    /// You can alter this behavior in two ways:
    /// - By calling ``JSON/withInputSizeLimit(_:operation:)-2sm2h`` to set a custom limit for the current task
    /// - By providing the ``JSON/DeserializationOptions/ignoreInputSizeLimit`` option when deserializing JSON
    public static let defaultInputSizeLimit: size_t = calculateMaxInputSize()

    /// Perform the provided operation with a custom recursion depth limit
    ///
    /// By default, the recursion depth limit is set to a value that is calculated based on memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom recursion depth limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try JSON.withRecursionDepthLimit(1000) {
    ///     // All JSON operations performed within this closure will use a recursion depth limit of 1000
    ///     try JSON(data)
    /// }
    /// ```
    ///
    /// To remove the recursion depth limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired recursion depth limit
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withRecursionDepthLimit<T>(
        _ limit: size_t,
        operation: () throws -> T
    ) rethrows -> T {
        assert(limit >= 0, "Recursion depth limit must be greater than or equal to 0")
        return try $recursionDepthLimit.withValue(limit, operation: operation)
    }

    /// Perform the provided async operation with a custom recursion depth limit
    ///
    /// By default, the recursion depth limit is set to a value that is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom recursion depth limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try await JSON.withRecursionDepthLimit(1000) {
    ///     // All JSON operations performed within this closure will use a recursion depth limit of 1000
    ///     try await JSON.deserialize(data)
    /// }
    /// ```
    ///
    /// To remove the recursion depth limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired recursion depth limit
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withRecursionDepthLimit<T>(
        _ limit: size_t,
        operation: () async throws -> T
    ) async rethrows -> T {
        assert(limit >= 0, "Recursion depth limit must be greater than or equal to 0")
        return try await $recursionDepthLimit.withValue(limit, operation: operation)
    }

    /// Perform the provided operation with a custom input size limit
    ///
    /// By default, the input size limit is set to a value that is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom input size limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try JSON.withInputSizeLimit(1024 * 1024) {
    ///    // All JSON operations performed within this closure will use an input size limit of 1 MB
    ///    try JSON(data)
    /// }
    /// ```
    ///
    /// To remove the input size limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired input size limit, in bytes
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withInputSizeLimit<T>(
        _ limit: Int,
        operation: () throws -> T
    ) rethrows -> T {
        assert(limit >= 0, "Input size limit must be greater than or equal to 0")
        return try $inputSizeLimit.withValue(limit, operation: operation)
    }

    /// Perform the provided async operation with a custom input size limit
    ///
    /// By default, the input size limit is set to a value that is calculated based on the available memory on the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom input size limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try await JSON.withInputSizeLimit(1024 * 1024) {
    ///    // All JSON operations performed within this closure will use an input size limit of 1 MB
    ///    try await JSON.deserialize(data)
    /// }
    /// ```
    ///
    /// To remove the input size limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired input size limit, in bytes
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withInputSizeLimit<T>(
        _ limit: Int,
        operation: () async throws -> T
    ) async rethrows -> T {
        assert(limit >= 0, "Input size limit must be greater than or equal to 0")
        return try await $inputSizeLimit.withValue(limit, operation: operation)
    }

    /// Create a typed JSON value from a JSON string
    /// - Parameters:
    ///   - string: The JSON string
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func value(
        for string: String,
        options: DeserializationOptions = .default
    ) throws -> JSON {
        try value(
            for: string.data(using: .utf8)!,
            options: options
        )
    }

    /// Create a typed JSON value from a UTF-8 encoded byte buffer
    /// - Parameters:
    ///   - data: The byte buffer
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func value(
        for data: Data,
        options: DeserializationOptions = .default
    ) throws -> JSON {
        try parse(data, options)
    }

    /// Create a typed JSON value from a JSON string, asynchronously
    ///
    /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
    /// - Parameters:
    ///   - data: The JSON string
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func deserialize(
        _ data: Data,
        options: DeserializationOptions = .default
    ) async throws -> JSON {
        try await parseAsync(data, options)
    }

    /// Create a typed JSON value from a UTF-8 encoded byte buffer, asynchronously
    ///
    /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
    /// - Parameters:
    ///   - string: The byte buffer
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func deserialize(
        _ string: String,
        options: DeserializationOptions = .default
    ) async throws -> JSON {
        try await deserialize(
            string.data(using: .utf8)!,
            options: options
        )
    }

    /// Create a byte buffer from a typed `JSON` value
    /// - Parameters:
    ///   - json: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
    public static func data(
        from json: JSON,
        options: SerializationOptions = .default
    ) throws -> Data {
        try startSerialization(
            from: json,
            options: options,
            isCancellable: false
        )
    }

    /// Create a Swift string from a typed `JSON` value
    /// - Parameters:
    ///   - json: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: A Swift string representing the provided JSON value
    public static func string(
        from json: JSON,
        options: SerializationOptions = .default
    ) throws -> String {
        let data = try data(from: json, options: options)
        return String(data: data, encoding: .utf8)!
    }

    /// Create a byte buffer from a typed JSON value
    /// - Parameters:
    ///   - value: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
    public static func serialize(
        _ value: JSON,
        options: SerializationOptions = .default
    ) async throws -> Data {
        let json = JSON(value)
        try Task.checkCancellation()
        return try startSerialization(
            from: json,
            options: options,
            isCancellable: true
        )
    }

    /// Create a Swift string from a typed JSON value
    /// - Parameters:
    ///   - value: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: A Swift string representing the provided JSON value
    public static func stringify(
        _ value: JSON,
        options: SerializationOptions = .default
    ) async throws -> String {
        let data = try await serialize(value, options: options)
        return String(data: data, encoding: .utf8)!
    }

    // MARK: - Private

    @inline(__always)
    private static func startSerialization(
        from json: JSON,
        options: SerializationOptions,
        isCancellable: Bool
    ) throws -> Data {
        if !options.contains(.fragmentsAllowed) {
            switch json {
            case .literal, .number, .string:
                throw JSONSerializationError.illegalFragment
            case .array, .object:
                break
            }
        }
        if options.contains(.omitNullValues), json.isNull {
            throw JSONSerializationError.illegalFragment
        }
        var bytes = [UInt8]()
        if options.contains(.includeByteOrderMark) {
            serializeBOM(into: &bytes)
        }
        try serialize(json: json, into: &bytes, level: options.contains(.prettyPrinted) ? 0 : nil, options: options, isCancellable: isCancellable)
        return Data(bytes)
    }

    @inline(__always)
    private static func serializeBOM(
        into bytes: inout [UInt8]
    ) {
        bytes += [0xEF, 0xBB, 0xBF]
    }

    @inline(__always)
    private static func serialize(
        json: JSON,
        into bytes: inout [UInt8],
        level: Int?,
        options: SerializationOptions,
        isCancellable: Bool
    ) throws {
        if isCancellable {
            try Task.checkCancellation()
        }
        switch json {
        case let .literal(literal):
            serialize(literal: literal, into: &bytes)
        case let .object(object):
            try serialize(object: object, into: &bytes, level: level, options: options, isAsync: isCancellable)
        case let .array(array):
            try serialize(array: array, into: &bytes, level: level, options: options, isAsync: isCancellable)
        case let .number(number):
            try serialize(number: number, into: &bytes)
        case let .string(string):
            serialize(string: string, options: options, into: &bytes)
        }
    }

    @inline(__always)
    private static func serialize(
        literal: Literal,
        into bytes: inout [UInt8]
    ) {
        switch literal {
        case .true:
            bytes += [0x74, 0x72, 0x75, 0x65]
        case .false:
            bytes += [0x66, 0x61, 0x6C, 0x73, 0x65]
        case .null:
            bytes += [0x6E, 0x75, 0x6C, 0x6C]
        }
    }

    @inline(__always)
    private static func serialize(
        number: Number,
        into bytes: inout [UInt8]
    ) throws {
        switch number {
        case let .int(value):
            serialize(integer: value, into: &bytes)
        case let .double(value):
            try serialize(double: value, into: &bytes)
        }
    }

    @inline(__always)
    private static func serialize(
        integer: Int,
        into bytes: inout [UInt8]
    ) {
        let str = String(integer)
        bytes += Swift.Array(str.utf8)
    }

    @inline(__always)
    private static func serialize(
        double: Double,
        into bytes: inout [UInt8]
    ) throws {
        guard double == double,
              double != .infinity,
              double != -.infinity else {
            throw JSONSerializationError.invalidFloat
        }
        let absValue = abs(double)
        if absValue != 0, (absValue >= 1e7 || absValue < 1e-6) {
            let formatter = NumberFormatter()
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.numberStyle = .scientific
            formatter.positiveFormat = "0.################E+0"
            formatter.negativeFormat = "-0.################E+0"
            let str = formatter.string(from: NSNumber(value: double))!
            bytes += str.utf8
        } else {
            bytes += String(double).utf8
        }
    }

    @inline(__always)
    private static func serialize(
        string: String,
        options: SerializationOptions,
        into bytes: inout [UInt8]
    ) {
        bytes.append(UInt8(ascii: "\""))
        for scalar in string.unicodeScalars {
            switch scalar.value {
            case 0x08:
                bytes.append(contentsOf: "\\b".utf8)
            case 0x0C:
                bytes.append(contentsOf: "\\f".utf8)
            case 0x0A:
                bytes.append(contentsOf: "\\n".utf8)
            case 0x0D:
                bytes.append(contentsOf: "\\r".utf8)
            case 0x09:
                bytes.append(contentsOf: "\\t".utf8)
            case 0x00...0x1F:
                let hex = String(format: "\\u%04X", scalar.value)
                bytes.append(contentsOf: hex.utf8)
            case 0x22:
                bytes.append(contentsOf: "\\\"".utf8)
            case 0x2F:
                if options.contains(.escapeForwardSlash) {
                    bytes.append(contentsOf: "\\/".utf8)
                } else {
                    bytes.append(UInt8(scalar.value))
                }
            case 0x5C:
                bytes.append(contentsOf: "\\\\".utf8)
            case 0x20...0x7F:
                bytes.append(UInt8(scalar.value))
            case 0x80...0xFFFF:
                if options.contains(.escapeNonASCII) {
                    let hex = String(format: "\\u%04X", scalar.value)
                    bytes.append(contentsOf: hex.utf8)
                } else {
                    bytes.append(contentsOf: String(scalar).utf8)
                }
            default:
                if options.contains(.escapeSpecialCharacters) || options.contains(.escapeNonASCII) {
                    let codepoint = scalar.value - 0x10000
                    let high = 0xD800 + (codepoint >> 10)
                    let low = 0xDC00 + (codepoint & 0x3FF)
                    bytes.append(contentsOf: String(format: "\\u%04X\\u%04X", high, low).utf8)
                } else {
                    bytes.append(contentsOf: String(scalar).utf8)
                }
            }
        }
        bytes.append(UInt8(ascii: "\""))
    }

    @inline(__always)
    private static func serialize(
        array: [JSON],
        into bytes: inout [UInt8],
        level: Int?,
        options: SerializationOptions,
        isAsync: Bool
    ) throws {
        bytes += [0x5B]

        let realArray: [JSON] = if options.contains(.omitNullValues) {
            array.compactMap { value in value.isNull ? JSON?.none : value }
        } else {
            array
        }

        if array.isEmpty {
            bytes += [0x5D]
            return
        }

        if level != nil {
            bytes += [0x0A] // Newline
        }

        for value in realArray.dropLast() {
            if let level {
                addIndentation(level: level + 1, into: &bytes)
                try serialize(json: value, into: &bytes, level: level + 1, options: options, isCancellable: isAsync)
                bytes += [0x2C, 0x0A]
            } else {
                try serialize(json: value, into: &bytes, level: level, options: options, isCancellable: isAsync)
                bytes += [0x2C]
            }

        }

        if let lastValue = realArray.last {
            if let level {
                addIndentation(level: level + 1, into: &bytes)
                try serialize(json: lastValue, into: &bytes, level: level + 1, options: options, isCancellable: isAsync)
                bytes += [0x0A]
            } else {
                try serialize(json: lastValue, into: &bytes, level: nil, options: options, isCancellable: isAsync)
            }
        }

        if let level {
            addIndentation(level: level, into: &bytes)
        }

        bytes += [0x5D]
    }

    static func serialize(
        object: [String: JSON],
        into bytes: inout [UInt8],
        level: Int?,
        options: SerializationOptions,
        isAsync: Bool
    ) throws {
        bytes += [0x7B]

        if object.isEmpty {
            bytes += [0x7D]
            return
        }

        if level != nil {
            bytes += [0x0A] // Newline
        }

        let usableObject: [String: JSON] = if options.contains(.omitNullKeys) || options.contains(.omitNullValues) {
            object.compactMapValues { value in value.isNull ? JSON?.none : value }
        } else {
            object
        }
        if usableObject.isEmpty {
            bytes += [0x7D]
            return
        }
        let keys = options.contains(.sortedKeys) ? Swift.Array(usableObject.keys.sorted()) : Swift.Array(usableObject.keys)
        for key in keys.dropLast() {
            let value = usableObject[key].unsafelyUnwrapped
            if let level {
                addIndentation(level: level + 1, into: &bytes)
                serialize(string: key, options: options, into: &bytes)
                bytes += [0x3A, 0x20]
                try serialize(json: value, into: &bytes, level: level + 1, options: options, isCancellable: isAsync)
                bytes += [0x2C, 0x0A]
            } else {
                serialize(string: key, options: options, into: &bytes)
                bytes += [0x3A]
                try serialize(json: value, into: &bytes, level: level, options: options, isCancellable: isAsync)
                bytes += [0x2C]
            }
        }

        if let key = keys.last {
            let value = usableObject[key].unsafelyUnwrapped
            if let level {
                addIndentation(level: level + 1, into: &bytes)
                serialize(string: key, options: options, into: &bytes)
                bytes += [0x3A, 0x20]
                try serialize(json: value, into: &bytes, level: level + 1, options: options, isCancellable: isAsync)
                bytes += [0x0A]
            } else {
                serialize(string: key, options: options, into: &bytes)
                bytes += [0x3A]
                try serialize(json: value, into: &bytes, level: nil, options: options, isCancellable: isAsync)
            }
        }

        if let level {
            addIndentation(level: level, into: &bytes)
        }

        bytes += [0x7D]
    }

    @inline(__always)
    private static func addIndentation(
        level: Int,
        into bytes: inout [UInt8]
    ) {
        for _ in 0..<(level * 2) {
            bytes += [0x20]
        }
    }

    @TaskLocal
    private static var recursionDepthLimit: size_t = defaultRecursionDepthLimit

    @TaskLocal
    private static var inputSizeLimit: size_t = defaultInputSizeLimit

    @inline(__always)
    private static func parse(
        _ data: Data,
        _ options: DeserializationOptions
    ) throws -> JSON {
        if inputSizeLimit != 0, !options.contains(.ignoreInputSizeLimit), data.count > inputSizeLimit {
            throw JSONDeserializationError.inputSizeLimitExceeded
        }

        var jsonValue: OpaquePointer?
        let result = data.withUnsafeBytes { buffer in
            json_parse(
                buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                buffer.count,
                &jsonValue,
                options.contains(.allowByteOrderMark),
                options.contains(.requireMinified),
                options.contains(.requireUniqueKeys),
                options.contains(.ignoreRecursionDepthLimit) ? 0 : recursionDepthLimit
            )
        }

        defer {
            json_free(jsonValue)
        }

        guard result == JSON_NO_ERROR else {
            throw JSONDeserializationError(result)
        }

        guard let jsonValue else {
            throw JSONDeserializationError.unknown
        }

        @inline(__always)
        func materialize(
            _ value: OpaquePointer,
            _ options: DeserializationOptions
        ) throws -> JSON {
            let type = json_get_type(value)
            switch type {
            case JSON_NULL:
                return .literal(.null)
            case JSON_BOOLEAN:
                return .literal(json_get_boolean(value) ? .true : .false)
            case JSON_NUMBER_INT:
                return .number(.int(Int(json_get_int(value))))
            case JSON_NUMBER_DOUBLE:
                return .number(.double(json_get_double(value)))
            case JSON_STRING:
                let str = String(cString: json_get_string(value))
                return .string(str)
            case JSON_ARRAY:
                let count = json_get_array_size(value)
                var array = [JSON]()
                array.reserveCapacity(count)

                for i in 0..<count {
                    let element = json_get_array_element(value, i).unsafelyUnwrapped
                    let value = try materialize(element, options)
                    if !options.contains(.omitNullValues) || !value.isNull {
                        array.append(value)
                    }
                }

                return .array(array)
            case JSON_OBJECT:
                let count = json_get_object_size(value)
                var dict = [String: JSON]()
                dict.reserveCapacity(count)

                for i in 0..<count {
                    let key = String(cString: json_get_object_key(value, i))
                    let objValue = json_get_object_value(value, i).unsafelyUnwrapped
                    let value = try materialize(objValue, options)
                    if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                        dict[key] = value
                    }
                }
                return .object(dict)
            default:
                throw JSONDeserializationError.unknown
            }
        }

        let json = try materialize(jsonValue, options)
        if !options.contains(.fragmentsAllowed) {
            switch json {
            case .array, .object:
                return json
            case .literal, .number, .string:
                throw JSONDeserializationError.illegalFragment
            }
        }
        if options.contains(.omitNullValues), json.isNull {
            throw JSONDeserializationError.illegalFragment
        }
        return json
    }

    @inline(__always)
    private static func parseAsync(
        _ data: Data,
        _ options: DeserializationOptions
    ) async throws -> JSON {
        if inputSizeLimit != 0, !options.contains(.ignoreInputSizeLimit), data.count > inputSizeLimit {
            throw JSONDeserializationError.inputSizeLimitExceeded
        }

        var jsonValue: OpaquePointer?
        let result = data.withUnsafeBytes { buffer in
            json_parse(
                buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                buffer.count,
                &jsonValue,
                options.contains(.allowByteOrderMark),
                options.contains(.requireMinified),
                options.contains(.requireUniqueKeys),
                options.contains(.ignoreRecursionDepthLimit) ? 0 : recursionDepthLimit
            )
        }

        defer {
            json_free(jsonValue)
        }

        guard result == JSON_NO_ERROR else {
            throw JSONDeserializationError(result)
        }

        guard let jsonValue else {
            throw JSONDeserializationError.unknown
        }

        @inline(__always)
        func materialize(
            _ value: OpaquePointer,
            _ options: DeserializationOptions
        ) async throws -> JSON {
            let type = json_get_type(value)
            switch type {
            case JSON_NULL:
                return .literal(.null)
            case JSON_BOOLEAN:
                return .literal(json_get_boolean(value) ? .true : .false)
            case JSON_NUMBER_INT:
                return .number(.int(Int(json_get_int(value))))
            case JSON_NUMBER_DOUBLE:
                return .number(.double(json_get_double(value)))
            case JSON_STRING:
                let str = String(cString: json_get_string(value))
                return .string(str)
            case JSON_ARRAY:
                let count = json_get_array_size(value)
                let array = try await withThrowingTaskGroup { group in
                    for i in 0..<count {
                        let getElement = UnsafeClosure {
                            json_get_array_element(value, i).unsafelyUnwrapped
                        }
                        group.addTask {
                            let element = getElement()
                            let value = try await materialize(element, options)
                            return (value, i)
                        }
                    }
                    do {
                        var results: [(JSON, Int)] = []
                        results.reserveCapacity(count)
                        for try await result in group {
                            results.append(result)
                        }
                        return results
                            .sorted { $0.1 < $1.1 }
                            .map(\.0)
                            .filter { value in
                                !options.contains(.omitNullValues) || !value.isNull
                            }
                    } catch {
                        group.cancelAll()
                        throw error
                    }
                }
                return .array(array)
            case JSON_OBJECT:
                let count = json_get_object_size(value)
                let object = try await withThrowingTaskGroup { group in
                    for i in 0..<count {
                        let getKey = UnsafeClosure {
                            String(cString: json_get_object_key(value, i))
                        }
                        let getObjValue = UnsafeClosure {
                            json_get_object_value(value, i).unsafelyUnwrapped
                        }
                        group.addTask {
                            let key = getKey()
                            let objValue = getObjValue()
                            let value = try await materialize(objValue, options)
                            return (key, value)
                        }
                    }
                    do {
                        var object: [String: JSON] = [:]
                        object.reserveCapacity(count)
                        for try await (key, value) in group {
                            if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                                object[key] = value
                            }
                        }
                        return object
                    } catch {
                        group.cancelAll()
                        throw error
                    }
                }
                return .object(object)
            default:
                throw JSONDeserializationError.unknown
            }
        }

        let json = try await materialize(jsonValue, options)
        if !options.contains(.fragmentsAllowed) {
            switch json {
            case .array, .object:
                return json
            case .literal, .number, .string:
                throw JSONDeserializationError.illegalFragment
            }
        }
        if options.contains(.omitNullValues), json.isNull {
            throw JSONDeserializationError.illegalFragment
        }
        return json
    }

    private static func calculateMaxDepth() -> size_t {
        var attr = pthread_attr_t()

        pthread_attr_init(&attr)

        defer {
            pthread_attr_destroy(&attr)
        }

        var size: size_t = 0
        pthread_attr_getstacksize(&attr, &size)

        return min(1024, max(16, size / 512))
    }

    private static func calculateMaxInputSize() -> size_t {
        let physicalMemory = Double(ProcessInfo.processInfo.physicalMemory)
        let cap = size_t(physicalMemory * 0.01)
        return min(max(cap, 1 * 1024 * 1024), 50 * 1024 * 1024)
    }

}

private struct UnsafeClosure<T, U, Failure: Error>: @unchecked Sendable {

    init(
        closure: @escaping (T) throws(Failure) -> U
    ) {
        self.closure = closure
    }

    func callAsFunction(
        _ argument: T
    ) throws(Failure) -> U {
        try closure(argument)
    }

    func callAsFunction() throws(Failure) -> U where T == Void {
        try closure(())
    }

    private let closure: (T) throws(Failure) -> U

}
