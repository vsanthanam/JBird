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
@testable import JBirdCore
import Testing

struct SerializationTests {

    @Test
    func `Fragment Serialization Rules`() throws {
        let fragment: JSON = true
        let data = try fragment.serialize()
        let str = try #require(String(data: data, encoding: .utf8))
        let expected = #"""
        true
        """#
        #expect(str == expected)
        #expect(throws: JSON.SerializationError.illegalFragment) {
            try JSON.data(from: fragment, options: [])
        }
    }

    @Test
    func `Byte Order Mark Serialzation`() throws {
        let json: JSON = true
        let data = try JSON.data(from: json, options: .default)
        #expect(data == Data([0x74, 0x72, 0x75, 0x65]))
        let withBom = try JSON.data(from: json, options: .default.union(.includeByteOrderMark))
        #expect(withBom == Data([0xEF, 0xBB, 0xBF, 0x74, 0x72, 0x75, 0x65]))
    }

    @Test
    func `Omit Single Null Key`() async throws {
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

    @Test
    func `Omit Multiple Null Keys`() async throws {
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

    struct LiteralTests {

        @Test
        func `true Serialization`() async throws {
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

        @Test
        func `false Serialization`() async throws {
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

        @Test
        func `null Serialization`() async throws {
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
            #expect(throws: JSON.SerializationError.illegalFragment) {
                try JSON.data(from: json, options: [.omitNullValues, .fragmentsAllowed])
            }
        }

    }

    enum NumberTests {

        struct IntegerTests {

            @Test
            func `Normal Integer Serialization`() async throws {
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

            @Test
            func `Negative Integer Serialization`() async throws {
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

        struct DoubleTests {

            @Test
            func `Normal Double Serialization`() async throws {
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

            @Test
            func `Negative Double Serialization`() async throws {
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

            @Test
            func `Zero Double Serialization`() async throws {
                let json: JSON = 0.0
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                0.0
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test
            func `Whole Double Serialization`() async throws {
                let json: JSON = 31.0
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                31.0
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test
            func `Scientific Double Small Serialization`() async throws {
                let json: JSON = 0.00000000123
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                1.23e-09
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            @Test
            func `Scientific Double Large Serialization`() async throws {
                let json = JSON(Double(90_000_234_123_441_234_123))
                let data = try json.serialize()
                let str = try #require(String(data: data, encoding: .utf8))
                let expected = #"""
                9.000023412344124e+19
                """#
                #expect(str == expected)
                let stringified = try json.stringify()
                #expect(stringified == expected)
                let asyncData = try await JSON.serialize(json)
                #expect(asyncData == data)
                let asyncString = try await JSON.stringify(json)
                #expect(asyncString == expected)
            }

            struct NonConforming {

                @Test
                func `Standard Behavior`() async throws {
                    let nan = JSON(Double.nan)
                    let inf = JSON(Double.infinity)
                    let negInf = JSON(-Double.infinity)
                    #expect(throws: JSON.SerializationError.invalidFloat) {
                        try nan.serialize()
                    }
                    await #expect(throws: JSON.SerializationError.invalidFloat) {
                        try await JSON.serialize(nan)
                    }
                    #expect(throws: JSON.SerializationError.invalidFloat) {
                        try inf.serialize()
                    }
                    await #expect(throws: JSON.SerializationError.invalidFloat) {
                        try await JSON.serialize(inf)
                    }
                    #expect(throws: JSON.SerializationError.invalidFloat) {
                        try negInf.serialize()
                    }
                    await #expect(throws: JSON.SerializationError.invalidFloat) {
                        try await JSON.serialize(negInf)
                    }
                }

                struct AllowNonConforming {

                    @Test
                    func `Allowed NaN`() throws {
                        let json = JSON(Double.nan)
                        let data = try JSON.data(from: json, options: [.fragmentsAllowed, .allowNonConformingFloatingPointValues])
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        "NaN"
                        """#
                        #expect(str == expected)
                    }

