// JBird
// Pointer.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A JSON Pointer
    public struct Pointer: Equatable, Hashable, Sendable, CustomStringConvertible, ExpressibleByArrayLiteral, Codable {

        // MARK: - Initializers

        /// Create a pointer directly from its reference tokens.
        ///
        /// - Parameter tokens: The unescaped reference tokens, in order from the root of the document. An empty
        ///   array refers to the whole document.
        public init(
            tokens: [Token]
        ) {
            self.tokens = tokens
        }

        /// Parse a pointer from its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) textual
        /// representation.
        ///
        /// The representation is detected automatically: a string beginning with `#` is parsed as the
        /// [URI fragment](https://datatracker.ietf.org/doc/html/rfc6901#section-6) form (percent-decoded);
        /// otherwise it is parsed as the
        /// [string](https://datatracker.ietf.org/doc/html/rfc6901#section-5) form. The empty string refers to
        /// the whole document.
        ///
        /// - Parameter string: The pointer string, in either representation.
        /// - Throws: ``DeserializationError`` if the string is not a valid JSON Pointer.
        public init(
            _ string: String
        ) throws {
            self = try Deserialization.pointer(from: string)
        }

        /// Parse a pointer from a buffer of UTF-8 bytes, in either textual representation.
        ///
        /// The bytes are decoded as UTF-8 and then parsed the same way as the string initializer — the
        /// representation (string or URI fragment) is detected automatically.
        ///
        /// - Parameter data: The UTF-8 encoded pointer bytes.
        /// - Throws: ``DeserializationError`` if the bytes are not valid UTF-8 or not a valid JSON Pointer.
        public init(
            _ data: Data
        ) throws {
            self = try Deserialization.pointer(from: data)
        }

        // MARK: - API

        /// A single unescaped reference token within a pointer.
        public typealias Token = String

        /// A pointer that refers to the whole document.
        ///
        /// Whole document pointers contain no referene tokens
        public static let wholeDocument: Pointer = .init(tokens: [])

        /// The unescaped reference tokens, in order from the root of the document.
        public let tokens: [Token]

        /// Whether the pointer refers to the whole document.
        public var isWholeDocument: Bool {
            tokens.isEmpty
        }

        /// Serialize the pointer to its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string
        /// representation, with reference tokens escaped.
        ///
        /// For other representations, use ``string(from:format:)``.
        ///
        /// - Returns: The escaped pointer string.
        public func stringify() -> String {
            JSON.Pointer.string(from: self)
        }

        /// Serialize the pointer to its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string
        /// representation, encoded as UTF-8 data.
        ///
        /// For other representations, use ``data(from:format:)``.
        ///
        /// - Returns: The escaped pointer string as UTF-8 bytes.
        public func serialize() -> Data {
            JSON.Pointer.data(from: self)
        }

        // MARK: - Codable

        /// Creates a new instance by decoding from the given decoder.
        /// - Parameter decoder: The decoder to read data from.
        public init(
            from decoder: any Decoder
        ) throws {
            let container = try decoder.singleValueContainer()
            let string = try container.decode(String.self)
            try self.init(string)
        }

        /// Encodes this value into the given encoder.
        /// - Parameter encoder: The encoder to write data to.
        public func encode(
            to encoder: any Encoder
        ) throws {
            var container = encoder.singleValueContainer()
            try container.encode(description)
        }

        // MARK: - CustomStringConvertible

        /// The [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string representation, with reference
        /// tokens escaped.
        public var description: String {
            stringify()
        }

        // MARK: - ExpressibleByArrayLiteral

        /// The element type used when creating a pointer from an array literal: a single reference ``Token``.
        public typealias ArrayLiteralElement = Token

        /// Create a pointer from an array literal of reference tokens.
        ///
        /// - Parameter elements: The unescaped reference tokens, in order from the root of the document.
        public init(arrayLiteral elements: ArrayLiteralElement...) {
            self.init(tokens: elements)
        }

        // MARK: - Private

        static func `subscript`(
            for token: Token,
            in json: JSON
        ) throws -> JSON.Subscript {
            switch json {
            case .object:
                .key(token)
            case .array:
                if let index = index(for: token) {
                    .index(index)
                } else {
                    throw OperationError.invalidSubscript(.key(token))
                }
            default:
                throw OperationError.invalidSubscript(.key(token))
            }
        }

        static func index(for token: Token) -> Int? {
            guard !token.isEmpty,
                  token.utf8.allSatisfy({ (0x30 ... 0x39).contains($0) }),
                  token == "0" || token.first != "0" else {
                return nil
            }
            return Int(token)
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Pointer {

    /// A textual representation of a JSON Pointer.
    public enum Format: Sendable, Hashable, CaseIterable {

        /// The [RFC 6901 §5](https://datatracker.ietf.org/doc/html/rfc6901#section-5) string
        /// representation, e.g. `/foo/0`.
        case string

        /// The [RFC 6901 §6](https://datatracker.ietf.org/doc/html/rfc6901#section-6) URI fragment
        /// representation, e.g. `#/foo/0`.
        case uriFragment
    }

    /// Serialize a pointer to a string in the given representation.
    ///
    /// - Parameters:
    ///   - pointer: The pointer to serialize.
    ///   - format: The textual representation to produce. Defaults to ``Format/string``.
    /// - Returns: The serialized pointer string.
    public static func string(
        from pointer: JSON.Pointer,
        format: Format = .string
    ) -> String {
        Serialization.string(
            pointer: pointer,
            format: format
        )
    }

    /// Serialize a pointer to UTF-8 data in the given representation.
    ///
    /// - Parameters:
    ///   - pointer: The pointer to serialize.
    ///   - format: The textual representation to produce. Defaults to ``Format/string``.
    /// - Returns: The serialized pointer as UTF-8 bytes.
    public static func data(
        from pointer: JSON.Pointer,
        format: Format = .string
    ) -> Data {
        Serialization.data(
            pointer: pointer,
            format: format
        )
    }

    enum Deserialization {

        static func pointer(
            from data: Data
        ) throws -> JSON.Pointer {
            guard let string = String(
                data: data,
                encoding: .utf8
            ) else {
                throw DeserializationError.invalidEncoding
            }
            return try pointer(from: string)
        }

        static func pointer(
            from string: String
        ) throws -> JSON.Pointer {
            guard string.hasPrefix("#") else {
                return try parse(string)
            }
            let body = String(string.dropFirst())
            return try parse(percentDecoded(body))
        }

        private static func parse(
            _ string: String
        ) throws -> JSON.Pointer {
            if string.isEmpty {
                return .wholeDocument
            }
            guard string.hasPrefix("/") else {
                throw DeserializationError.missingLeadingSlash(string)
            }
            let components = try string
                .split(
                    separator: "/",
                    omittingEmptySubsequences: false
                )
                .dropFirst()
                .map { component in
                    try token(from: String(component))
                }
            return .init(tokens: components)
        }

        private static func percentDecoded(
            _ string: String
        ) throws -> String {
            let utf8 = Array(string.utf8)
            var bytes = [UInt8]()
            bytes.reserveCapacity(utf8.count)
            var index = 0
            while index < utf8.count {
                let byte = utf8[index]
                guard byte == UInt8(ascii: "%") else {
                    bytes.append(byte)
                    index += 1
                    continue
                }
                guard index + 2 < utf8.count,
                      let high = hexDigit(utf8[index + 1]),
                      let low = hexDigit(utf8[index + 2]) else {
                    throw DeserializationError.invalidEncoding
                }
                bytes.append((high << 4) | low)
                index += 3
            }
            guard let decoded = String(bytes: bytes, encoding: .utf8) else {
                throw DeserializationError.invalidEncoding
            }
            return decoded
        }

        private static func hexDigit(
            _ byte: UInt8
        ) -> UInt8? {
            switch byte {
            case 0x30 ... 0x39:
                byte - 0x30 // "0"..."9"
            case 0x41 ... 0x46:
                byte - 0x41 + 10 // "A"..."F"
            case 0x61 ... 0x66:
                byte - 0x61 + 10 // "a"..."f"
            default:
                nil
            }
        }

        private static func token(
            from string: String
        ) throws -> Token {
            guard string.contains("~") else {
                return string
            }
            var result = ""
            result.reserveCapacity(string.count)
            var iterator = string.makeIterator()
            while let character = iterator.next() {
                guard character == "~" else {
                    result.append(character)
                    continue
                }
                switch iterator.next() {
                case "0":
                    result.append("~")
                case "1":
                    result.append("/")
                default:
                    throw DeserializationError.invalidEscapeSequence(string)
                }
            }
            return result
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Pointer {

    enum Serialization {

        static func string(
            pointer: JSON.Pointer,
            format: Format
        ) -> String {
            switch format {
            case .string:
                stringRepresentation(of: pointer)
            case .uriFragment:
                "#" + percentEncoded(stringRepresentation(of: pointer))
            }
        }

        static func data(
            pointer: JSON.Pointer,
            format: Format
        ) -> Data {
            Data(
                string(
                    pointer: pointer,
                    format: format
                ).utf8
            )
        }

        private static func stringRepresentation(
            of pointer: JSON.Pointer
        ) -> String {
            guard !pointer.tokens.isEmpty else {
                return ""
            }
            return "/" + pointer.tokens
                .map(serialize)
                .joined(separator: "/")
        }

        private static func percentEncoded(
            _ string: String
        ) -> String {
            var result = ""
            for byte in string.utf8 {
                if isAllowedInFragment(byte) {
                    result.unicodeScalars.append(UnicodeScalar(byte))
                } else {
                    result.append("%")
                    result.unicodeScalars.append(hexCharacter(byte >> 4))
                    result.unicodeScalars.append(hexCharacter(byte & 0xF))
                }
            }
            return result
        }

        private static func isAllowedInFragment(
            _ byte: UInt8
        ) -> Bool {
            switch byte {
            case 0x41 ... 0x5A, 0x61 ... 0x7A, 0x30 ... 0x39:
                true
            case 0x2D, 0x2E, 0x5F, 0x7E:
                true
            case 0x21, 0x24, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x3B, 0x3D:
                true
            case 0x3A, 0x40, 0x2F, 0x3F:
                true
            default:
                false
            }
        }

        private static func hexCharacter(
            _ nibble: UInt8
        ) -> UnicodeScalar {
            let value = nibble & 0xF
            return UnicodeScalar(value < 10 ? 0x30 + value : 0x41 + (value - 10))
        }

        private static func serialize(
            token: String
        ) -> String {
            guard token.contains("~") || token.contains("/") else {
                return token
            }
            var result = ""
            result.reserveCapacity(token.count)
            for character in token {
                switch character {
                case "~":
                    result.append("~0")
                case "/":
                    result.append("~1")
                default:
                    result.append(character)
                }
            }
            return result
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Pointer {

    /// An error encountered while parsing a JSON Pointer.
    public enum DeserializationError: Error, Equatable, Sendable, CustomStringConvertible {

        /// The string was non-empty but did not begin with a forward slash (`/`).
        case missingLeadingSlash(String)

        /// A reference token contained a `~` that was not followed by `0` or `1`.
        case invalidEscapeSequence(String)

        /// The pointer was not a valid UTF-8 encoded string
        case invalidEncoding

        // MARK: - CustomStringConvertible

        /// A human-readable description of the error.
        public var description: String {
            switch self {
            case let .missingLeadingSlash(string):
                "JSON Pointer '\(string)' must be empty or begin with '/'"
            case let .invalidEscapeSequence(token):
                "JSON Pointer reference token '\(token)' contains an invalid escape sequence"
            case .invalidEncoding:
                "JSON Pointers must be represented as UTF-8 encoded strings"
            }
        }

    }

}
