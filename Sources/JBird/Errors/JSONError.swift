// JBird
// JSONError.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public enum JSONError: Error, Equatable, Sendable, CustomStringConvertible {

    // MARK: - Cases

    case invalidSubscript(JSON.Subscript)

    case keyNotFound(String)

    case indexOutOfBounds(Int)

    case illegalBoolConversion

    case illegalArrayConversion

    case illegalObjectConversion

    case illegalLiteralConversion

    case illegalNumericConversion

    case illegalStringConversion

    case illegalIntConversion

    case illegalDoubleConversion

    case illegalCollectionConversion

    case invalidRawRepresentable

    case fileExists(URL)

    case urlDecodingFailure(String)

    case uuidDecodingFailure(String)

    // MARK: - CustomStringConvertible

    public var description: String {
        switch self {
        case let .invalidSubscript(`subscript`):
            "Invalid JSON subscript '\(`subscript`)'"
        case let .keyNotFound(key):
            "Key '\(key)' not found in JSON object"
        case let .indexOutOfBounds(index):
            "Index '\(index)' out of bounds in JSON array"
        case .illegalBoolConversion:
            "JSON cannot be represented as a boolean value"
        case .illegalArrayConversion:
            "JSON cannot be represented as an array"
        case .illegalObjectConversion:
            "JSON cannot be represented as an object"
        case .illegalLiteralConversion:
            "JSON cannot be represented as a literal value"
        case .illegalNumericConversion:
            "JSON cannot be represented as a numeric value"
        case .illegalStringConversion:
            "JSON cannot be represented as a string"
        case .illegalIntConversion:
            "JSON cannot be represented as an integer"
        case .illegalDoubleConversion:
            "JSON cannot be represented as a double"
        case .illegalCollectionConversion:
            "JSON cannot be represented as a collection"
        case .invalidRawRepresentable:
            "JSON contains invalid raw representable"
        case let .fileExists(url):
            "File already exists at URL '\(url.absoluteString)'"
        case let .urlDecodingFailure(string):
            "Cannot decode URL from '\(string)'"
        case let .uuidDecodingFailure(string):
            "Cannot decode UUID from '\(string)'"
        }
    }

}
