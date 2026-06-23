// JBird
// PathError.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// An error thrown when parsing a JSONPath query string.
    public enum PathError: Error, Equatable, Sendable, CustomStringConvertible {

        /// Thrown when the lexer encounters a byte that cannot start any valid token.
        case unexpectedCharacter(UInt8, at: Int)

        /// Thrown when a quoted string is not closed before the end of input.
        case unterminatedString(at: Int)

        /// Thrown when a string contains an invalid escape sequence.
        case invalidEscape(at: Int)

        /// Thrown when a numeric literal is malformed.
        case invalidNumber(at: Int)

        /// Thrown when a `\u` escape does not form a valid Unicode scalar.
        case invalidUnicodeEscape(at: Int)

        /// Thrown when the input ends where more tokens were expected.
        case unexpectedEndOfInput

        /// Thrown when the parser encounters a token that does not fit the grammar.
        case unexpectedToken(String)

        // MARK: - CustomStringConvertible

        public var description: String {
            switch self {
            case let .unexpectedCharacter(byte, at: position):
                "Unexpected character '\(Unicode.Scalar(byte))' at position \(position)"
            case let .unterminatedString(at: position):
                "Unterminated string starting at position \(position)"
            case let .invalidEscape(at: position):
                "Invalid escape sequence at position \(position)"
            case let .invalidNumber(at: position):
                "Invalid number at position \(position)"
            case let .invalidUnicodeEscape(at: position):
                "Invalid unicode escape sequence at position \(position)"
            case .unexpectedEndOfInput:
                "Unexpected end of input"
            case let .unexpectedToken(message):
                message
            }
        }

    }

}
