// JBird
// JSONLiteralConvertibleTests.swift
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

import JBirdCore
import Testing

@Suite("JSONLiteralConvertible Tests")
struct JSONLiteralConvertibleTests {

    @Test("Deprecated Initializer", arguments: [JSON.Literal.true, JSON.Literal.false, JSON.Literal.null])
    @available(*, deprecated)
    func deprecatedInit(_ literal: JSON.Literal) {
        struct Test: JSONLiteralConvertible {
            let jsonLiteral: JSON.Literal
        }
        let test = Test(jsonLiteral: literal)
        let fromConvertible = JSON.Literal(test)
        #expect(fromConvertible == literal)
    }

    @Test("Bool True Convertible")
    @available(*, deprecated)
    func boolTrue() {
        let x = true
        #expect(x.jsonLiteral == .true)
    }

    @Test("Bool False Convertible")
    @available(*, deprecated)
    func boolFalse() {
        let x = false
        #expect(x.jsonLiteral == .false)
    }

}
