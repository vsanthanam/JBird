// JBird
// DeserializationError.swift
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
#if BUILD_XCFRAMEWORK
    @_implementationOnly import JBirdParser
#else
    import JBirdParser
#endif

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// An error thrown when deserializing a Swift string or UTF-8 encoded byte buffer
    public enum DeserializationError: Error, Equatable, Sendable, CustomStringConvertible {

        // MARK: - API

        /// Thrown when attempting to deserialize a JSON fragment that is not a complete JSON value.
        /// You enable support for fragment parsing by using ``JSON/DeserializationOptions/fragmentsAllowed``
        case illegalFragment

        /// Thrown when an unknown or unspecified deserialization error occurs.
        case unknown

        /// Thrown when the JSON input ends unexpectedly before the value is complete.
        case unexpectedEndOfInput

        /// Thrown when the input contains malformed or syntactically incorrect JSON.
        case invalidJSON

        /// Thrown when an unexpected or illegal character is encountered in the JSON input.
        case invalidCharacter

        /// Thrown when a colon (':') is expected after an object key but is missing or replaced by another character.
        case expectedColon

        /// Thrown when a comma (',') or closing brace ('}') is expected in an object but neither is found.
        case expectedCommaOrBrace

        /// Thrown when a comma (',') or closing bracket (']') is expected in an array but neither is found.
        case expectedCommaOrBracket

        /// Thrown when a JSON literal (true, false, or null) is malformed or incomplete.
        case invalidLiteral

        /// Thrown when a number in the JSON input is malformed or contains invalid numeric characters.
        case invalidNumber

        /// Thrown when a string value in the JSON input is malformed, unterminated, or contains invalid characters.
        case invalidString

        /// Thrown when an object has a value without a corresponding key.
        case missingObjectKey

        /// Thrown when a Unicode escape sequence in a string is malformed or invalid.
        case invalidUnicode

        /// Thrown when an escape sequence in a string is invalid or unrecognized.
        case invalidEscape

        /// Thrown when the parser runs out of memory during deserialization.
        case outOfMemory

        /// Thrown when the JSON structure exceeds the maximum allowed nesting depth.
        /// By default, the depth limit is set for you automatically based on a heuristic applied to the system profile
        ///
        /// See ``JSON/withRecursionDepthLimit(_:operation:)`` or ``JSON/withRecursionDepthLimit(_:isolation:operation:)`` for more information.
        case depthLimitExceeded

        /// Thrown when the size of the input exceeds the configured maximum input size limit.
        /// By default, the input size limit is set for you automatically based on a heuristic applied to the system profile
        ///
        /// See ``JSON/withInputSizeLimit(_:operation:)`` or ``JSON/withInputSizeLimit(_:isolation:operation:)`` for more information.
        case inputSizeLimitExceeded

        /// Thrown when a JSON object contains duplicate keys.
        case duplicateKey

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
            case .invalidNumber:
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
            case .inputSizeLimitExceeded:
                "Input size limit exceeded"
            case .duplicateKey:
                "Duplicate keys found in JSON object"
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
                self = .invalidNumber
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
            case JSON_DUPLICATE_KEY:
                self = .duplicateKey
            case JSON_NO_ERROR:
                self = .unknown
            default:
                self = .unknown
            }
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@available(*, deprecated, renamed: "JSON.DeserializationError")
public typealias JSONDeserializationError = JSON.DeserializationError
