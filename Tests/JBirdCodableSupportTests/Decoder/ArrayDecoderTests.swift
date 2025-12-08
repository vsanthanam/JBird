// JBird
// ArrayDecoderTests.swift
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

@Suite("Array Decoder Tests")
struct ArrayDecoderTests {

    struct SomeCodable: Codable, Equatable {
        let foo: String
    }

    static let someCodableData = try! JSONEncoder().encode(Values([SomeCodable(foo: "foo"), SomeCodable(foo: "bar"), SomeCodable(foo: "baz")]))

    @Test("Decode Strings")
    func decodeStrings() throws {
        let value: Strings = ["foo", "bar"]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Strings.self, from: data)
        let jbird = try JSON.Decoder().decode(Strings.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Strings.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Bools")
    func decodeBools() throws {
        let value: Bools = [true, false]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Bools.self, from: data)
        let jbird = try JSON.Decoder().decode(Bools.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Bools.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Floats")
    func decodeFloats() throws {
        let value: Floats = [1.5, -2.25]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Floats.self, from: data)
        let jbird = try JSON.Decoder().decode(Floats.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Floats.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Doubles")
    func decodeDoubles() throws {
//        let value: Doubles = [3.14159, -0.1234]
        let values: Doubles = [1.2, -2.1]
        let data = try JSONEncoder().encode(values)
        let foundation = try JSONDecoder().decode(Doubles.self, from: data)
        let jbird = try JSON.Decoder().decode(Doubles.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Doubles.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Suite("Decode Signed Integer Arrays")
    struct SignedIntegers {

        @Test("Decode Ints")
        func decodeInts() throws {
            let value: Ints = [24, -12]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Ints.self, from: data)
            let jbird = try JSON.Decoder().decode(Ints.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Ints.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int8s")
        func decodeInt8s() throws {
            let value: Int8s = [-1, 1]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int8s.self, from: data)
            let jbird = try JSON.Decoder().decode(Int8s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int8s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int16s")
        func decodeInt16s() throws {
            let value: Int16s = [-3, 7]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int16s.self, from: data)
            let jbird = try JSON.Decoder().decode(Int16s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int16s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int32s")
        func decodeInt32s() throws {
            let value: Int32s = [-1000, 1000]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int32s.self, from: data)
            let jbird = try JSON.Decoder().decode(Int32s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int32s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int64s")
        func decodeInt64s() throws {
            let value: Int64s = [-9000, 9000]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int64s.self, from: data)
            let jbird = try JSON.Decoder().decode(Int64s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int64s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

    }

    @Suite("Decode Unsigned Integer Arrays")
    struct UnsignedIntegers {

        @Test("Decode UInts")
        func decodeUInts() throws {
            let value: UInts = [0, 42]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInts.self, from: data)
            let jbird = try JSON.Decoder().decode(UInts.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInts.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt8s")
        func decodeUInt8s() throws {
            let value: UInt8s = [0, 200]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt8s.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt8s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt8s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt16s")
        func decodeUInt16s() throws {
            let value: UInt16s = [0, 65000]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt16s.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt16s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt16s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt32s")
        func decodeUInt32s() throws {
            let value: UInt32s = [1, 1_000_000]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt32s.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt32s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt32s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt64s")
        func decodeUInt64s() throws {
            let value: UInt64s = [1, 1_000_000_000]
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt64s.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt64s.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt64s.self,
                    from: ArrayDecoderTests.someCodableData
                )
            }
        }

    }

    @Test("Decode Optionals")
    func decodeOptionals() throws {
        let value: Optionals<String> = ["foo", nil, "bar"]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Optionals<String>.self, from: data)
        let jbird = try JSON.Decoder().decode(Optionals<String>.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Optionals<String>.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Codables")
    func decodeCodables() throws {
        let value: Values<SomeCodable> = [.init(foo: "foo"), .init(foo: "bar"), .init(foo: "baz")]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Values<SomeCodable>.self, from: data)
        let jbird = try JSON.Decoder().decode(Values<SomeCodable>.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Values<String>.self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Array")
    func decodeArray() throws {
        let value = [1, 2, 3]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode([Int].self, from: data)
        let jbird = try JSON.Decoder().decode([Int].self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                [Int].self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Nested Unkeyed")
    func decodeNestedUnkeyed() throws {
        let value = NestedUnkeyedModel(foo: "foo", int: [1, 2, 3])
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(NestedUnkeyedModel.self, from: data)
        let jbird = try JSON.Decoder().decode(NestedUnkeyedModel.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                [Int].self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

    @Test("Nested Keyed")
    func decodeUnkeyedWithNestedKeyed() throws {
        let value = UnkeyedWithNestedKeyedModel(qux: "qux", foo: "foo", bar: "bar")
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UnkeyedWithNestedKeyedModel.self, from: data)
        let jbird = try JSON.Decoder().decode(UnkeyedWithNestedKeyedModel.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                [Int].self,
                from: ArrayDecoderTests.someCodableData
            )
        }
    }

}
