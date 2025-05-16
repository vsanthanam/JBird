// JBird
// SerializerTests.swift
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

import JBird
import Testing

@Suite("Serializer Tests")
struct SerializerTests {

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
        }

        @Test("Multiple Field Object Serialization")
        func multipleFields() throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]
            let data = try JSON.Serializer.data(from: json, options: .sortedKeys)
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"baz":null,"foo":true}
            """#
            #expect(str == expected)
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
            let data = try JSON.Serializer.data(from: json, options: [.sortedKeys, .prettyPrinted])
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
            let data = try JSON.Serializer.data(from: json, options: [.sortedKeys, .omitNullKeys])
            let str = try #require(String(data: data, encoding: .utf8))
            let expected = #"""
            {"bar":false,"foo":true,"qux":{"b":[1,2,3]}}
            """#
            #expect(str == expected)
        }

    }

}
