// JBird
// SerializationTests.swift
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
import JBird
import Testing

@Suite("Serialization Tests")
struct SerializationTests {

    @Test("Fragment Serialization Rules")
    func fragmentSerializationRules() throws {
        let fragment: JSON = true
        let data = try fragment.serialize()
        let str = try #require(String(data: data, encoding: .utf8))
        let expected = #"""
        true
        """#
        #expect(str == expected)
        #expect(throws: JSONSerializationError.illegalFragment) {
            try JSON.Serialization.data(from: fragment, options: [])
        }
    }

    @Test("Byte Order Mark Serialzation")
    func byteOrderMarkSerialization() throws {
        let json: JSON = true
        let data = try JSON.Serialization.data(from: json, options: .default)
        #expect(data == Data([0x74, 0x72, 0x75, 0x65]))
        let withBom = try JSON.Serialization.data(from: json, options: .default.union(.includeByteOrderMark))
        #expect(withBom == Data([0xEF, 0xBB, 0xBF, 0x74, 0x72, 0x75, 0x65]))
    }

    @Test("Invalid Float Serialization")
    func invalidFloatSerialization() {
        let json: JSON = .numeric(.double(.infinity))
        #expect(throws: JSONSerializationError.invalidFloat) {
            try json.serialize()
        }
    }

    @Test("Omit Null Keys")
    func omitNullKeys() throws {
        let json: JSON = ["a": nil, "b": 1]
        let data = try JSON.Serialization.data(from: json, options: .omitNullKeys)
        let str = try #require(String(data: data, encoding: .utf8))
        let expected = #"""
        {"b":1}
        """#
        #expect(str == expected)
        let stringified = try JSON.Serialization.string(from: json, options: .omitNullKeys)
        #expect(stringified == expected)
    }

    @Suite("Literal Value Serialization Tests")
    struct LiteralTests {

        @Test("`true` Serialization")
        func serializeTrue() throws {
            let json: JSON = true
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            true
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

        @Test("`false` Serialization")
        func serializeFalse() throws {
            let json: JSON = false
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            false
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

        @Test("`null` Serialization")
        func serializeNull() throws {
            let json: JSON = nil
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            null
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

    }

    @Suite("Numeric Value Serialization Tests")
    struct NumericTests {

        @Suite("Integer Serialization Tests")
        struct IntegerTests {

            @Test("Normal Integer Serialization")
            func normal() throws {
                let json: JSON = 1_231_421
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                1231421
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
            }

            @Test("Negative Integer Serialization")
            func negative() throws {
                let json: JSON = -1_231_421
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                -1231421
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
            }

        }

        @Suite("Floating Point Serialization Tests")
        struct DoubleTests {

            @Test("Normal Double Serialization")
            func normal() throws {
                let json: JSON = 123.12
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                123.12
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
            }

            @Test("Negative Double Serialization")
            func negative() throws {
                let json: JSON = -123.12
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                -123.12
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
            }

            @Test("Scientific Double Serialization")
            func scientific() throws {
                let json: JSON = 0.00000000123
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                1.23E-9
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
            }

        }

    }

    @Suite("Array Serialization Tests")
    struct ArrayTests {

        @Test("Empty Array")
        func empty() throws {
            let json: JSON = []
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            []
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

    }

    @Suite("Object Serialization Tests")
    struct ObjectTests {

        @Test("Empty Object Serialization")
        func empty() throws {
            let json: JSON = [:]
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {}
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

        @Test("Single Field Object Serialization")
        func singleField() throws {
            let json: JSON = ["hello": "world"]
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"hello":"world"}
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
        }

        @Test("Multiple Field Object Serialization")
        func multipleFields() throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]
            let data = try JSON.Serialization.data(from: json, options: .sortedKeys)
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"baz":null,"foo":true}
            """#
            #expect(str == expected)
            let stringified = try JSON.Serialization.string(from: json, options: .sortedKeys)
            #expect(stringified == expected)
        }

        @Test("Pretty Printed Object Serialization")
        func prettyPrinted() throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil,
                "qux": [
                    "a": nil,
                    "b": [1, 2, 3]
                ]
            ]
            let data = try JSON.Serialization.data(from: json, options: [.sortedKeys, .prettyPrinted])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {
              "bar": false,
              "baz": null,
              "foo": true,
              "qux": {
                "a": null,
                "b": [
                  1,
                  2,
                  3
                ]
              }
            }
            """#
            #expect(str == expected)
            let stringified = try JSON.Serialization.string(from: json, options: [.sortedKeys, .prettyPrinted])
            #expect(stringified == expected)
        }

        @Test("Object Serialization Without Null Keys")
        func omitNullKeys() throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil,
                "qux": [
                    "a": nil,
                    "b": [1, 2, 3]
                ]
            ]
            let data = try JSON.Serialization.data(from: json, options: [.sortedKeys, .omitNullKeys])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"foo":true,"qux":{"b":[1,2,3]}}
            """#
            #expect(str == expected)
            let stringified = try JSON.Serialization.string(from: json, options: [.sortedKeys, .omitNullKeys])
            #expect(stringified == expected)
        }

    }

    @Suite("String Serialization Tests")
    struct StringTests {

        @Test("Normal String Serialization")
        func normal() throws {
            let json: JSON = "abcdefghijklmnopqrstuvwxyz"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "abcdefghijklmnopqrstuvwxyz"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Quite Serialization")
        func escapedQuote() throws {
            let json: JSON = "\""
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\""
            """#
            #expect(str == expect)
        }

        @Test("Escaped Backslash Serialization")
        func reverseSolidus() throws {
            let json: JSON = "\\"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\\"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Backslash Serialization")
        func backslash() throws {
            let json: JSON = "\u{0008}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\b"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Tab Serialization")
        func tab() throws {
            let json: JSON = "\u{0009}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\t"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Formfeed Serialization")
        func formfeed() throws {
            let json: JSON = "\u{000C}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\f"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Newline Serialization")
        func newLine() throws {
            let json: JSON = "\n"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\n"
            """#
            #expect(str == expect)
        }

        @Test("Escaped Carriage Return Serialization")
        func carriageReturn() throws {
            let json: JSON = "\u{000D}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expect = #"""
            "\r"
            """#
            #expect(str == expect)
        }

    }

}
