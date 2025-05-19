// JBird
// ObjectBuilderTests.swift
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

@Suite("ObjectBuilder Tests")
struct ObjectBuilderTests {

    @Test("Tuple Expression")
    func tupleExpression() {
        let json = JSON {
            ("key", .string("value"))
        }
        #expect(json == ["key": "value"])
    }

    @Test("Array of Tuples Expression")
    func arrayOfTuplesExpression() {
        let json = JSON {
            [("foo", .literal(.true)), ("bar", .literal(.false))]
        }
        #expect(json == ["foo": true, "bar": false])
    }

    @Test("Dictionary Expression")
    func dictionaryExpression() {
        let json = JSON(fields: {
            [
                "foo": JSON.literal(.true),
                "bar": JSON.literal(.false)
            ]
        })
        #expect(json == ["foo": true, "bar": false])
    }

    @Test("Conditional Expression", arguments: [(true, JSON(["foo": true])), (false, JSON(["bar": false]))])
    func conditionalExpression(useFoo: Bool, result: JSON) {
        let json = JSON {
            if useFoo {
                ("foo", true)
            } else {
                ("bar", false)
            }
        }
        #expect(json == result)
    }

    @Test("Optional Expression", arguments: [(true, JSON(["foo": true, "bar": false])), (false, JSON(["bar": false]))])
    func optionalExpression(useFoo: Bool, result: JSON) {
        let json = JSON {
            if useFoo {
                ("foo", true)
            }
            ("bar", false)
        }
        #expect(json == result)
    }

    @Test("For Expression")
    func forExpression() {
        let keys = ["a", "b", "c"]
        let json = JSON {
            for key in keys {
                (key, key)
            }
        }
        #expect(json == ["a": "a", "b": "b", "c": "c"])
    }

}
