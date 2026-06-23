// JBird
// PathErrorTests.swift
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

import JBirdCore
import Testing

@Test("PathError Description Tests")
func pathErrorDescriptionTests() {

    let unexpectedCharacter = JSON.PathError.unexpectedCharacter(UInt8(ascii: "#"), at: 5)
    #expect(unexpectedCharacter.description == "Unexpected character '#' at position 5")

    let unterminatedString = JSON.PathError.unterminatedString(at: 3)
    #expect(unterminatedString.description == "Unterminated string starting at position 3")

    let invalidEscape = JSON.PathError.invalidEscape(at: 7)
    #expect(invalidEscape.description == "Invalid escape sequence at position 7")

    let invalidNumber = JSON.PathError.invalidNumber(at: 2)
    #expect(invalidNumber.description == "Invalid number at position 2")

    let invalidUnicodeEscape = JSON.PathError.invalidUnicodeEscape(at: 10)
    #expect(invalidUnicodeEscape.description == "Invalid unicode escape sequence at position 10")

    let unexpectedEndOfInput = JSON.PathError.unexpectedEndOfInput
    #expect(unexpectedEndOfInput.description == "Unexpected end of input")

    let unexpectedToken = JSON.PathError.unexpectedToken("Expected '$', got '.'")
    #expect(unexpectedToken.description == "Expected '$', got '.'")

}
