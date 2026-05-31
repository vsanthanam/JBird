// JBird
// ObjectDecoderTests.swift
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
import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Object Decoder Tests")
struct ObjectDecoderTests {

    struct SomeCodable: Codable, Equatable {
        let foo: String
    }

    static let someCodableData = try! JSONEncoder().encode(KeyedValue(value: SomeCodable(foo: "bar")))

    @Test("Decode Keyed String")
    func keyedString() throws {
        let value = KeyedString(value: "foo")
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedString.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedString.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedString.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Keyed Bool")
    func keyedBool() throws {
        let value = KeyedBool(value: false)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedBool.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedBool.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedBool.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

    @Suite("Decode Keyed Signed Integers")
    struct SignedIntegers {

        @Test("Keyed Int")
        func keyedInt() throws {
            let value = KeyedInt(value: 42)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedInt.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedInt.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedInt.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed Int8")
        func keyedInt8() throws {
            let value = KeyedInt8(value: -1)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedInt8.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedInt8.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedInt8.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed Int16")
        func keyedInt16() throws {
            let value = KeyedInt16(value: -3)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedInt16.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedInt16.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedInt16.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed Int32")
        func keyedInt32() throws {
            let value = KeyedInt32(value: -1000)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedInt32.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedInt32.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedInt32.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed Int64")
        func keyedInt64() throws {
            let value = KeyedInt64(value: -9000)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedInt64.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedInt64.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedInt64.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

    }

    @Suite("Decode Keyed Unsigned Integers")
    struct UnsignedIntegers {

        @Test("Keyed UInt")
        func keyedUInt() throws {
            let value = KeyedUInt(value: 42)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedUInt.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedUInt.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedUInt.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed UInt8")
        func keyedUInt8() throws {
            let value = KeyedUInt8(value: 200)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedUInt8.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedUInt8.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedUInt8.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed UInt16")
        func keyedUInt16() throws {
            let value = KeyedUInt16(value: 65000)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedUInt16.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedUInt16.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedUInt16.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed UInt32")
        func keyedUInt32() throws {
            let value = KeyedUInt32(value: 1_000_000)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedUInt32.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedUInt32.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedUInt32.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

        @Test("Keyed UInt64")
        func keyedUInt64() throws {
            let value = KeyedUInt64(value: 1_000_000_000)
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(KeyedUInt64.self, from: data)
            let jbird = try JSON.Decoder().decode(KeyedUInt64.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    KeyedUInt64.self,
                    from: ObjectDecoderTests.someCodableData
                )
            }
        }

    }

    @Test("Decode Keyed Float")
    func keyedFloat() throws {
        let value = KeyedFloat(value: 1.5)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedFloat.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedFloat.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedFloat.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Keyed Double")
    func keyedDouble() throws {
        let value = KeyedDouble(value: 1.2)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedDouble.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedDouble.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedDouble.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Keyed Codable")
    func keyedCodable() throws {
        let value = KeyedValue<Int>(value: 12)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedValue<Int>.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedValue<Int>.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedValue<Int>.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Keyed Subclass")
    func keyedSubClass() throws {
        let value = SomeSub(foo: "bar", bar: "foo", qux: .init(quux: false, grault: 1.2))
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(SomeSub.self, from: data)
        let jbird = try JSON.Decoder().decode(SomeSub.self, from: data)
        #expect(foundation == jbird)
    }

    @Test("Decode Keyed Subclass With Key")
    func keyedSubClassWithKey() throws {
        let value = SomeSubWitihKey(foo: "bar", bar: "foo", qux: .init(quux: false, grault: 1.2))
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(SomeSubWitihKey.self, from: data)
        let jbird = try JSON.Decoder().decode(SomeSubWitihKey.self, from: data)
        #expect(foundation == jbird)
    }

    @Test("Decode Keyed with nested keys")
    func decodeKeyedWithNestedKeyed() throws {
        let value = KeyedWithNestedKeyed(foo: "foo", baz: "baz", qux: "qux")
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedWithNestedKeyed.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedWithNestedKeyed.self, from: data)
        #expect(foundation == jbird)
    }

    @Test("Decode Keyed nested unkeyed container")
    func decodeKeyedNestedUnkeyed() throws {
        let value = KeyedNestedUnkeyed(name: "foo", numbers: [1, 2, 3])
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedNestedUnkeyed.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedNestedUnkeyed.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedNestedUnkeyed.self,
                from: ObjectDecoderTests.someCodableData
            )
        }
    }

}
