// JBird
// JSONErrorTests.swift
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

import JBird
import Testing

@Test("JSONError Description Tests")
func jsonErrorDescriptionTests() {

    let invalidIndex = JSONError.invalidSubscript(.index(1))
    #expect(invalidIndex.description == "Invalid JSON subscript '1'")

    let invalidKey = JSONError.invalidSubscript(.key("foo"))
    #expect(invalidKey.description == "Invalid JSON subscript 'foo'")

    let keyNotFound = JSONError.keyNotFound("foo")
    #expect(keyNotFound.description == "Key 'foo' not found in JSON object")

    let indexOutOfBounds = JSONError.indexOutOfBounds(12)
    #expect(indexOutOfBounds.description == "Index '12' out of bounds in JSON array")

    let illegalBoolConversion = JSONError.illegalBoolConversion
    #expect(illegalBoolConversion.description == "JSON cannot be represented as a Boolean value")

    let illegalArrayConversion = JSONError.illegalArrayConversion
    #expect(illegalArrayConversion.description == "JSON cannot be represented as an array")

    let illegalObjectConversion = JSONError.illegalObjectConversion
    #expect(illegalObjectConversion.description == "JSON cannot be represented as an object")

    let illegalLiteralConversion = JSONError.illegalLiteralConversion
    #expect(illegalLiteralConversion.description == "JSON cannot be represented as a literal value")

    let illegalNumericConversion = JSONError.illegalNumericConversion
    #expect(illegalNumericConversion.description == "JSON cannot be represented as a numeric value")

    let illegalStringConversion = JSONError.illegalStringConversion
    #expect(illegalStringConversion.description == "JSON cannot be represented as a string")

    let illegalIntConversion = JSONError.illegalIntConversion
    #expect(illegalIntConversion.description == "JSON cannot be represented as an integer")

    let illegalDoubleConversion = JSONError.illegalDoubleConversion
    #expect(illegalDoubleConversion.description == "JSON cannot be represented as a double")

    let illegalCollectionConversion = JSONError.illegalCollectionConversion
    #expect(illegalCollectionConversion.description == "JSON cannot be represented as a collection")

    let invalidRawRepresentable = JSONError.invalidRawRepresentable
    #expect(invalidRawRepresentable.description == "JSON contains invalid raw representable")

    let urlDecodingFailure = JSONError.urlDecodingFailure("foo")
    #expect(urlDecodingFailure.description == "Cannot decode URL from 'foo'")

    let uuidDecodingFailure = JSONError.uuidDecodingFailure("foo")
    #expect(uuidDecodingFailure.description == "Cannot decode UUID from 'foo'")

}
