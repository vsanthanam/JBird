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
            try JSON.data(from: fragment, options: [])
        }
    }

    @Test("Byte Order Mark Serialzation")
    func byteOrderMarkSerialization() throws {
        let json: JSON = true
        let data = try JSON.data(from: json, options: .default)
        #expect(data == Data([0x74, 0x72, 0x75, 0x65]))
        let withBom = try JSON.data(from: json, options: .default.union(.includeByteOrderMark))
        #expect(withBom == Data([0xEF, 0xBB, 0xBF, 0x74, 0x72, 0x75, 0x65]))
    }

    @Test("Invalid Float Serialization")
    func invalidFloatSerialization() {
        let json: JSON = .numeric(.double(.infinity))
        #expect(throws: JSONSerializationError.invalidFloat) {
            try json.serialize()
        }
    }

    @Test("Omit Single Null Key")
    func omitSingleNullKey() async throws {
        let json: JSON = ["a": nil]
        let data = try JSON.data(from: json, options: .omitNullKeys)
        let str = try #require(String(data: data, encoding: .utf8))
        let expected = #"""
        {}
        """#
        #expect(str == expected)
        let stringified = try JSON.string(from: json, options: .omitNullKeys)
        #expect(stringified == expected)
        let asyncData = try await JSON.serialize(json, options: .omitNullKeys)
        #expect(asyncData == data)
        let asyncString = try await JSON.stringify(json, options: .omitNullKeys)
        #expect(asyncString == expected)
    }

    @Test("Omit Multiple Null Keys")
    func omitNullKeys() async throws {
        let json: JSON = ["a": nil, "b": 1]
        let data = try JSON.data(from: json, options: .omitNullKeys)
        let str = try #require(String(data: data, encoding: .utf8))
        let expected = #"""
        {"b":1}
        """#
        #expect(str == expected)
        let stringified = try JSON.string(from: json, options: .omitNullKeys)
        #expect(stringified == expected)
        let asyncData = try await JSON.serialize(json, options: .omitNullKeys)
        #expect(asyncData == data)
        let asyncString = try await JSON.stringify(json, options: .omitNullKeys)
        #expect(asyncString == expected)
    }

    @Suite("Literal Value Serialization Tests")
    struct LiteralTests {

        @Test("`true` Serialization")
        func serializeTrue() async throws {
            let json: JSON = true
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            true
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("`false` Serialization")
        func serializeFalse() async throws {
            let json: JSON = false
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            false
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("`null` Serialization")
        func serializeNull() async throws {
            let json: JSON = nil
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            null
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
            #expect(throws: JSONSerializationError.illegalFragment) {
                try JSON.data(from: json, options: [.omitNullValues, .fragmentsAllowed])
            }
        }

    }

    @Suite("Numeric Value Serialization Tests")
    struct NumericTests {

        @Suite("Integer Serialization Tests")
        struct IntegerTests {

            @Test("Normal Integer Serialization")
            func normal() async throws {
                let json: JSON = 1_231_421
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                1231421
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test("Negative Integer Serialization")
            func negative() async throws {
                let json: JSON = -1_231_421
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                -1231421
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

        }

        @Suite("Floating Point Serialization Tests")
        struct DoubleTests {

            @Test("Normal Double Serialization")
            func normal() async throws {
                let json: JSON = 123.12
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                123.12
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test("Negative Double Serialization")
            func negative() async throws {
                let json: JSON = -123.12
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                -123.12
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test("Scientific Double Serialization")
            func scientific() async throws {
                let json: JSON = 0.00000000123
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                1.23E-9
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

        }

    }

    @Suite("Array Serialization Tests")
    struct ArrayTests {

        @Test("Empty Array")
        func empty() async throws {
            let json: JSON = []
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            []
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

    }

    @Suite("Object Serialization Tests")
    struct ObjectTests {

        @Test("Empty Object Serialization")
        func empty() async throws {
            let json: JSON = [:]
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {}
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Single Field Object Serialization")
        func singleField() async throws {
            let json: JSON = ["hello": "world"]
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"hello":"world"}
            """#
            #expect(str == expected)
            let stringified = try json.stringify()
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Multiple Field Object Serialization")
        func multipleFields() async throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]
            let data = try JSON.data(from: json, options: .sortedKeys)
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"baz":null,"foo":true}
            """#
            #expect(str == expected)
            let stringified = try JSON.string(from: json, options: .sortedKeys)
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json, options: .sortedKeys)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: .sortedKeys)
            #expect(asyncString == expected)
        }

        @Test("Pretty Printed Object Serialization")
        func prettyPrinted() async throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil,
                "qux": [
                    "a": nil,
                    "b": [1, 2, 3]
                ]
            ]
            let data = try JSON.data(from: json, options: [.sortedKeys, .prettyPrinted])
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
            let stringified = try JSON.string(from: json, options: [.sortedKeys, .prettyPrinted])
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json, options: [.sortedKeys, .prettyPrinted])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.sortedKeys, .prettyPrinted])
            #expect(asyncString == expected)
        }

        @Test("Object Serialization Without Null Keys")
        func omitNullKeys() async throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil,
                "qux": [
                    "a": nil,
                    "b": [1, nil, 3]
                ]
            ]
            let data = try JSON.data(from: json, options: [.sortedKeys, .omitNullKeys])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"foo":true,"qux":{"b":[1,null,3]}}
            """#
            #expect(str == expected)
            let stringified = try JSON.string(from: json, options: [.sortedKeys, .omitNullKeys])
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json, options: [.sortedKeys, .omitNullKeys])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.sortedKeys, .omitNullKeys])
            #expect(asyncString == expected)
        }

        @Test("Object Serialization Without Null Values")
        func omitNullValues() async throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil,
                "qux": [
                    "a": nil,
                    "b": [1, nil, 3]
                ]
            ]
            let data = try JSON.data(from: json, options: [.sortedKeys, .omitNullValues])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"foo":true,"qux":{"b":[1,3]}}
            """#
            #expect(str == expected)
            let stringified = try JSON.string(from: json, options: [.sortedKeys, .omitNullValues])
            #expect(stringified == expected)
            let asyncData = try await JSON.serialize(json, options: [.sortedKeys, .omitNullValues])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.sortedKeys, .omitNullValues])
            #expect(asyncString == expected)
        }

    }

    @Suite("String Serialization Tests")
    struct StringTests {

        @Test("Normal String Serialization")
        func normal() async throws {
            let json: JSON = "abcdefghijklmnopqrstuvwxyz"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "abcdefghijklmnopqrstuvwxyz"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Quite Serialization")
        func escapedQuote() async throws {
            let json: JSON = "\""
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\""
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Backslash Serialization")
        func reverseSolidus() async throws {
            let json: JSON = "\\"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\\"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Backslash Serialization")
        func backslash() async throws {
            let json: JSON = "\u{0008}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\b"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Slash Serialization")
        func escapedSlash() async throws {
            let json: JSON = "/"
            let data = try JSON.data(from: json, options: [.escapeForwardSlash, .fragmentsAllowed])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\/"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json, options: [.escapeForwardSlash, .fragmentsAllowed])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.escapeForwardSlash, .fragmentsAllowed])
            #expect(asyncString == expected)
        }

        @Test("Regular Slash Serialization")
        func slash() async throws {
            let json: JSON = "/"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "/"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Tab Serialization")
        func tab() async throws {
            let json: JSON = "\u{0009}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\t"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Formfeed Serialization")
        func formfeed() async throws {
            let json: JSON = "\u{000C}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\f"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Newline Serialization")
        func newLine() async throws {
            let json: JSON = "\n"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\n"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Carriage Return Serialization")
        func carriageReturn() async throws {
            let json: JSON = "\u{000D}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\r"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Control Character Serialization")
        func controlCharacter() async throws {
            let json: JSON = "\u{001F}"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\u001F"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Non-ASCII Character Serialization")
        func escapedNonASCII() async throws {
            let json: JSON = "é"
            let data = try JSON.data(from: json, options: [.escapeNonASCII, .fragmentsAllowed])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\u00E9"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json, options: [.escapeNonASCII, .fragmentsAllowed])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.escapeNonASCII, .fragmentsAllowed])
            #expect(asyncString == expected)
        }

        @Test("Regular Non-ASCII Character Serialization")
        func nonASCII() async throws {
            let json: JSON = "é"
            let data = try json.serialize()
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "é"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Basic Multilingual Plane External Character Serialization")
        func escapedBMP() async throws {
            let json: JSON = "😀"
            let data = try JSON.data(from: json, options: [.escapeSpecialCharacters, .fragmentsAllowed])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\uD83D\uDE00"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Escaped Basic Multilingual Plane External Character Serialization due to ASCII")
        func escapedBMPFromASCII() async throws {
            let json: JSON = "😀"
            let data = try JSON.data(from: json, options: [.escapeNonASCII, .fragmentsAllowed])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "\uD83D\uDE00"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json)
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json)
            #expect(asyncString == expected)
        }

        @Test("Regular Basic Multilingual Plane External Character Serialization")
        func bmp() async throws {
            let json: JSON = "😀"
            let data = try JSON.data(from: json, options: [.fragmentsAllowed])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            "😀"
            """#
            #expect(str == expected)
            let asyncData = try await JSON.serialize(json, options: [.fragmentsAllowed])
            #expect(asyncData == data)
            let asyncString = try await JSON.stringify(json, options: [.fragmentsAllowed])
            #expect(asyncString == expected)
        }
    }

}
