// JBird
// ValueDecoderTests.swift
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

@Suite("Value Decoder Tests")
struct ValueDecoderTests {

    struct SomeCodable: Codable {
        let foo: String
    }

    static let someCodableData = try! JSONEncoder().encode(SomeCodable(foo: "foo"))

    @Test("Decode String")
    func decodeString() throws {
        let value = "\n"
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(String.self, from: data)
        let jbird = try JSON.Decoder().decode(String.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                String.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Null")
    func decodeNull() throws {
        let value: String? = nil
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(String?.self, from: data)
        let jbird = try JSON.Decoder().decode(String?.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                String?.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Float")
    func decodeFloat() throws {
        let value: Float = -3.14
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Float.self, from: data)
        let jbird = try JSON.Decoder().decode(Float.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Float.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Double")
    func decodeDouble() throws {
        let value = 9.1
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Double.self, from: data)
        let jbird = try JSON.Decoder().decode(Double.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Double.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

    @Test("Decode Bool")
    func decodeBool() throws {
        let value = false
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Bool.self, from: data)
        let jbird = try JSON.Decoder().decode(Bool.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Bool.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

    @Suite("Decode Signed Integers")
    struct SignedIntegers {

        @Test("Decode Int")
        func decodeInt() throws {
            let value = 12
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int.self, from: data)
            let jbird = try JSON.Decoder().decode(Int.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int8")
        func decodeInt8() throws {
            let value: Int8 = 94
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int8.self, from: data)
            let jbird = try JSON.Decoder().decode(Int8.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int8.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int16")
        func decodeInt16() throws {
            let value: Int16 = -1029
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int16.self, from: data)
            let jbird = try JSON.Decoder().decode(Int16.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int16.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int32")
        func decodeInt32() throws {
            let value: Int32 = 90210
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int32.self, from: data)
            let jbird = try JSON.Decoder().decode(Int32.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int32.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode Int64")
        func decodeInt64() throws {
            let value: Int64 = -1_000_001
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(Int64.self, from: data)
            let jbird = try JSON.Decoder().decode(Int64.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    Int64.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

    }

    @Suite("Decode Unsigned Integers")
    struct UnsignedIntegers {

        @Test("Decode UInt")
        func decodeUInt() throws {
            let value: UInt = 12
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt8")
        func decodeUInt8() throws {
            let value: UInt8 = 94
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt8.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt8.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt8.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt16")
        func decodeUInt16() throws {
            let value: UInt16 = 1029
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt16.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt16.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt16.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt32")
        func decodeUInt32() throws {
            let value: UInt32 = 90210
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt32.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt32.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt32.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

        @Test("Decode UInt64")
        func decodeUInt64() throws {
            let value: UInt64 = 1_000_001
            let data = try JSONEncoder().encode(value)
            let foundation = try JSONDecoder().decode(UInt64.self, from: data)
            let jbird = try JSON.Decoder().decode(UInt64.self, from: data)
            #expect(foundation == jbird)
            #expect(throws: DecodingError.self) {
                try JSON.Decoder().decode(
                    UInt64.self,
                    from: ValueDecoderTests.someCodableData
                )
            }
        }

    }

    @Test("Decode Single Value")
    func decodeSingleValue() throws {
        let value = Transparent(foo: Transparent.Bar(baz: "qux"))
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Transparent.self, from: data)
        let jbird = try JSON.Decoder().decode(Transparent.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Transparent.self,
                from: ValueDecoderTests.someCodableData
            )
        }
    }

}
