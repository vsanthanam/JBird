// JBird
// PointerError.swift
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

    /// An error encountered while parsing a JSON Pointer.
    public enum PointerError: Error, Equatable, Sendable, CustomStringConvertible {

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
