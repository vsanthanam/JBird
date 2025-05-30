// JBird
// JSONDeserializationErrorTests.swift
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

@Test("JSONDeserializationError Descriptions")
func jsonDeserializationErrorDescriptions() {
    let illegalFragment = JSONDeserializationError.illegalFragment
    #expect(illegalFragment.description == "JSON fragment cannot be deserialized")

    let unknown = JSONDeserializationError.unknown
    #expect(unknown.description == "Unknown deserialization error")

    let unexpectedEndOfInput = JSONDeserializationError.unexpectedEndOfInput
    #expect(unexpectedEndOfInput.description == "Unexpected end of input")

    let invalidJSON = JSONDeserializationError.invalidJSON
    #expect(invalidJSON.description == "Invalid JSON")

    let invalidCharacter = JSONDeserializationError.invalidCharacter
    #expect(invalidCharacter.description == "Invalid character")

    let expectedColon = JSONDeserializationError.expectedColon
    #expect(expectedColon.description == "Expected ':' after key in object")

    let expectedCommaOrBrace = JSONDeserializationError.expectedCommaOrBrace
    #expect(expectedCommaOrBrace.description == "Expected ',' or '}'")

    let expectedCommaOrBracket = JSONDeserializationError.expectedCommaOrBracket
    #expect(expectedCommaOrBracket.description == "Expected ',' or ']'")

    let invalidLiteral = JSONDeserializationError.invalidLiteral
    #expect(invalidLiteral.description == "Invalid literal")

    let invalidNumber = JSONDeserializationError.invalidNumber
    #expect(invalidNumber.description == "Invalid number")

    let invalidString = JSONDeserializationError.invalidString
    #expect(invalidString.description == "Invalid string")

    let invalidUnicode = JSONDeserializationError.invalidUnicode
    #expect(invalidUnicode.description == "Invalid unicode sequence")

    let invalidEscape = JSONDeserializationError.invalidEscape
    #expect(invalidEscape.description == "Invalid escape sequence")

    let outOfMemory = JSONDeserializationError.outOfMemory
    #expect(outOfMemory.description == "Out of memory")

    let depthLimitExceeded = JSONDeserializationError.depthLimitExceeded
    #expect(depthLimitExceeded.description == "Depth limit exceeded")

    let inputSizeLimitExceeded = JSONDeserializationError.inputSizeLimitExceeded
    #expect(inputSizeLimitExceeded.description == "Input size limit exceeded")
}

@Test("Deserialiation error C initializer")
func cInitializer() {
    #expect(JSONDeserializationError(JSON_UNEXPECTED_END_OF_INPUT) == .unexpectedEndOfInput)
    #expect(JSONDeserializationError(JSON_INVALID_JSON) == .invalidJSON)
    #expect(JSONDeserializationError(JSON_INVALID_CHARACTER) == .invalidCharacter)
    #expect(JSONDeserializationError(JSON_EXPECTED_COLON) == .expectedColon)
    #expect(JSONDeserializationError(JSON_EXPECTED_COMMA_OR_BRACE) == .expectedCommaOrBrace)
    #expect(JSONDeserializationError(JSON_EXPECTED_COMMA_OR_BRACKET) == .expectedCommaOrBracket)
    #expect(JSONDeserializationError(JSON_INVALID_LITERAL) == .invalidLiteral)
    #expect(JSONDeserializationError(JSON_INVALID_NUMBER) == .invalidNumber)
    #expect(JSONDeserializationError(JSON_INVALID_STRING) == .invalidString)
    #expect(JSONDeserializationError(JSON_MISSING_OBJECT_KEY) == .missingObjectKey)
    #expect(JSONDeserializationError(JSON_INVALID_UNICODE) == .invalidUnicode)
    #expect(JSONDeserializationError(JSON_INVALID_ESCAPE) == .invalidEscape)
    #expect(JSONDeserializationError(JSON_OUT_OF_MEMORY) == .outOfMemory)
    #expect(JSONDeserializationError(JSON_MAX_DEPTH_EXCEEDED) == .depthLimitExceeded)
}
