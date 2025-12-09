// JBird
// BackingTypeDescriptionTests.swift
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

@testable import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Backing Type Description Tests")
struct BackingTypeDescriptionTests {

    @Test("Null Type Description")
    func testNull() {
        let json = JSON.null
        #expect(json.backingTypeDescription == .null)
    }

    @Test("True Type Description")
    func testTrue() {
        let json = JSON.bool(true)
        #expect(json.backingTypeDescription == .bool)
    }

    @Test("False Type Description")
    func testFalse() {
        let json = JSON.bool(false)
        #expect(json.backingTypeDescription == .bool)
    }

    @Test("Number Type Description")
    func int() {
        let json = JSON.number(12)
        #expect(json.backingTypeDescription == .number)
    }

    @Test("String Type Description")
    func testString() {
        let json = JSON.string("foo")
        #expect(json.backingTypeDescription == .string)
    }

    @Test("Array Type Description")
    func testArray() {
        let json = JSON.array([.string("foo"), .string("bar")])
        #expect(json.backingTypeDescription == .array)
    }

    @Test("Object Type Description")
    func testObject() {
        let json = JSON.object(["foo": .string("bar"), "bar": .string("foo")])
        #expect(json.backingTypeDescription == .object)
    }

}
