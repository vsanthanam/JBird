// JBird
// BuilderTests.swift
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

import JBirdBuilders
import JBirdCore
import Testing

@Suite("Builder Tests")
struct BuilderTests {

    @Test("Empty Expression")
    func emptyExpression() {
        let json = JSON {}
        #expect(json == [:])
    }

    @Suite("Array Builder")
    struct ArrayBuilder {

        @Test("JSON Expression")
        func jsonExpression() {
            let json = JSON {
                .string("foo")
            }
            #expect(json == ["foo"])
        }

        @Test("Multiple JSON Elements")
        func multipleJSONElementsExpression() {
            let json = JSON {
                JSON.string("foo")
                JSON.null
            }
            #expect(json == ["foo", nil])
        }

        @Test("Convrtible Expression")
        func convertibleExpression() {
            let json = JSON {
                "foo"
                true
            }
            #expect(json == ["foo", true])
        }

        @Test("Array Expression")
        func arrayExpression() {
            let json = JSON {
                ["foo", true]
            }
            #expect(json == ["foo", true])
        }

        @Test("Inline Builder expression")
        func inlineBuilderExpression() {
            let json = JSON {
                "foo"
                true
                {
                    "key" => "value"
                }
            }
            #expect(json == ["foo", true, ["key": "value"]])
        }

        @Test("Conditional Expression", arguments: [(true, JSON(["foo"])), (false, JSON(["bar"]))])
        func conditionalExpression(useFoo: Bool, result: JSON) {
            let json = JSON {
                if useFoo {
                    "foo"
                } else {
                    "bar"
                }
            }
            #expect(json == result)
        }

        @Test("Optional Expression", arguments: [(true, JSON(["foo", "bar"])), (false, JSON(["bar"]))])
        func optionalExpression(useFoo: Bool, result: JSON) {
            let json = JSON {
                if useFoo {
                    "foo"
                }
                "bar"
            }
            #expect(json == result)
        }

        @Test("For Expression")
        func forExpression() {
            let elements = ["a", "b", "c"]
            let json = JSON {
                for element in elements {
                    element
                }
            }
            #expect(json == ["a", "b", "c"])
        }

    }

    @Suite("Object Builders")
    struct ObjectBuilder {

        @Test("Tuple Expression")
        func tupleExpression() {
            let json = JSON {
                "key" => "value"
            }
            #expect(json == ["key": "value"])
        }

        @Test("Dictionary Expression")
        func dictionaryExpression() {
            let json = JSON {
                [
                    "foo": JSON.bool(true),
                    "bar": JSON.bool(false)
                ]
            }
            #expect(json == ["foo": true, "bar": false])
        }

        @Test("Conditional Expression", arguments: [(true, JSON(["foo": true])), (false, JSON(["bar": false]))])
        func conditionalExpression(useFoo: Bool, result: JSON) {
            let json = JSON {
                if useFoo {
                    "foo" => true
                } else {
                    "bar" => false
                }
            }
            #expect(json == result)
        }

        @Test("Optional Expression", arguments: [(true, JSON(["foo": true, "bar": false])), (false, JSON(["bar": false]))])
        func optionalExpression(useFoo: Bool, result: JSON) {
            let json = JSON {
                if useFoo {
                    "foo" => true
                }
                "bar" => false
            }
            #expect(json == result)
        }

        @Test("For Expression")
        func forExpression() {
            let keys = ["a", "b", "c"]
            let json = JSON {
                for key in keys {
                    key => key
                }
            }
            #expect(json == ["a": "a", "b": "b", "c": "c"])
        }

        @Test(
            "Complex Builder",
            arguments: [
                (
                    true,
                    true,
                    ["tag1", "tag2", "tag3"],
                    JSON.object([
                        "id": 123,
                        "profile": [
                            "name": "Alice",
                            "email": "alice@example.com",
                            "preferences": [
                                "theme": "dark",
                                "notifications": true
                            ]
                        ],
                        "tags": ["tag1", "tag2", "tag3"]
                    ])
                ),
                (
                    true,
                    false,
                    ["tag1", "tag2", "tag3"],
                    JSON.object([
                        "id": 123,
                        "profile": [
                            "name": "Alice",
                            "email": "alice@example.com",
                            "preferences": [
                                "theme": "dark"
                            ]
                        ],
                        "tags": ["tag1", "tag2", "tag3"]
                    ])
                ),
                (
                    false,
                    false,
                    ["tag1", "tag2", "tag3"],
                    JSON.object([
                        "id": 123,
                        "profile": [
                            "name": "Alice",
                            "email": "alice@example.com",
                            "preferences": [
                                "theme": "light"
                            ]
                        ],
                        "tags": ["tag1", "tag2", "tag3"]
                    ])
                ),
                (
                    false,
                    true,
                    ["tag1", "tag2", "tag3"],
                    JSON.object([
                        "id": 123,
                        "profile": [
                            "name": "Alice",
                            "email": "alice@example.com",
                            "preferences": [
                                "theme": "light",
                                "notifications": true
                            ]
                        ],
                        "tags": ["tag1", "tag2", "tag3"]
                    ])
                )
            ]
        )

        func complexBuilder(darkTheme: Bool, hasNotifications: Bool, tags: [String], json: JSON) {
            let user = buildUser(darkTheme: darkTheme, hasNotifications: hasNotifications, tags: tags)
            #expect(user == json)
        }

        @JSON.Builder
        private func buildUser(darkTheme: Bool, hasNotifications: Bool, tags: [String]) -> JSON {
            "id" => 123
            "profile" => {
                "name" => "Alice"
                "email" => "alice@example.com"
                "preferences" => {
                    if darkTheme {
                        "theme" => "dark"
                    } else {
                        "theme" => "light"
                    }
                    if hasNotifications {
                        "notifications" => true
                    }
                }
            }
            "tags" => {
                for tag in tags {
                    tag
                }
            }
        }

    }

}
