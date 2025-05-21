// JBird
// NumericTests.swift
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

@Suite("Numeric Tests")
struct NumericTests {

    @Test("Convertible Initializers")
    func convertibleInitializers() {
        let rawInt = 42
        let int = JSON.Numeric(rawInt)
        #expect(int == .int(42))

        let rawDouble = 4.2
        let double = JSON.Numeric(rawDouble)
        #expect(double == .double(4.2))
    }

    @Test("Mismatched Equivalence")
    func mismatchedEquivalence() {
        #expect(JSON.Numeric.int(42) == JSON.Numeric.double(42.0))
        #expect(JSON.Numeric.double(42.0) == JSON.Numeric.int(42))
        #expect(JSON.Numeric.int(42) != JSON.Numeric.double(42.1))
        #expect(JSON.Numeric.double(42.1) != JSON.Numeric.int(42))
        #expect(JSON.Numeric.int(42) == JSON.Numeric.int(42))
        #expect(JSON.Numeric.int(42) != JSON.Numeric.int(43))
        #expect(JSON.Numeric.double(42.1) == JSON.Numeric.double(42.1))
        #expect(JSON.Numeric.double(42.1) != JSON.Numeric.double(42.2))

    }

    @Test("Literal Expressions")
    func literalExpressions() {
        let int: JSON.Numeric = 42
        #expect(int == .int(42))

        let double: JSON.Numeric = 4.2
        #expect(double == .double(4.2))
    }
}
