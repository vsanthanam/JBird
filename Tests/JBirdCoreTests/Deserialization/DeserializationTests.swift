// JBird
// DeserializationTests.swift
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
import JBirdCore
import Testing

struct DeserializationTests {

    struct BOMTests {

        @Test
        func `Byte Order Mark Deserialization`() throws {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            let json = try JSON(data)
            #expect(json == [:])
        }

        @Test
        func `Illegal Byte Order Mark Deserialization`() {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            #expect(throws: JSON.DeserializationError.invalidCharacter) {
                _ = try JSON.value(for: data, options: .default.subtracting(.allowByteOrderMark))
            }
        }

    }

    struct WhitespaceTests {

        @Test
        func `Without Whitespace`() throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .default.union(.requireMinified))
            #expect(json == ["foo": true])
        }

        @Test
        func `With Whitespace`() throws {
            let raw = #"""
            {
                "foo": true
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.missingObjectKey) {
                _ = try JSON.value(for: data, options: .default.union(.requireMinified))
            }
        }

    }

    struct FragmentTests {

        @Test
        func object() throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: [])
            #expect(json == ["foo": true])
        }

        @Test
        func array() throws {
            let raw = #"""
            [1,2,3]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: [])
            #expect(json == [1, 2, 3])
        }

        @Test
        func literal() async throws {
            let raw = #"""
            true
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSON.DeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [])
            }
        }

        @Test
        func number() async throws {
            let raw = #"""
            123
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSON.DeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [])
            }
        }

        @Test
        func string() async throws {
            let raw = #"""
            "hello"
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSON.DeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [])
            }
        }

    }

    struct LiteralTests {

        @Test
        func `true Deserialization`() async throws {
            let raw = #"""
            true    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == true)
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `false Deserialization`() async throws {
            let raw = #"""
            false    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == false)
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `null Deserialization`() async throws {
            let raw = #"""
            null  
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == nil)
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
            #expect(throws: JSON.DeserializationError.illegalFragment) {
                try JSON.value(for: data, options: [.omitNullValues, .fragmentsAllowed])
            }
            await #expect(throws: JSON.DeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [.omitNullValues, .fragmentsAllowed])
            }
        }

    }

    enum NumberTests {

        struct IntegerTests {

            @Test
            func `Normal Integer Deserialization`() async throws {
                let raw = #"""
                1231
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 1231)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

            @Test
            func `Negative Integer Deserialization`() async throws {
                let raw = #"""
                -1231
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -1231)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

        }

        struct DoubleTests {

            @Test
            func `Normal Double Deserialization`() async throws {
                let raw = #"""
                123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 123.12)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

            @Test
            func `Negative Double Deserialization`() async throws {
                let raw = #"""
                -123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -123.12)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

            @Test
            func `Scientific Notation Deserialization`() async throws {
                let raw = #"""
                1.3e4
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 13000.0)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

            @Test
            func `Negative Scientific Notation Deserialization`() async throws {
                let raw = #"""
                1.2e-2
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 0.012)
                let fromString = try JSON(jsonString: raw)
                #expect(fromString == json)
                let fromAsyncData = try await JSON.deserialize(data)
                #expect(fromAsyncData == json)
                let fromAsyncString = try await JSON.deserialize(raw)
                #expect(fromAsyncString == json)
            }

        }

    }

    struct StringTests {

        @Test
        func `Normal String Deserialization`() async throws {
            let raw = #"""
            "abcdefghijklmnopqrstuvwxyz"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "abcdefghijklmnopqrstuvwxyz")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Quote Deserialization`() async throws {
            let raw = #"""
            "\""
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"""#)
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Backslash Deserialization`() async throws {
            let raw = #"""
            "\\"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"\"#)
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Slash Deserialization`() async throws {
            let raw = #"""
            "\/"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "/")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Backspace Deserialization`() async throws {
            let raw = #"""
            "\b"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{0008}")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Tab Deserialization`() async throws {
            let raw = #"""
            "\t"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{0009}")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Formfeed Deserialization`() async throws {
            let raw = #"""
            "\f"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000C}")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Newline Deserialization`() async throws {
            let raw = #"""
            "\n"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\n")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Carriage Return Deserialization`() async throws {
            let raw = #"""
            "\r"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000D}")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Escaped Unicode Scalar Deserialization`() async throws {
            let raw = #"""
            "\u00E9"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "é")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Basic Multi-lingual Plane External Escaped Unicode Scalar Deserialization`() async throws {
            let raw = #"""
            "\uD83D\uDE97"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "🚗")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Ascii External Deserialization`() async throws {
            let raw = #"""
            "café"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "café")
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Basic Multi-lingual Plane External Deserialization`() async throws {
            let raw = #"""
            {"key":"💨"}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["key": "💨"])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }
    }

    struct ArrayTests {

        @Test
        func `Empty Array Deserialization`() async throws {
            let raw = #"""
            []
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Single Element Array Deserialization`() async throws {
            let raw = #"""
            ["a"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a"])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Multiple Element Array Deserialization`() async throws {
            let raw = #"""
            ["a","b","c"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a", "b", "c"])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Array With Whitespace Deserialization`() async throws {
            let raw = #"""
            [
                "a",
                "b",
                "c"
            ]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a", "b", "c"])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

    }

    struct ObjectTests {

        @Test
        func `Empty Object Deserialization`() async throws {
            let raw = #"""
            {}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [:])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Single Field Object Deserialization`() async throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Multiple Field Object Deserialization`() async throws {
            let raw = #"""
            {"foo":true,"bar":null}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": nil])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Object Omit Null Keys`() async throws {
            let raw = #"""
            {"foo":[1,null,2],"bar":null}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .omitNullKeys)
            #expect(json == ["foo": [1, nil, 2]])
            let fromString = try JSON.value(for: raw, options: .omitNullKeys)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data, options: .omitNullKeys)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw, options: .omitNullKeys)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Object Omit Null Values`() async throws {
            let raw = #"""
            {"foo":[1,null,2],"bar":null}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .omitNullValues)
            #expect(json == ["foo": [1, 2]])
            let fromString = try JSON.value(for: raw, options: .omitNullValues)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data, options: .omitNullValues)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw, options: .omitNullValues)
            #expect(fromAsyncString == json)
        }

        @Test
        func `Object With Whitespace Deserialization`() async throws {
            let raw = #"""
            {
                "foo": true,
                "bar": false
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": false])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
            let fromAsyncString = try await JSON.deserialize(raw)
            #expect(fromAsyncString == json)
        }

    }

    @Test
    func `Complex JSON Object Deserialization`() async throws {
        let raw = #"""
        {
            "foo": true,
            "bar": false,
            "garply": null,
            "baz": [
                1,
                2,
                null,
                {
                    "qux": "corge",
                    "grault": [{}]
                }
            ],
            "waldo": "fred",
            "fred": null,
            "plugh": [
                0.1
            ]
        }
        """#
        let data = try #require(raw.data(using: .utf8))
        let json = try JSON(data)
        #expect(json == [
            "foo": true,
            "bar": false,
            "baz": [
                1,
                2,
                nil,
                [
                    "qux": "corge",
                    "grault": [[:]],
                ]
            ],
            "garply": nil,
            "waldo": "fred",
            "fred": nil,
            "plugh": [0.1],
        ])
        let fromString = try JSON(jsonString: raw)
        #expect(fromString == json)
        let fromAsyncData = try await JSON.deserialize(data)
        #expect(fromAsyncData == json)
        let fromAsyncString = try await JSON.deserialize(raw)
        #expect(fromAsyncString == json)
    }

    struct Errors {

        @Test
        func `Unsupported byte order mark`() throws {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            #expect(throws: JSON.DeserializationError.invalidCharacter) {
                _ = try JSON.value(for: data, options: [])
            }
        }

        @Test
        func `Empty JSON`() throws {
            let raw = #"""

            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.unexpectedEndOfInput) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Unexpected end of input`() throws {
            let raw = #"""
            [1, 2, 3
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.unexpectedEndOfInput) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Unterminated array`() throws {
            let raw = #"""
            {
                "foo": [1,2,3
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.expectedCommaOrBracket) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Malformed array`() throws {
            let raw = #"""
            {
                "foo": [1,2 3]
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.expectedCommaOrBracket) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Leading zero`() throws {
            let raw = #"""
            {"foo": 0100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidNumber) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Invalid string`() throws {
            let raw = #"""
            {"key": "Hello
            World"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidString) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Invalid string escape`() throws {
            let raw = #"""
            {"foo\x": 100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidEscape) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Invalid literal`() throws {
            let raw = #"""
            {"key": nul}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidLiteral) {
                _ = try JSON(data)
            }
        }

        @Test
        func `Invalid unicode sequence`() throws {
            let raw = #"""
            {"key": "\uXYZ"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidUnicode) {
                _ = try JSON(data)
            }
        }

    }

    @Test
    func `Deserialization Recursion Depth Limit`() async throws {
        let raw = #"""
        {
            "foo": [1, 2, 3],
            "bar": null
        }
        """#
        let data = try #require(raw.data(using: .utf8))
        let json = try JSON.withRecursionDepthLimit(3) {
            try JSON(data)
        }
        #expect(json == ["foo": [1, 2, 3], "bar": nil])
        #expect(throws: JSON.DeserializationError.depthLimitExceeded) {
            try JSON.withRecursionDepthLimit(2) {
                try JSON(data)
            }
        }
        await #expect(throws: JSON.DeserializationError.depthLimitExceeded) {
            try await JSON.withRecursionDepthLimit(2) {
                try await JSON.deserialize(data)
            }
        }
        _ = try JSON.withRecursionDepthLimit(2) {
            try JSON.value(for: data, options: .ignoreRecursionDepthLimit)
        }
        _ = try await JSON.withRecursionDepthLimit(2) {
            try await JSON.deserialize(data, options: .ignoreRecursionDepthLimit)
        }
    }

    @Test
    func `Deserialization Input Size Limit`() async throws {
        let raw = #"""
        {
            "foo": [1, 2, 3],
            "bar": null
        }
        """#
        let data = try #require(raw.data(using: .utf8))
        let json = try JSON.withInputSizeLimit(50) {
            try JSON(data)
        }
        #expect(json == ["foo": [1, 2, 3], "bar": nil])
        #expect(throws: JSON.DeserializationError.inputSizeLimitExceeded) {
            try JSON.withInputSizeLimit(12) {
                try JSON(data)
            }
        }
        await #expect(throws: JSON.DeserializationError.inputSizeLimitExceeded) {
            try await JSON.withInputSizeLimit(12) {
                try await JSON.deserialize(data)
            }
        }
        _ = try JSON.withInputSizeLimit(12) {
            try JSON.value(for: data, options: .ignoreInputSizeLimit)
        }
        _ = try await JSON.withInputSizeLimit(12) {
            try await JSON.deserialize(data, options: .ignoreInputSizeLimit)
        }
    }

    struct DuplicateKeyTests {

        @Test
        func `Duplicate Keys in Object`() throws {
            let raw = #"""
            {"foo": true, "foo": false}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": false]) // Last key wins
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
        }

        @Test
        func `Duplicate Keys Not Allowed`() async throws {
            let raw = #"""
            {"foo": true, "foo": false}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.duplicateKey) {
                _ = try JSON.value(for: data, options: .requireUniqueKeys)
            }
            await #expect(throws: JSON.DeserializationError.duplicateKey) {
                _ = try await JSON.deserialize(data, options: .requireUniqueKeys)
            }
        }
    }

}
