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

        /// Parse a pointer from its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string
        /// representation.
        ///
        /// - Parameter string: The pointer string. The empty string refers to the whole document; any other
        ///   value must begin with `/`.
        /// - Throws: ``DeserializationError`` if the string is not a valid JSON Pointer.
        public init(
            _ string: String
        ) throws {
            self = try Deserialization.pointer(from: string)
        }

        /// Parse a pointer from its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string
        /// representation.
        ///
        /// - Parameter data: The pointer string. The empty string refers to the whole document; any other.
        ///   value must begin with `/`.
        /// - Throws: ``DeserializationError`` if the string is not a valid JSON Pointer.
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

        /// Serialize the pointer to its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string form,
        /// encoded as UTF-8 data.
        ///
        /// - Returns: The escaped pointer string as UTF-8 bytes.
        public func serialize() -> Data {
            Serialization.serialize(pointer: self)
        }

        /// Serialize the pointer to its [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string
        /// representation, with reference tokens escaped.
        ///
        /// - Returns: The escaped pointer string.
        public func stringify() -> String {
            Serialization.stringify(pointer: self)
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
        /// tokens escaped.c
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

        static func stringify(
            pointer: JSON.Pointer
        ) -> String {
            guard !pointer.tokens.isEmpty else {
                return ""
            }
            return "/" + pointer.tokens
                .map(serialize)
                .joined(separator: "/")
        }

        static func serialize(
            pointer: JSON.Pointer
        ) -> Data {
            let str = stringify(pointer: pointer)
            return str.data(using: .utf8)!
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
