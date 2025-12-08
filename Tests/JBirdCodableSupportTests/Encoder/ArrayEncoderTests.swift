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

    struct Values<T>: Encodable, ExpressibleByArrayLiteral where T: Encodable {

        init(arrayLiteral elements: T...) {
            value = elements
        }

        let value: [T]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Strings: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: String...) {
            value = elements
        }

        let value: [String]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Bools: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Bool...) {
            value = elements
        }

        let value: [Bool]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Ints: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Int...) {
            value = elements
        }

        let value: [Int]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Int8s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Int8...) {
            value = elements
        }

        let value: [Int8]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Int16s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Int16...) {
            value = elements
        }

        let value: [Int16]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Int32s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Int32...) {
            value = elements
        }

        let value: [Int32]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Int64s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Int64...) {
            value = elements
        }

        let value: [Int64]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct UInts: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: UInt...) {
            value = elements
        }

        let value: [UInt]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct UInt8s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: UInt8...) {
            value = elements
        }

        let value: [UInt8]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct UInt16s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: UInt16...) {
            value = elements
        }

        let value: [UInt16]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct UInt32s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: UInt32...) {
            value = elements
        }

        let value: [UInt32]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct UInt64s: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: UInt64...) {
            value = elements
        }

        let value: [UInt64]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Floats: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Float...) {
            value = elements
        }

        let value: [Float]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Doubles: Encodable, ExpressibleByArrayLiteral {

        init(arrayLiteral elements: Double...) {
            value = elements
        }

        let value: [Double]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            try container.encode(contentsOf: value)
        }

    }

    struct Optionals<T>: Encodable, ExpressibleByArrayLiteral where T: Encodable {

        init(arrayLiteral elements: T?...) {
            value = elements
        }

        let value: [T?]

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in value {
                if let value {
                    try container.encode(value)
                } else {
                    try container.encodeNil()
                }
            }
        }

    }

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
        struct Foo: Encodable, ExpressibleByStringLiteral {
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

}
