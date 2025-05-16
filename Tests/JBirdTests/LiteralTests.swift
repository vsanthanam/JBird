// JBird
// LiteralTests.swift
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

@Suite("Literal Tests")
struct LiteralTests {

    @Test("Converible Initializers Tests")
    func convertibleInitializers() {
        let t = JSON.Literal(true)
        #expect(t == .true)

        let f = JSON.Literal(false)
        #expect(f == .false)
    }

    @Test("Bool Value Tests")
    func boolValueTests() throws {
        let `true` = JSON.Literal.true
        let `false` = JSON.Literal.false
        let null = JSON.Literal.null

        #expect(try `true`.boolValue == true)
        #expect(try `false`.boolValue == false)
        #expect(throws: JSONError.illegalBoolConversion) {
            _ = try null.boolValue
        }
    }

    @Test("isNull Tests")
    func isNullTests() {
        #expect(JSON.Literal.true.isNull == false)
        #expect(JSON.Literal.false.isNull == false)
        #expect(JSON.Literal.null.isNull == true)
    }

    @Test("Literal Expression Tests")
    func nilExpression() {
        let `true`: JSON.Literal = true
        let `false`: JSON.Literal = false
        let null: JSON.Literal = nil

        #expect(`true` == .true)
        #expect(`false` == .false)
        #expect(null == .null)
    }

}
