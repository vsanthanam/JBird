// JBird
// JSONDeserializationError.swift
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

/// An error thrown when deserialzing a Swift string or UTF-8 encoded byte buffer
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public enum JSONDeserializationError: Error, Equatable, Sendable, CustomStringConvertible {

    // MARK: - Cases

    case illegalFragment

    case unknown

    case unexpectedEndOfInput

    case invalidJSON

    case invalidCharacter

    case expectedColon

    case expectedCommaOrBrace

    case expectedCommaOrBracket

    case invalidLiteral

    case invalidNumeric

    case invalidString

    case missingObjectKey

    case invalidUnicode

    case invalidEscape

    case outOfMemory

    case depthLimitExceeded

    // MARK: - CustomStringConvertible

    public var description: String {
        switch self {
        case .illegalFragment:
            "JSON fragment cannot be deserialized"
        case .unknown:
            "Unknown deserialization error"
        case .unexpectedEndOfInput:
            "Unexpected end of input"
        case .invalidJSON:
            "Invalid JSON"
        case .invalidCharacter:
            "Invalid character"
        case .expectedColon:
            "Expected ':' after key in object"
        case .expectedCommaOrBrace:
            "Expected ',' or '}'"
        case .expectedCommaOrBracket:
            "Expected ',' or ']'"
        case .invalidLiteral:
            "Invalid literal"
        case .invalidNumeric:
            "Invalid number"
        case .invalidString:
            "Invalid string"
        case .missingObjectKey:
            "Missing object key"
        case .invalidUnicode:
            "Invalid unicode sequence"
        case .invalidEscape:
            "Invalid escape sequence"
        case .outOfMemory:
            "Out of memory"
        case .depthLimitExceeded:
            "Depth limit exceeded"
        }
    }

    // MARK: - Private

    @inline(__always)
    init(_ result: json_error_t) {
        switch result {
        case JSON_UNEXPECTED_END_OF_INPUT:
            self = .unexpectedEndOfInput
        case JSON_INVALID_JSON:
            self = .invalidJSON
        case JSON_INVALID_CHARACTER:
            self = .invalidCharacter
        case JSON_EXPECTED_COLON:
            self = .expectedColon
        case JSON_EXPECTED_COMMA_OR_BRACE:
            self = .expectedCommaOrBrace
        case JSON_EXPECTED_COMMA_OR_BRACKET:
            self = .expectedCommaOrBracket
        case JSON_INVALID_LITERAL:
            self = .invalidLiteral
        case JSON_INVALID_NUMBER:
            self = .invalidNumeric
        case JSON_INVALID_STRING:
            self = .invalidString
        case JSON_MISSING_OBJECT_KEY:
            self = .missingObjectKey
        case JSON_INVALID_UNICODE:
            self = .invalidUnicode
        case JSON_INVALID_ESCAPE:
            self = .invalidEscape
        case JSON_OUT_OF_MEMORY:
            self = .outOfMemory
        case JSON_MAX_DEPTH_EXCEEDED:
            self = .depthLimitExceeded
        default:
            self = .unknown
        }
    }
}
