// JBird
// ArrayEncoderTests.swift
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
import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Array Encoder Tests")
struct ArrayEncoderTests {

    @Test("Encode String Array")
    func stringArray() throws {
        let val: Strings = ["foo", "bar", "baz"]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Bool Array")
    func boolArray() throws {
        let val: Bools = [true, false, true]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Int Array")
    func intArray() throws {
        let val: Ints = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Int8 Array")
    func int8Array() throws {
        let val: Int8s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Int16 Array")
    func int16Array() throws {
        let val: Int16s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Int32 Array")
    func int32Array() throws {
        let val: Int32s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Int64 Array")
    func int64Array() throws {
        let val: Int64s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt Array")
    func uintArray() throws {
        let val: UInts = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt8 Array")
    func uint8Array() throws {
        let val: UInt8s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt16 Array")
    func uint16Array() throws {
        let val: UInt16s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt32 Array")
    func uint32Array() throws {
        let val: UInt32s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt64 Array")
    func uint64Array() throws {
        let val: UInt64s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Float Array")
    func floatArray() throws {
        let val: Floats = [1.25, 2.5, 3.75]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Double Array")
    func doubleArray() throws {
        let val: Doubles = [1.25, 2.5, 3.75]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Optional Array")
    func optionalArray() throws {
        let val: Optionals<String> = ["foo", nil, "baz"]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Codable Array")
    func codableArray() throws {
        struct Foo: Codable, Equatable, ExpressibleByStringLiteral {
            let bar: String

            init(bar: String) {
                self.bar = bar
            }

            init(stringLiteral value: StringLiteralType) {
                self.init(bar: value)
            }
        }
        let val: Values<Foo> = ["foo", "bar", "baz"]
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Nested Unkeyed Array")
    func nestedUnkeyed() throws {
        let val = NestedUnkeyedModel(foo: "foo", int: [1, 2, 3])
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

}
