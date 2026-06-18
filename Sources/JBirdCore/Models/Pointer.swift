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

    /// A [JSON Pointer (RFC 6901)](https://datatracker.ietf.org/doc/html/rfc6901) identifying a single value
    /// within a JSON document.
    ///
    /// A pointer is a sequence of *reference tokens*. In its string form each token is preceded by a forward
    /// slash (`/`); the empty string is a valid pointer that refers to the whole document.
    ///
    /// ```swift
    /// let pointer: JSON.Pointer = ["users", "0", "name"]
    /// pointer.tokens   // ["users", "0", "name"]
    /// ```
    ///
    /// Every Unicode code point is permitted in a token except `/` and `~`, which are escaped as `~1` and `~0`.
    public struct Pointer: Equatable, Hashable, Sendable, CustomStringConvertible, ExpressibleByArrayLiteral {

        // MARK: - Initializers

        /// Create a pointer directly from its reference tokens.
        ///
        /// - Parameter tokens: The unescaped reference tokens, in order from the root of the document. An empty
        ///   array refers to the whole document.
        public init(
            _ tokens: [Token]
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
            string: String
        ) throws {
            self = try Deserialization.pointer(from: string)
        }

        // MARK: - API

        /// A single unescaped reference token within a pointer.
        public typealias Token = String

        /// A pointer that refers to the whole document.
        ///
        /// Whole document pointers contain no referene tokens
        public static let wholeDocument: Pointer = .init([])

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
        /// - Returns: The escaped pointer string. Round-trips with ``init(string:)``.
        public func stringify() -> String {
            Serialization.stringify(pointer: self)
        }

        // MARK: - CustomStringConvertible

        /// The [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) string representation, with reference
        /// tokens escaped.
        ///
        /// Round-trips with ``init(string:)``.
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
            self.init(elements)
        }

    }

}