                    @Test
                    func `Allowed Positive Infinity`() throws {
                        let json = JSON(Double.infinity)
                        let data = try JSON.data(from: json, options: [.fragmentsAllowed, .allowNonConformingFloatingPointValues])
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        "Infinity"
                        """#
                        #expect(str == expected)
                    }

                    @Test
                    func `Allowed Negative Infinity`() throws {
                        let json = JSON(-Double.infinity)
                        let data = try JSON.data(from: json, options: [.fragmentsAllowed, .allowNonConformingFloatingPointValues])
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        "-Infinity"
                        """#
                        #expect(str == expected)
                    }

                }

                struct NullifyNonConformingStandard {

                    @Test
                    func nan() throws {
                        let json = JSON(Double.nan)
                        let data = try JSON.data(
                            from: json,
                            options: [
                                .fragmentsAllowed,
                                .allowNonConformingFloatingPointValues,
                                .nullifyNonConformingFloatingPointValues
                            ]
                        )
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        null
                        """#
                        #expect(str == expected)
                    }

                    @Test
                    func `positive infinity`() throws {
                        let json = JSON(Double.infinity)
                        let data = try JSON.data(
                            from: json,
                            options: [
                                .fragmentsAllowed,
                                .allowNonConformingFloatingPointValues,
                                .nullifyNonConformingFloatingPointValues
                            ]
                        )
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        null
                        """#
                        #expect(str == expected)
                    }

                    @Test
                    func `negative infinity`() throws {
                        let json = JSON(-Double.infinity)
                        let data = try JSON.data(
                            from: json,
                            options: [
                                .fragmentsAllowed,
                                .allowNonConformingFloatingPointValues,
                                .nullifyNonConformingFloatingPointValues
                            ]
                        )
                        let str = try #require(String(data: data, encoding: .utf8))
                        let expected = #"""
                        null
                        """#
                        #expect(str == expected)
                    }

                }

            }

            struct TruncatingWholeNumbers {

                func zero() throws {
                    let json: JSON = 0.0
                    let data = try JSON.data(from: json, options: [.fragmentsAllowed, .truncateWholeFloatingPointValues])
                    let str = try #require(String(data: data, encoding: .utf8))
                    let expected = #"""
                    0
                    """#
                    #expect(str == expected)
                }

                func positive() throws {
                    let json: JSON = 5.0
                    let data = try JSON.data(from: json, options: [.fragmentsAllowed, .truncateWholeFloatingPointValues])
                    let str = try #require(String(data: data, encoding: .utf8))
                    let expected = #"""
                    5
                    """#
                    #expect(str == expected)
                }

                func negative() throws {
                    let json: JSON = -75.0
                    let data = try JSON.data(from: json, options: [.fragmentsAllowed, .truncateWholeFloatingPointValues])
                    let str = try #require(String(data: data, encoding: .utf8))
                    let expected = #"""
                    -7
                    """#
                    #expect(str == expected)
                }

            }

        }

    }

    struct ArrayTests {

        @Test
        func `Empty Array`() async throws {
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

    struct ObjectTests {

        @Test
        func `Empty Object Serialization`() async throws {
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

        @Test
        func `Single Field Object Serialization`() async throws {
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

        @Test
        func `Multiple Field Object Serialization`() async throws {
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

        @Test
        func `Pretty Printed Object Serialization`() async throws {
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
              "bar" : false,
              "baz" : null,
              "foo" : true,
              "qux" : {
                "a" : null,
                "b" : [
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

        @Test
        func `Object Serialization Without Null Keys`() async throws {
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

        @Test
        func `Object Serialization Without Null Values`() async throws {
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

    struct StringTests {

        @Test
        func `Normal String Serialization`() async throws {
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

        @Test
        func `Escaped Quite Serialization`() async throws {
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

        @Test
        func `Escaped Backslash Serialization`() async throws {
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

        @Test
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

        @Test
        func `Escaped Slash Serialization`() async throws {
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

        @Test
        func `Regular Slash Serialization`() async throws {
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

        @Test
        func `Escaped Tab Serialization`() async throws {
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

        @Test
        func `Escaped Formfeed Serialization`() async throws {
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

        @Test
        func `Escaped Newline Serialization`() async throws {
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

        @Test
        func `Escaped Carriage Return Serialization`() async throws {
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

        @Test
        func `Escaped Control Character Serialization`() async throws {
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

        @Test
        func `Escaped Non-ASCII Character Serialization`() async throws {
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

        @Test
        func `Regular Non-ASCII Character Serialization`() async throws {
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

        @Test
        func `Escaped Basic Multilingual Plane External Character Serialization`() async throws {
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

        @Test
        func `Escaped Basic Multilingual Plane External Character Serialization due to ASCII`() async throws {
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

        @Test
        func `Regular Basic Multilingual Plane External Character Serialization`() async throws {
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
