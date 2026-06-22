// JBird
// OperationErrorTests.swift
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

@Test("OperationError Description Tests")
func operationErrorDescriptionTests() {

    let invalidIndex = JSON.OperationError.invalidSubscript(.index(1))
    #expect(invalidIndex.description == "Invalid JSON subscript '1'")

    let invalidKey = JSON.OperationError.invalidSubscript(.key("foo"))
    #expect(invalidKey.description == "Invalid JSON subscript 'foo'")

    let keyNotFound = JSON.OperationError.keyNotFound("foo")
    #expect(keyNotFound.description == "Key 'foo' not found in JSON object")

    let indexOutOfBounds = JSON.OperationError.indexOutOfBounds(12)
    #expect(indexOutOfBounds.description == "Index '12' out of bounds in JSON array")

    let illegalBoolConversion = JSON.OperationError.illegalBoolConversion
    #expect(illegalBoolConversion.description == "JSON cannot be represented as a Boolean value")

    let illegalArrayConversion = JSON.OperationError.illegalArrayConversion
    #expect(illegalArrayConversion.description == "JSON cannot be represented as an array")

    let illegalObjectConversion = JSON.OperationError.illegalObjectConversion
    #expect(illegalObjectConversion.description == "JSON cannot be represented as an object")

    let illegalNumberConversion = JSON.OperationError.illegalNumberConversion
    #expect(illegalNumberConversion.description == "JSON cannot be represented as a number value")

    let illegalStringConversion = JSON.OperationError.illegalStringConversion
    #expect(illegalStringConversion.description == "JSON cannot be represented as a string")

    let illegalIntegerConversion = JSON.OperationError.illegalIntegerConversion
    #expect(illegalIntegerConversion.description == "JSON cannot be represented as an integer")

    let illegalFloatConversion = JSON.OperationError.illegalFloatConversion
    #expect(illegalFloatConversion.description == "JSON cannot be represented as a double")

    let illegalCollectionConversion = JSON.OperationError.illegalCollectionConversion
    #expect(illegalCollectionConversion.description == "JSON cannot be represented as a collection")

    let invalidRawRepresentable = JSON.OperationError.invalidRawRepresentable
    #expect(invalidRawRepresentable.description == "JSON contains invalid raw representable")

    let urlDecodingFailure = JSON.OperationError.urlDecodingFailure("foo")
    #expect(urlDecodingFailure.description == "Cannot decode URL from 'foo'")

    let uuidDecodingFailure = JSON.OperationError.uuidDecodingFailure("foo")
    #expect(uuidDecodingFailure.description == "Cannot decode UUID from 'foo'")

    let cannotRemoveWholeDocument = JSON.OperationError.cannotRemoveWholeDocument
    #expect(cannotRemoveWholeDocument.description == "Cannot remove the whole document with a JSON Pointer")

    let invalidPatchOperation = JSON.OperationError.invalidPatchOperation("frobnicate")
    #expect(invalidPatchOperation.description == "Invalid JSON Patch operation 'frobnicate'")

    let patchTestFailed = JSON.OperationError.patchTestFailed(["foo"])
    #expect(patchTestFailed.description == "JSON Patch test failed at '/foo'")

    let invalidPatchMove = JSON.OperationError.invalidPatchMove(["foo"])
    #expect(invalidPatchMove.description == "Cannot move the value at '/foo' into one of its own descendants")

}
