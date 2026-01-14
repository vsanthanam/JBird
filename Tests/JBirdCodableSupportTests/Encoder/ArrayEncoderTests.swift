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
        let value: Strings = ["foo", "bar", "baz"]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Bool Array")
    func boolArray() throws {
        let value: Bools = [true, false, true]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Int Array")
    func intArray() throws {
        let value: Ints = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Int8 Array")
    func int8Array() throws {
        let value: Int8s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Int16 Array")
    func int16Array() throws {
        let value: Int16s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Int32 Array")
    func int32Array() throws {
        let value: Int32s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Int64 Array")
    func int64Array() throws {
        let value: Int64s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt Array")
    func uintArray() throws {
        let value: UInts = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt8 Array")
    func uint8Array() throws {
        let value: UInt8s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt16 Array")
    func uint16Array() throws {
        let value: UInt16s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt32 Array")
    func uint32Array() throws {
        let value: UInt32s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode UInt64 Array")
    func uint64Array() throws {
        let value: UInt64s = [1, 2, 3]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Float Array")
    func floatArray() throws {
        let value: Floats = [1.25, 2.5, 3.75]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Double Array")
    func doubleArray() throws {
        let value: Doubles = [1.25, 2.5, 3.75]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Optional Array")
    func optionalArray() throws {
        let value: Optionals<String> = ["foo", nil, "baz"]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
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
        let value: Values<Foo> = ["foo", "bar", "baz"]
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Nested Unkeyed")
    func nestedUnkeyed() throws {
        let value = NestedUnkeyedModel(foo: "foo", int: [1, 2, 3])
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Nested Keyed")
    func decodeUnkeyedWithNestedKeyed() throws {
        let value = UnkeyedWithNestedKeyedModel(qux: "qux", foo: "foo", bar: "bar")
        let foundationEncoder = JSONEncoder()
        foundationEncoder.outputFormatting = [.sortedKeys]
        let foundation = try foundationEncoder.encode(value)
        let jbirdEncoder = JSON.Encoder()
        jbirdEncoder.outputFormatting = [.sortedKeys]
        let jbird = try jbirdEncoder.encode(value)
        #expect(foundation == jbird)
    }

}
