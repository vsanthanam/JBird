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
            #expect(throws: JSONDeserializationError.invalidCharacter) {
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
            #expect(throws: JSONDeserializationError.missingObjectKey) {
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
            #expect(throws: JSONDeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSONDeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [])
            }
        }

        @Test("Number")
        func number() async throws {
            let raw = #"""
            123
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSONDeserializationError.illegalFragment) {
                try await JSON.deserialize(data, options: [])
            }
        }

        @Test("String")
        func string() async throws {
            let raw = #"""
            "hello"
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.illegalFragment) {
                _ = try JSON.value(for: data, options: [])
            }
            await #expect(throws: JSONDeserializationError.illegalFragment) {
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
            #expect(throws: JSONDeserializationError.illegalFragment) {
                try JSON.value(for: data, options: [.omitNullValues, .fragmentsAllowed])
            }
            await #expect(throws: JSONDeserializationError.illegalFragment) {
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
            #expect(throws: JSONDeserializationError.invalidCharacter) {
                _ = try JSON.value(for: data, options: [])
            }
        }

        @Test("Empty JSON")
        func empty() throws {
            let raw = #"""

            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.unexpectedEndOfInput) {
                _ = try JSON(data)
            }
        }

        @Test("Unexpected end of input")
        func endOfInput() throws {
            let raw = #"""
            [1, 2, 3
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.unexpectedEndOfInput) {
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
            #expect(throws: JSONDeserializationError.expectedCommaOrBracket) {
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
            #expect(throws: JSONDeserializationError.expectedCommaOrBracket) {
                _ = try JSON(data)
            }
        }

        @Test("Leading zero")
        func leadingZero() throws {
            let raw = #"""
            {"foo": 0100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.invalidNumber) {
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
            #expect(throws: JSONDeserializationError.invalidString) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid string escape")
        func invalidStringEscape() throws {
            let raw = #"""
            {"foo\x": 100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.invalidEscape) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid literal")
        func invalidLiteral() throws {
            let raw = #"""
            {"key": nul}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.invalidLiteral) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid unicode sequence")
        func invalidUnicodeSequence() throws {
            let raw = #"""
            {"key": "\uXYZ"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.invalidUnicode) {
                _ = try JSON(data)
            }
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
        #expect(throws: JSONDeserializationError.depthLimitExceeded) {
            try JSON.withRecursionDepthLimit(2) {
                try JSON(data)
            }
        }
        await #expect(throws: JSONDeserializationError.depthLimitExceeded) {
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
        #expect(throws: JSONDeserializationError.inputSizeLimitExceeded) {
            try JSON.withInputSizeLimit(12) {
                try JSON(data)
            }
        }
        await #expect(throws: JSONDeserializationError.inputSizeLimitExceeded) {
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
        func duplicateKeys() async throws {
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
            #expect(throws: JSONDeserializationError.duplicateKey) {
                _ = try JSON.value(for: data, options: .requireUniqueKeys)
            }
            await #expect(throws: JSONDeserializationError.duplicateKey) {
                _ = try await JSON.deserialize(data, options: .requireUniqueKeys)
            }
        }
    }

}
