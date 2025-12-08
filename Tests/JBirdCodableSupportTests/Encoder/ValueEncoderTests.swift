// JBird
// ValueEncoderTests.swift
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

@Suite("Value Encoder Tests")
struct ValueEncoderTests {

    @Suite("Encode Booleans")
    struct Bools {

        @Test("Encode True")
        func encodeTrue() throws {
            let val = true
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode False")
        func encodeFalse() throws {
            let val = false
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

    }

    @Suite("Encode Signed Integers")
    struct SignedIntegers {

        @Test("Encode Int")
        func encodeInt() throws {
            let val = Int.max
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode Int8")
        func encodeInt8() throws {
            let val: Int8 = 32
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode Int16")
        func encodeInt16() throws {
            let val: Int16 = 64
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode Int32")
        func encodeInt32() throws {
            let val: Int32 = 128
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode Int64")
        func encodeInt64() throws {
            let val: Int64 = -256
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }
    }

    @Suite("Encode Unsigned Integers")
    struct UnsignedIntegers {

        @Test("Encode UInt")
        func encodeUInt() throws {
            let val: UInt = 1029
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt8")
        func encodeUInt8() throws {
            let val: UInt8 = 32
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt16")
        func encodeUInt16() throws {
            let val: UInt16 = 64
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode UInt32")
        func encodeUInt32() throws {
            let val: UInt32 = 128
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Encode Int64")
        func encodeUInt64() throws {
            let val: UInt64 = 256
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }
    }

    @Test("Encode Double")
    func encodeDouble() throws {
        let val = -0.00000023
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Float")
    func encodeFloat() throws {
        let val: Float = 121.2e14
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Suite("Encode String")
    struct EncodeStrings {

        @Test("Regular String")
        func regular() throws {
            let val = "abcdefgHIJKLMNOPqrstuvWXYZ"
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }

        @Test("Beyong BMP String")
        func emoji() throws {
            let val = "Hello 😉"
            let foundation = try JSONEncoder().encode(val)
            var encoder = JSON.Encoder()
            encoder.serializationOptions = [.fragmentsAllowed]
            let jbird = try encoder.encode(val)
            #expect(foundation == jbird)
        }

        @Test("Escaped String")
        func escaped() throws {
            let val = "\"\n\t\""
            let foundation = try JSONEncoder().encode(val)
            let jbird = try JSON.Encoder().encode(val)
            #expect(foundation == jbird)
        }
    }

    @Test("Encode Optional")
    func optional() throws {
        let val: String? = nil
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

    @Test("Encode Codable")
    func encodeCodable() throws {
        struct SomeCodable: Codable {
            var foo = "bar"
        }
        let val = SomeCodable()
        let foundation = try JSONEncoder().encode(val)
        let jbird = try JSON.Encoder().encode(val)
        #expect(foundation == jbird)
    }

}
