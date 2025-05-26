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

@Suite("Number Tests")
struct NumberTests {

    @Test("Convertible Initializers")
    func convertibleInitializers() {
        let rawInt = 42
        let int = JSON.Number(rawInt)
        #expect(int == .int(42))

        let rawDouble = 4.2
        let double = JSON.Number(rawDouble)
        #expect(double == .double(4.2))
    }

    @Test("Mismatched Equivalence")
    func mismatchedEquivalence() {
        #expect(JSON.Number.int(42) == JSON.Number.double(42.0))
        #expect(JSON.Number.double(42.0) == JSON.Number.int(42))
        #expect(JSON.Number.int(42) != JSON.Number.double(42.1))
        #expect(JSON.Number.double(42.1) != JSON.Number.int(42))
        #expect(JSON.Number.int(42) == JSON.Number.int(42))
        #expect(JSON.Number.int(42) != JSON.Number.int(43))
        #expect(JSON.Number.double(42.1) == JSON.Number.double(42.1))
        #expect(JSON.Number.double(42.1) != JSON.Number.double(42.2))

    }

    @Test("Literal Expressions")
    func literalExpressions() {
        let int: JSON.Number = 42
        #expect(int == .int(42))

        let double: JSON.Number = 4.2
        #expect(double == .double(4.2))
    }

    @Test("Untyped Number")
    func untypedNumber() throws {
        let int: JSON.Number = 12
        let untypedInt = try #require(int.untyped as? Int)
        #expect(untypedInt == 12)

        let double: JSON.Number = 12.34
        let untypedDouble = try #require(double.untyped as? Double)
        #expect(untypedDouble == 12.34)
    }

    @Test("Number Description")
    func numberDescription() {
        let int: JSON.Number = 12
        let intDescription = 12.description
        #expect(int.description == intDescription)

        let double: JSON.Number = 12.34
        let doubledescription = 12.34.description
        #expect(double.description == doubledescription)
    }

    @Test("Number isInt")
    func isInt() {
        let int: JSON.Number = 12
        #expect(int.isInt)

        let double: JSON.Number = 12.34
        #expect(!double.isInt)
    }

    @Test("Number isDouble")
    func isDouble() {
        let int: JSON.Number = 12
        #expect(!int.isDouble)

        let double: JSON.Number = 12.34
        #expect(double.isDouble)
    }

}
