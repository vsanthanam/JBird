// JBird
// ArrayBuilderTests.swift
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
import JBirdBuilders
import JBirdCore
import Testing

@Suite("ArrayBuilder Tests")
struct ArrayBuilderTests {

    @Test("Element Expression")
    func tupleExpression() {
        let json = JSON {
            .string("foo")
        }
        #expect(json == ["foo"])
    }

    @Test("Array of Elements")
    func arrayOfTuplesExpression() {
        let json = JSON {
            JSON.string("foo")
            JSON.literal(.null)
        }
        #expect(json == ["foo", nil])
    }

    @Test("Encodable Expression")
    func dictionaryExpression() {
        let json = JSON {
            "foo"
            true
        }
        #expect(json == ["foo", true])
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
