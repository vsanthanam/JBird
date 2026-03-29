// JBird
// DeserializationErrorTests.swift
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

@testable import JBirdCore
import JBirdParser
import Testing

@Test
func `DeserializationError Descriptions`() {
    let illegalFragment = JSON.DeserializationError.illegalFragment
    #expect(illegalFragment.description == "JSON fragment cannot be deserialized")

    let unknown = JSON.DeserializationError.unknown
    #expect(unknown.description == "Unknown deserialization error")

    let unexpectedEndOfInput = JSON.DeserializationError.unexpectedEndOfInput
    #expect(unexpectedEndOfInput.description == "Unexpected end of input")

    let invalidJSON = JSON.DeserializationError.invalidJSON
    #expect(invalidJSON.description == "Invalid JSON")

    let invalidCharacter = JSON.DeserializationError.invalidCharacter
    #expect(invalidCharacter.description == "Invalid character")

    let expectedColon = JSON.DeserializationError.expectedColon
    #expect(expectedColon.description == "Expected ':' after key in object")

    let expectedCommaOrBrace = JSON.DeserializationError.expectedCommaOrBrace
    #expect(expectedCommaOrBrace.description == "Expected ',' or '}'")

    let expectedCommaOrBracket = JSON.DeserializationError.expectedCommaOrBracket
    #expect(expectedCommaOrBracket.description == "Expected ',' or ']'")

    let invalidLiteral = JSON.DeserializationError.invalidLiteral
    #expect(invalidLiteral.description == "Invalid literal")

    let invalidNumber = JSON.DeserializationError.invalidNumber
    #expect(invalidNumber.description == "Invalid number")

    let invalidString = JSON.DeserializationError.invalidString
    #expect(invalidString.description == "Invalid string")

    let invalidUnicode = JSON.DeserializationError.invalidUnicode
    #expect(invalidUnicode.description == "Invalid unicode sequence")

    let invalidEscape = JSON.DeserializationError.invalidEscape
    #expect(invalidEscape.description == "Invalid escape sequence")

    let outOfMemory = JSON.DeserializationError.outOfMemory
    #expect(outOfMemory.description == "Out of memory")

    let depthLimitExceeded = JSON.DeserializationError.depthLimitExceeded
    #expect(depthLimitExceeded.description == "Depth limit exceeded")

    let inputSizeLimitExceeded = JSON.DeserializationError.inputSizeLimitExceeded
    #expect(inputSizeLimitExceeded.description == "Input size limit exceeded")
}

@Test
func `Deserialiation error C initializer`() {
    #expect(JSON.DeserializationError(JSON_UNEXPECTED_END_OF_INPUT) == .unexpectedEndOfInput)
    #expect(JSON.DeserializationError(JSON_INVALID_JSON) == .invalidJSON)
    #expect(JSON.DeserializationError(JSON_INVALID_CHARACTER) == .invalidCharacter)
    #expect(JSON.DeserializationError(JSON_EXPECTED_COLON) == .expectedColon)
    #expect(JSON.DeserializationError(JSON_EXPECTED_COMMA_OR_BRACE) == .expectedCommaOrBrace)
    #expect(JSON.DeserializationError(JSON_EXPECTED_COMMA_OR_BRACKET) == .expectedCommaOrBracket)
    #expect(JSON.DeserializationError(JSON_INVALID_LITERAL) == .invalidLiteral)
    #expect(JSON.DeserializationError(JSON_INVALID_NUMBER) == .invalidNumber)
    #expect(JSON.DeserializationError(JSON_INVALID_STRING) == .invalidString)
    #expect(JSON.DeserializationError(JSON_MISSING_OBJECT_KEY) == .missingObjectKey)
    #expect(JSON.DeserializationError(JSON_INVALID_UNICODE) == .invalidUnicode)
    #expect(JSON.DeserializationError(JSON_INVALID_ESCAPE) == .invalidEscape)
    #expect(JSON.DeserializationError(JSON_OUT_OF_MEMORY) == .outOfMemory)
    #expect(JSON.DeserializationError(JSON_MAX_DEPTH_EXCEEDED) == .depthLimitExceeded)
    #expect(JSON.DeserializationError(JSON_DUPLICATE_KEY) == .duplicateKey)
    #expect(JSON.DeserializationError(JSON_NO_ERROR) == .unknown)
    let bogusErrorCode = json_error_t(42)
    #expect(JSON.DeserializationError(bogusErrorCode) == .unknown)
}
