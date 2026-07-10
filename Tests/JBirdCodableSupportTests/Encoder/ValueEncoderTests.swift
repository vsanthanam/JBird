// JBird
// ValueEncoderTests.swift
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

@Suite("Value Encoder Tests")
struct ValueEncoderTests {

    @Suite("Encode Booleans")
    struct Bools {

        @Test("Encode True")
        func encodeTrue() throws {
            let value = true
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode False")
        func encodeFalse() throws {
            let value = false
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

    }

    @Suite("Encode Signed Integers")
    struct SignedIntegers {

        @Test("Encode Int")
        func encodeInt() throws {
            let value = Int.max
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Int8")
        func encodeInt8() throws {
            let value: Int8 = 32
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Int16")
        func encodeInt16() throws {
            let value: Int16 = 64
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Int32")
        func encodeInt32() throws {
            let value: Int32 = 128
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Int64")
        func encodeInt64() throws {
            let value: Int64 = -256
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    @Suite("Encode Unsigned Integers")
    struct UnsignedIntegers {

        @Test("Encode UInt")
        func encodeUInt() throws {
            let value: UInt = 1029
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt8")
        func encodeUInt8() throws {
            let value: UInt8 = 32
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt16")
        func encodeUInt16() throws {
            let value: UInt16 = 64
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt32")
        func encodeUInt32() throws {
            let value: UInt32 = 128
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Int64")
        func encodeUInt64() throws {
            let value: UInt64 = 256
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    @Test("Encode Double")
    func encodeDouble() throws {
        let value = -0.00000023
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Float")
    func encodeFloat() throws {
        let value: Float = 121.2e14
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Suite("Encode String")
    struct EncodeStrings {

        @Test("Regular String")
        func regular() throws {
            let value = "abcdefgHIJKLMNOPqrstuvWXYZ"
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Beyond BMP String")
        func emoji() throws {
            let value = "Hello 😉"
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Escaped String")
        func escaped() throws {
            let value = "\"\n\t\""
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    @Test("Encode Optional")
    func optional() throws {
        let value: String? = nil
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Codable")
    func encodeCodable() throws {
        struct SomeCodable: Codable {
            var foo = "bar"
        }
        let value = SomeCodable()
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Unkeyed Super Encoder")
    func encodeUnkeyedSuper() throws {
        let value = UnkeyedSub(foo: "bar", bar: "foo")
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Single Value")
    func encodeSingleValue() throws {
        let value = Transparent(foo: Transparent.Bar(baz: "qux"))
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test("Encode Single Value Date")
    func encodeSingleValueDate() throws {
        let value = SingleValueDate(value: Date(timeIntervalSinceReferenceDate: 1234.5))
        let jbird = try JSON.Encoder().encode(value)
        let decoded = try JSONDecoder().decode(SingleValueDate.self, from: jbird)
        #expect(decoded == value)
    }

    @Test("Encode Single Value Data")
    func encodeSingleValueData() throws {
        let value = SingleValueData(value: Data([0x01, 0x02, 0x03, 0x04]))
        let jbird = try JSON.Encoder().encode(value)
        let decoded = try JSONDecoder().decode(SingleValueData.self, from: jbird)
        #expect(decoded == value)
    }

    @Test("Encode Single Value URL")
    func encodeSingleValueURL() throws {
        let value = try SingleValueURL(value: #require(URL(string: "https://example.com/path")))
        let jbird = try JSON.Encoder().encode(value)
        let decoded = try JSONDecoder().decode(SingleValueURL.self, from: jbird)
        #expect(decoded == value)
    }

    @Test("Encode Single Value Decimal")
    func encodeSingleValueDecimal() throws {
        let value = try SingleValueDecimal(value: #require(Decimal(string: "2.5")))
        let jbird = try JSON.Encoder().encode(value)
        let decoded = try JSONDecoder().decode(SingleValueDecimal.self, from: jbird)
        #expect(decoded == value)
    }

    @Test("Repeated single value container request reuses like Foundation")
    func singleValueForwarderMatchesFoundation() throws {
        let value = ForwardedSingleValue(value: "hello")
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
        #expect(String(decoding: jbird, as: UTF8.self) == #""hello""#)
    }

    @Test("Forwarded single value round-trips")
    func singleValueForwarderRoundTrips() throws {
        let value = ForwardedSingleValue(value: "hello")
        let data = try JSON.Encoder().encode(value)
        let decoded = try JSON.Decoder().decode(ForwardedSingleValue.self, from: data)
        #expect(decoded == value)
    }

    @Test("Writing once across two reused single value containers succeeds")
    func writeOnceAcrossReusedContainers() throws {
        // The first container is vended and discarded without writing; the
        // wrapped value writes through a second, reused container. A single
        // write total must succeed — only a *second* write should trap.
        struct DiscardsFirstContainer: Encodable {
            func encode(to encoder: any Encoder) throws {
                _ = encoder.singleValueContainer()
                var second = encoder.singleValueContainer()
                try second.encode(42)
            }
        }
        let data = try JSON.Encoder().encode(DiscardsFirstContainer())
        #expect(String(decoding: data, as: UTF8.self) == "42")
    }

    @Test("Writing twice through reused single value containers traps")
    func doubleSingleValueWriteTraps() async {
        await #expect(processExitsWith: .failure) {
            _ = try JSON.Encoder().encode(DoubleSingleValueWrite())
        }
    }

}
