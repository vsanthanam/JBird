// JBird
// DeserializationTests.swift
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
import JBirdCore
import Testing

@Suite("Deserialization Tests")
struct DeserializationTests {

    @Suite("Byte Order Mark Tests")
    struct BOMTests {

        @Test("Byte Order Mark Deserialization")
        func bom() throws {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            let json = try JSON(data)
            #expect(json == [:])
        }

        @Test("Illegal Byte Order Mark Deserialization")
        func noBom() {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            #expect(throws: JSON.DeserializationError.invalidCharacter) {
                _ = try JSON.value(for: data, options: .default.subtracting(.allowByteOrderMark))
            }
        }

    }

    @Suite("Whitespace Tests")
    struct WhitespaceTests {

        @Test("Without Whitespace")
        func withoutWhitespace() throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .default.union(.requireMinified))
            #expect(json == ["foo": true])
        }

        @Test("With Whitespace")
        func testWithWhitespace() throws {
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

    @Suite("Fragment Tests")
    struct FragmentTests {

        @Test("Object")
        func object() throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: [])
            #expect(json == ["foo": true])
        }

        @Test("Array")
        func array() throws {
            let raw = #"""
            [1,2,3]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: [])
            #expect(json == [1, 2, 3])
        }

        @Test("Literal")
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

        @Test("Number")
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

        @Test("String")
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

    @Suite("Literal Value Deserialization Tests")
    struct LiteralTests {

        @Test("`true` Deserialization")
        func deserializeTrue() async throws {
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

        @Test("`false` Deserialization")
        func deserializeFalse() async throws {
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

        @Test("`null` Deserialization")
        func deserializeNull() async throws {
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

    @Suite("Number Value Deserialization Tests")
    struct NumberTests {

        @Suite("Integer Deserialization Tests")
        struct IntegerTests {

            @Test("Normal Integer Deserialization")
            func normal() async throws {
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

            @Test("Negative Integer Deserialization")
            func negative() async throws {
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

        @Suite("Floating Point Deserialization Tests")
        struct DoubleTests {

            @Test("Normal Double Deserialization")
            func normal() async throws {
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

            @Test("Negative Double Deserialization")
            func negative() async throws {
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

            @Test("Scientific Notation Deserialization")
            func exponent() async throws {
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

            @Test("Negative Scientific Notation Deserialization")
            func negativeExponent() async throws {
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

    @Suite("String Value Deserialization Tests")
    struct StringTests {

        @Test("Normal String Deserialization")
        func normal() async throws {
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

        @Test("Escaped Quote Deserialization")
        func escapedQuote() async throws {
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

        @Test("Escaped Backslash Deserialization")
        func reverseSolidus() async throws {
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

        @Test("Escaped Slash Deserialization")
        func solidus() async throws {
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

        @Test("Escaped Backspace Deserialization")
        func backspace() async throws {
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

        @Test("Escaped Tab Deserialization")
        func tab() async throws {
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

        @Test("Escaped Formfeed Deserialization")
        func formfeed() async throws {
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

        @Test("Escaped Newline Deserialization")
        func newLine() async throws {
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

        @Test("Escaped Carriage Return Deserialization")
        func carriageReturn() async throws {
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

        @Test("Escaped Unicode Scalar Deserialization")
        func unicodeEscape() async throws {
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

        @Test("Basic Multi-lingual Plane External Escaped Unicode Scalar Deserialization")
        func bmpExternalEscape() async throws {
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

        @Test("Ascii External Deserialization")
        func asciiExternalEscape() async throws {
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

        @Test("Basic Multi-lingual Plane External Deserialization")
        func specialCharaceter() async throws {
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

    @Suite("Array Deserialization Tests")
    struct ArrayTests {

        @Test("Empty Array Deserialization")
        func empty() async throws {
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

        @Test("Single Element Array Deserialization")
        func single() async throws {
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

        @Test("Multiple Element Array Deserialization")
        func multiple() async throws {
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

        @Test("Array With Whitespace Deserialization")
        func withWhitespace() async throws {
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

    @Suite("Object Deserialization Tests")
    struct ObjectTests {

        @Test("Empty Object Deserialization")
        func empty() async throws {
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

        @Test("Single Field Object Deserialization")
        func single() async throws {
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

        @Test("Multiple Field Object Deserialization")
        func multiple() async throws {
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

        @Test("Object Omit Null Keys")
        func omitNullKeys() async throws {
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

        @Test("Object Omit Null Values")
        func omitNullValues() async throws {
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

        @Test("Object With Whitespace Deserialization")
        func withWhitespace() async throws {
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

    @Test("Complex JSON Object Deserialization")
    func complexObject() async throws {
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

    @Suite("Deserialization Errors")
    struct Errors {

        @Test("Unsupported byte order mark")
        func unsupportedBOM() throws {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            #expect(throws: JSON.DeserializationError.invalidCharacter) {
                _ = try JSON.value(for: data, options: [])
            }
        }

        @Test("Empty JSON")
        func empty() throws {
            let raw = #"""

            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.unexpectedEndOfInput) {
                _ = try JSON(data)
            }
        }

        @Test("Unexpected end of input")
        func endOfInput() throws {
            let raw = #"""
            [1, 2, 3
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.unexpectedEndOfInput) {
                _ = try JSON(data)
            }
        }

        @Test("Unterminated array")
        func unterminatedList() throws {
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

        @Test("Malformed array")
        func malformedArray() throws {
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

        @Test("Leading zero")
        func leadingZero() throws {
            let raw = #"""
            {"foo": 0100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidNumber) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid string")
        func invalidString() throws {
            let raw = #"""
            {"key": "Hello
            World"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidString) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid string escape")
        func invalidStringEscape() throws {
            let raw = #"""
            {"foo\x": 100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidEscape) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid literal")
        func invalidLiteral() throws {
            let raw = #"""
            {"key": nul}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidLiteral) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid unicode sequence")
        func invalidUnicodeSequence() throws {
            let raw = #"""
            {"key": "\uXYZ"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSON.DeserializationError.invalidUnicode) {
                _ = try JSON(data)
            }
        }

        static let invalidUTF8Sequences: [[UInt8]] = [
            [0xFF], // invalid lead byte
            [0x80], // unexpected continuation byte
            [0xC0, 0xAF], // overlong 2-byte sequence
            [0xE0, 0x80, 0xAF], // overlong 3-byte sequence
            [0xED, 0xA0, 0x80], // encoded surrogate
            [0xF4, 0x90, 0x80, 0x80], // above U+10FFFF
            [0xC3], // truncated 2-byte sequence
            [0xE2, 0x82], // truncated 3-byte sequence
        ]

        static func document(key: [UInt8] = Array("key".utf8), value: [UInt8]) -> Data {
            Data(Array(#"{""#.utf8) + key + Array(#"": ""#.utf8) + value + Array(#""}"#.utf8))
        }

        @Test("Invalid UTF-8 in string value", arguments: invalidUTF8Sequences)
        func invalidUTF8Value(sequence: [UInt8]) async throws {
            let values: [[UInt8]] = [
                sequence,
                Array("a long ascii prefix".utf8) + sequence + Array("and suffix".utf8),
                Array(#"escaped\n"#.utf8) + sequence,
            ]
            for value in values {
                let data = Self.document(value: value)
                #expect(throws: JSON.DeserializationError.invalidUnicode) {
                    _ = try JSON(data)
                }
                await #expect(throws: JSON.DeserializationError.invalidUnicode) {
                    _ = try await JSON.deserialize(data)
                }
            }
        }

        @Test("Invalid UTF-8 in object key", arguments: invalidUTF8Sequences)
        func invalidUTF8Key(sequence: [UInt8]) throws {
            for key in [sequence, Array(#"escaped\n"#.utf8) + sequence] {
                let data = Self.document(key: key, value: Array("value".utf8))
                #expect(throws: JSON.DeserializationError.invalidUnicode) {
                    _ = try JSON(data)
                }
            }
        }

        @Test("Invalid UTF-8 at every lane position", arguments: invalidUTF8Sequences)
        func invalidUTF8LanePosition(sequence: [UInt8]) throws {
            for offset in 0 ..< 48 {
                let bytes = Array(repeating: UInt8(ascii: "a"), count: offset) + sequence + Array(repeating: UInt8(ascii: "b"), count: 64 - offset)
                #expect(throws: JSON.DeserializationError.invalidUnicode) {
                    _ = try JSON(Self.document(value: bytes))
                }
                #expect(throws: JSON.DeserializationError.invalidUnicode) {
                    _ = try JSON(Self.document(key: bytes, value: Array("value".utf8)))
                }
            }
        }

        @Test("Invalid UTF-8 in fragment")
        func invalidUTF8Fragment() throws {
            let data = Data([0x22, 0xFF, 0x22])
            #expect(throws: JSON.DeserializationError.invalidUnicode) {
                _ = try JSON(data)
            }
        }

    }

    @Test("Valid multi-byte UTF-8")
    func validMultiByteUTF8() throws {
        let raw = #"{"clé": "héllo wörld — 日本語 🐦", "🐦 \n": "é é"}"#
        let json = try JSON(Data(raw.utf8))
        #expect(json == ["clé": "héllo wörld — 日本語 🐦", "🐦 \n": "é é"])
    }

    @Test("Valid multi-byte UTF-8 at every lane position")
    func validMultiByteUTF8LanePosition() throws {
        for scalar in ["é", "—", "🐦"] {
            for offset in 0 ..< 48 {
                let string = String(repeating: "a", count: offset) + scalar + String(repeating: "b", count: 64 - offset)
                let raw = #"{"\#(string)": "\#(string)"}"#
                #expect(try JSON(Data(raw.utf8)) == [string: .string(string)])
            }
        }
    }

    @Test("Allow invalid UTF-8")
    func allowInvalidUTF8() async throws {
        let raw = Data(Array(#"{""#.utf8) + [0xFF] + Array(#"": "a"#.utf8) + [0xC3] + Array(#"\n"}"#.utf8))
        let options = JSON.DeserializationOptions.default.union(.allowInvalidUTF8)
        let expected: JSON = ["\u{FFFD}": "a\u{FFFD}\n"]
        #expect(try JSON.value(for: raw, options: options) == expected)
        #expect(try await JSON.deserialize(raw, options: options) == expected)
        #expect(throws: JSON.DeserializationError.invalidUnicode) {
            _ = try JSON.value(for: raw, options: .default)
        }
    }

    @Test("Deserialization Recursion Depth Limit")
    func depthLimit() async throws {
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

    @Test("Deserialization Input Size Limit")
    func inputSizeLimit() async throws {
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

    @Suite("Duplicate Key Tests")
    struct DuplicateKeyTests {

        @Test("Duplicate Keys in Object")
        func duplicateKeys() throws {
            let raw = #"""
            {"foo": true, "foo": false}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": false]) // Last key wins
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
        }

        @Test("Duplicate Keys Not Allowed")
        func duplicateKeysNotAllowed() async throws {
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

    @Suite("Repeated Object Shape Tests")
    struct RepeatedShapeTests {

        @Test("Objects With Repeated Keys")
        func repeatedShapes() async throws {
            let raw = #"""
            [{"a":1,"b":"x"},{"a":2,"b":"y"},{"a":3,"b":"z"}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [["a": 1, "b": "x"], ["a": 2, "b": "y"], ["a": 3, "b": "z"]])
            let fromString = try JSON(jsonString: raw)
            #expect(fromString == json)
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
        }

        @Test("Nested Objects With Alternating Shapes")
        func nestedAlternatingShapes() async throws {
            let raw = #"""
            [{"id":1,"user":{"name":"a","tag":"t"}},{"id":2,"user":{"name":"b","tag":"u"}},{"id":3,"user":{"name":"c","tag":"v"}}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [
                ["id": 1, "user": ["name": "a", "tag": "t"]],
                ["id": 2, "user": ["name": "b", "tag": "u"]],
                ["id": 3, "user": ["name": "c", "tag": "v"]]
            ])
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
        }

        @Test("Same Keys In Different Order")
        func differentKeyOrder() throws {
            let raw = #"""
            [{"a":1,"b":2},{"b":3,"a":4},{"a":5,"b":6}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [["a": 1, "b": 2], ["a": 4, "b": 3], ["a": 5, "b": 6]])
        }

        @Test("Duplicate Keys After A Repeated Shape")
        func duplicateKeysAfterShape() throws {
            let raw = #"""
            [{"a":1,"b":2},{"a":1,"b":2,"a":3},{"a":4,"b":5}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [["a": 1, "b": 2], ["a": 3, "b": 2], ["a": 4, "b": 5]])
        }

        @Test("Repeated Shapes With Omitted Null Keys")
        func omitNullKeys() throws {
            let raw = #"""
            [{"a":1,"b":null},{"a":2,"b":null},{"a":3,"b":4}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .omitNullKeys)
            #expect(json == [["a": 1], ["a": 2], ["a": 3, "b": 4]])
            let withNulls = try JSON(data)
            #expect(withNulls == [["a": 1, "b": nil], ["a": 2, "b": nil], ["a": 3, "b": 4]])
        }

        @Test("Repeated Shapes With Omitted Null Values")
        func omitNullValues() throws {
            let raw = #"""
            [{"a":[1,null],"b":null},{"a":[null,2],"b":null},null]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.value(for: data, options: .omitNullValues)
            #expect(json == [["a": [1]], ["a": [2]]])
        }

        @Test("Repeated Long And Escaped Keys")
        func longAndEscapedKeys() throws {
            let raw = #"""
            [{"a_very_long_key_name_indeed":1,"esc\"aped\nkey":2},{"a_very_long_key_name_indeed":3,"esc\"aped\nkey":4}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [
                ["a_very_long_key_name_indeed": 1, "esc\"aped\nkey": 2],
                ["a_very_long_key_name_indeed": 3, "esc\"aped\nkey": 4]
            ])
        }

        @Test("Many Distinct Shapes")
        func manyDistinctShapes() throws {
            let count = 600
            let raw = "[" + (0..<count).map { #"{"k\#($0)":\#($0),"shared":true}"# }.joined(separator: ",") + "]"
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            let expected = JSON.array((0..<count).map { .object(["k\($0)": .number(.init($0)), "shared": true]) })
            #expect(json == expected)
        }

        @Test("Empty Strings And Keys")
        func emptyStringsAndKeys() async throws {
            let raw = #"""
            [{"":"","a":""},{"":"x","a":""}]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [["": "", "a": ""], ["": "x", "a": ""]])
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
        }

        @Test("Embedded NUL Character In String")
        func embeddedNul() async throws {
            let raw = #"""
            {"a\u0000b":"c\u0000d"}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a\u{0}b": "c\u{0}d"])
            let fromAsyncData = try await JSON.deserialize(data)
            #expect(fromAsyncData == json)
        }
    }

}
