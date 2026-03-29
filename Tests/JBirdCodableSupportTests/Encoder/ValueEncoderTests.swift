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

struct ValueEncoderTests {

    struct Bools {

        @Test
        func `Encode True`() throws {
            let value = true
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode False`() throws {
            let value = false
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

    }

    struct SignedIntegers {

        @Test
        func `Encode Int`() throws {
            let value = Int.max
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode Int8`() throws {
            let value: Int8 = 32
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode Int16`() throws {
            let value: Int16 = 64
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode Int32`() throws {
            let value: Int32 = 128
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode Int64`() throws {
            let value: Int64 = -256
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    struct UnsignedIntegers {

        @Test
        func `Encode UInt`() throws {
            let value: UInt = 1029
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode UInt8`() throws {
            let value: UInt8 = 32
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode UInt16`() throws {
            let value: UInt16 = 64
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Encode UInt32`() throws {
            let value: UInt32 = 128
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `encode U int64`() throws {
            let value: UInt64 = 256
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    @Test
    func `Encode Double`() throws {
        let value = -0.00000023
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test
    func `Encode Float`() throws {
        let value: Float = 121.2e14
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    struct EncodeStrings {

        @Test
        func `Regular String`() throws {
            let value = "abcdefgHIJKLMNOPqrstuvWXYZ"
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Beyond BMP String`() throws {
            let value = "Hello 😉"
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test
        func `Escaped String`() throws {
            let value = "\"\n\t\""
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }
    }

    @Test
    func `Encode Optional`() throws {
        let value: String? = nil
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test
    func `Encode Codable`() throws {
        struct SomeCodable: Codable {
            var foo = "bar"
        }
        let value = SomeCodable()
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test
    func `Unkeyed Super Encoder`() throws {
        let value = UnkeyedSub(foo: "bar", bar: "foo")
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

    @Test
    func `Encode Single Value`() throws {
        let value = Transparent(foo: Transparent.Bar(baz: "qux"))
        let foundation = try JSONEncoder().encode(value)
        let jbird = try JSON.Encoder().encode(value)
        #expect(foundation == jbird)
    }

}
