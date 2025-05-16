// JBird
// DeserializerTests.swift
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

@Suite("Deserializer Tests")
struct DeserializerTests {

    @Test("Byte Order Mark Deserialization")
    func testBom() throws {
        let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
        let json = try JSON(data)
        #expect(json == [:])
    }

    @Suite("Literal Value Deserialization Tests")
    struct LiteralTests {

        @Test("`true` Deserialization")
        func deserializeTrue() throws {
            let raw = #"""
            true    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == true)
        }

        @Test("`false` Deserialization")
        func deserializeFalse() throws {
            let raw = #"""
            false    
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == false)
        }

        @Test("`null` Deserialization")
        func deserializeNull() throws {
            let raw = #"""
            null  
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == nil)
        }

    }

    @Suite("Numeric Value Deserialization Tests")
    struct NumericTests {

        @Suite("Integer Deserialization Tests")
        struct IntegerTests {

            @Test("Normal Integer Deserialization")
            func normal() throws {
                let raw = #"""
                1231
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 1231)
            }

            @Test("Negative Integer Deserialization")
            func negative() throws {
                let raw = #"""
                -1231
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -1231)
            }

        }

        @Suite("Floating Point Deserialization Tests")
        struct DoubleTests {

            @Test("Normal Double Deserialization")
            func normal() throws {
                let raw = #"""
                123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 123.12)
            }

            @Test("Negative Double Deserialization")
            func negative() throws {
                let raw = #"""
                -123.12
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == -123.12)
            }

            @Test("Scientific Notation Deserialization")
            func exponent() throws {
                let raw = #"""
                1.3e4
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 13000.0)
            }

            @Test("Negative Scientific Notation Deserialization")
            func negativeExponent() throws {
                let raw = #"""
                1.2e-2
                """#
                let data = try #require(raw.data(using: .utf8))
                let json = try JSON(data)
                #expect(json == 0.012)
            }

        }

    }

    @Suite("String Value Deserialization Tests")
    struct StringTests {

        @Test("Normal String Deserialization")
        func normal() throws {
            let raw = #"""
            "abcdefghijklmnopqrstuvwxyz"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "abcdefghijklmnopqrstuvwxyz")
        }

        @Test("Escaped Quote Deserialization")
        func escapedQuote() throws {
            let raw = #"""
            "\""
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"""#)
        }

        @Test("Escaped Backslash Deserialization")
        func reverseSolidus() throws {
            let raw = #"""
            "\\"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == #"\"#)
        }

        @Test("Escaped Slash Deserialization")
        func solidus() throws {
            let raw = #"""
            "\/"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "/")
        }

        @Test("Escaped Backspace Deserialization")
        func backspace() throws {
            let raw = #"""
            "\b"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{0008}")
        }

        @Test("Escaped Formfeed Deserialization")
        func formfeed() throws {
            let raw = #"""
            "\f"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000C}")
        }

        @Test("Escaped Newline Deserialization")
        func newLine() throws {
            let raw = #"""
            "\n"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\n")
        }

        @Test("Escaped Carriage Return Deserialization")
        func carriageReturn() throws {
            let raw = #"""
            "\r"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "\u{000D}")
        }

        @Test("Escaped Unicode Scalar Deserialization")
        func unicodeEscape() throws {
            let raw = #"""
            "\u00E9"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "é")
        }

        @Test("Multi-lingual Plane External Escaped Unicode Scalar Deserialization")
        func bmpExternalEscape() throws {
            let raw = #"""
            "\uD83D\uDE97"
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == "🚗")
        }

    }

    @Suite("Array Deserialization Tests")
    struct ArrayTests {

        @Test("Empty Array Deserialization")
        func empty() throws {
            let raw = #"""
            []
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [])
        }

        @Test("Single Element Array Deserialization")
        func single() throws {
            let raw = #"""
            ["a"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a"])
        }

        @Test("Multiple Element Array Deserialization")
        func multiple() throws {
            let raw = #"""
            ["a","b","c"]
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["a", "b", "c"])
        }

        @Test("Array With Whitespace Deserialization")
        func withWhitespace() throws {
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
        }

    }

    @Suite("Object Deserialization Tests")
    struct ObjectTests {

        @Test("Empty Object Deserialization")
        func empty() throws {
            let raw = #"""
            {}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == [:])
        }

        @Test("Single Field Object Deserialization")
        func single() throws {
            let raw = #"""
            {"foo":true}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true])
        }

        @Test("Multiple Field Object Deserialization")
        func multiple() throws {
            let raw = #"""
            {"foo":true,"bar":null}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": nil])
        }

        @Test("Omit Null Keys")
        func omitNullKeys() throws {
            let raw = #"""
            {"foo":true,"bar":null}
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON.Deserializer.object(from: data, options: .omitNullKeys)
            #expect(json == ["foo": true])
        }

        @Test("Object With Whitespace Deserialization")
        func withWhitespace() throws {
            let raw = #"""
            {
                "foo": true,
                "bar": false
            }
            """#
            let data = try #require(raw.data(using: .utf8))
            let json = try JSON(data)
            #expect(json == ["foo": true, "bar": false])
        }

    }

    @Test("Complex JSON Object Deserialization")
    func complexObject() throws {
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
            "garply": null,
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
    }

    @Suite("Deserialization Errors")
    struct Errors {

        @Test("Unsupported byte order mark")
        func unsupportedBOM() throws {
            let data = Data([0xEF, 0xBB, 0xBF, 0x7B, 0x7D])
            #expect(throws: JSONDeserializationError.parseFailure("Invalid character")) {
                _ = try JSON.Deserializer.object(from: data, options: [])
            }
        }

        @Test("Empty JSON")
        func empty() throws {
            let raw = #"""

            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Unexpected end of input")) {
                _ = try JSON(data)
            }
        }

        @Test("Unexpected end of input")
        func endOfInput() throws {
            let raw = #"""
            [1, 2, 3
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Unexpected end of input")) {
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
            #expect(throws: JSONDeserializationError.parseFailure("Expected ',' or ']' in array")) {
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
            #expect(throws: JSONDeserializationError.parseFailure("Expected ',' or ']' in array")) {
                _ = try JSON(data)
            }
        }

        @Test("Leading zero")
        func leadingZero() throws {
            let raw = #"""
            {"foo": 0100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Invalid number")) {
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
            #expect(throws: JSONDeserializationError.parseFailure("Invalid string")) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid string escape")
        func invalidStringEscape() throws {
            let raw = #"""
            {"foo\x": 100}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Invalid escape sequence")) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid literal")
        func invalidLiteral() throws {
            let raw = #"""
            {"key": nul}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Invalid literal")) {
                _ = try JSON(data)
            }
        }

        @Test("Invalid unicode sequence")
        func invalidUnicodeSequence() throws {
            let raw = #"""
            {"key": "\uXYZ"}
            """#
            let data = try #require(raw.data(using: .utf8))
            #expect(throws: JSONDeserializationError.parseFailure("Invalid unicode sequence")) {
                _ = try JSON(data)
            }
        }

    }

}
