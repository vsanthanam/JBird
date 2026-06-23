// JBird
// NumberTests.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
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

@Suite("Number Tests")
struct NumberTests {

    @Test("Convertible Initializers")
    func convertibleInitializers() {
        let rawInt = 42
        let int = JSON.Number(rawInt)
        #expect(int == .init(.int(42)))

        let rawDouble = 4.2
        let double = JSON.Number(rawDouble)
        #expect(double == .init(.double(4.2)))
    }

    @Test("Mismatched Equivalence")
    func mismatchedEquivalence() {
        #expect(JSON.Number(42) == JSON.Number(42.0))
        #expect(JSON.Number(42.0) == JSON.Number(42))
        #expect(JSON.Number(42) != JSON.Number(42.1))
        #expect(JSON.Number(42.1) != JSON.Number(42))
        #expect(JSON.Number(42) == JSON.Number(42))
        #expect(JSON.Number(42) != JSON.Number(43))
        #expect(JSON.Number(42.1) == JSON.Number(42.1))
        #expect(JSON.Number(42.1) != JSON.Number(42.2))

    }

    @Test("Literal Expressions")
    func literalExpressions() {
        let int: JSON.Number = 42
        #expect(int == .init(.int(42)))

        let double: JSON.Number = 4.2
        #expect(double == .init(.double(4.2)))
    }

    @Test("Unboxed Number")
    func unboxedNumber() throws {
        let int: JSON.Number = 12
        let untypedInt = try #require(int.unboxed().base as? Int)
        #expect(untypedInt == 12)

        let double: JSON.Number = 12.34
        let untypedDouble = try #require(double.unboxed().base as? Double)
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

    @Test("Number isInteger")
    func isInteger() {
        let int: JSON.Number = 12
        #expect(int.isInteger)

        let double: JSON.Number = 12.34
        #expect(!double.isInteger)
    }

    @Test("Number isFloatingPoint")
    func isFloatingPoint() {
        let int: JSON.Number = 12
        #expect(!int.isFloatingPoint)

        let double: JSON.Number = 12.34
        #expect(double.isFloatingPoint)
    }

    @Test("Number Is Finite")
    func isFinite() {
        let finite = JSON.Number(1.2)
        let inf = JSON.Number(Double.infinity)
        let negInf = JSON.Number(-Double.infinity)
        let int = JSON.Number(42)
        #expect(finite.isFinite)
        #expect(!inf.isFinite)
        #expect(!negInf.isInteger)
        #expect(int.isFinite)
    }

    @Test("Number Is Infinite")
    func isInfinite() {
        let finite = JSON.Number(1.2)
        let inf = JSON.Number(Double.infinity)
        let negInf = JSON.Number(-Double.infinity)
        let int = JSON.Number(42)
        #expect(!finite.isInfinite)
        #expect(inf.isInfinite)
        #expect(negInf.isInfinite)
        #expect(!int.isInfinite)
    }

    @Test("Number Is NaN")
    func isNaN() {
        let nan = JSON.Number(Double.nan)
        let finite = JSON.Number(1.2)
        let int = JSON.Number(42)
        #expect(nan.isNaN)
        #expect(!finite.isNaN)
        #expect(!int.isNaN)
    }

    @Test("Number Zero")
    func zero() {
        let zero = JSON.Number.zero
        #expect(zero == JSON.Number(0))
        #expect(zero.isInteger)
        #expect(!zero.isNaN)
        #expect(zero.isFinite)
        #expect(!zero.isInfinite)
        #expect(!zero.isNonConformingFloatingPointValue)
    }

    @Test("Number NaN Constant")
    func nanConstant() {
        let nan = JSON.Number.nan
        #expect(nan.isNaN)
        #expect(nan.isFloatingPoint)
        #expect(!nan.isFinite)
        #expect(!nan.isInfinite)
        #expect(nan.isNonConformingFloatingPointValue)
    }

    @Test("Number Infinity Constant")
    func infinityConstant() {
        let inf = JSON.Number.infinity
        #expect(inf.isInfinite)
        #expect(inf.isFloatingPoint)
        #expect(!inf.isFinite)
        #expect(!inf.isNaN)
        #expect(inf.isNonConformingFloatingPointValue)
    }

    @Test("Is Non-Conforming Floating Point Value")
    func isNonConformingFloatingPointValue() {
        #expect(JSON.Number(Double.nan).isNonConformingFloatingPointValue)
        #expect(JSON.Number(Double.infinity).isNonConformingFloatingPointValue)
        #expect(JSON.Number(-Double.infinity).isNonConformingFloatingPointValue)
        #expect(!JSON.Number(1.5).isNonConformingFloatingPointValue)
        #expect(!JSON.Number(0).isNonConformingFloatingPointValue)
        #expect(!JSON.Number(42).isNonConformingFloatingPointValue)
    }

    @Test("Prefix Negation Operator")
    func prefixNegation() {
        let int: JSON.Number = 42
        let negatedInt = -int
        #expect(negatedInt == JSON.Number(-42))
        #expect(negatedInt.isInteger)

        let double: JSON.Number = 3.14
        let negatedDouble = -double
        #expect(negatedDouble == JSON.Number(-3.14))
        #expect(negatedDouble.isFloatingPoint)

        let zero: JSON.Number = 0
        let negatedZero = -zero
        #expect(negatedZero == JSON.Number(0))

        let inf = JSON.Number.infinity
        let negatedInf = -inf
        #expect(negatedInf == JSON.Number(-Double.infinity))
        #expect(negatedInf.isInfinite)
    }

    @Suite("Codable Tests")
    struct CodableTests {

        private let encoder = JSONEncoder()

        private let decoder = JSONDecoder()

        private func roundTrip(_ number: JSON.Number) throws -> JSON.Number {
            let data = try encoder.encode(number)
            return try decoder.decode(JSON.Number.self, from: data)
        }

        // MARK: - Encoding

        @Test("Encode Integer")
        func encodeInteger() throws {
            let data = try encoder.encode(JSON.Number(42))
            #expect(String(data: data, encoding: .utf8) == "42")
        }

        @Test("Encode Negative Integer")
        func encodeNegativeInteger() throws {
            let data = try encoder.encode(JSON.Number(-42))
            #expect(String(data: data, encoding: .utf8) == "-42")
        }

        @Test("Encode Double")
        func encodeDouble() throws {
            let data = try encoder.encode(JSON.Number(4.5))
            #expect(String(data: data, encoding: .utf8) == "4.5")
        }

        @Test("Encode Zero")
        func encodeZero() throws {
            let data = try encoder.encode(JSON.Number.zero)
            #expect(String(data: data, encoding: .utf8) == "0")
        }

        // MARK: - Decoding

        @Test("Decode Integer")
        func decodeInteger() throws {
            let number = try decoder.decode(JSON.Number.self, from: Data("42".utf8))
            #expect(number == JSON.Number(42))
            #expect(number.isInteger)
        }

        @Test("Decode Negative Integer")
        func decodeNegativeInteger() throws {
            let number = try decoder.decode(JSON.Number.self, from: Data("-42".utf8))
            #expect(number == JSON.Number(-42))
            #expect(number.isInteger)
        }

        @Test("Decode Double")
        func decodeDouble() throws {
            let number = try decoder.decode(JSON.Number.self, from: Data("4.5".utf8))
            #expect(number == JSON.Number(4.5))
            #expect(number.isFloatingPoint)
        }

        @Test("Decode Double With Exponent")
        func decodeDoubleWithExponent() throws {
            // `1.5e3` is the integral value 1500. Because the decoder tries `Int`
            // first and Foundation happily decodes the integral exponent form as an
            // `Int`, the result is stored as an integer.
            let number = try decoder.decode(JSON.Number.self, from: Data("1.5e3".utf8))
            #expect(number == JSON.Number(1500))
            #expect(number.isInteger)
        }

        @Test("Decode Non-Integral Double With Exponent")
        func decodeNonIntegralDoubleWithExponent() throws {
            let number = try decoder.decode(JSON.Number.self, from: Data("1.25e2".utf8))
            #expect(number == JSON.Number(125.0))
        }

        @Test("Decode Malformed Number Throws")
        func decodeMalformedThrows() {
            #expect(throws: DecodingError.self) {
                _ = try decoder.decode(JSON.Number.self, from: Data("\"not a number\"".utf8))
            }
        }

        // MARK: - Round Trips

        @Test("Round Trip Integer")
        func roundTripInteger() throws {
            let number = JSON.Number(123_456)
            #expect(try roundTrip(number) == number)
            #expect(try roundTrip(number).isInteger)
        }

        @Test("Round Trip Double")
        func roundTripDouble() throws {
            let number = JSON.Number(3.14159)
            #expect(try roundTrip(number) == number)
            #expect(try roundTrip(number).isFloatingPoint)
        }

        @Test("Round Trip Preserves Integer")
        func roundTripPreservesInteger() throws {
            // An integer stays an integer through a round trip.
            let integer = try roundTrip(JSON.Number(42))
            #expect(integer.isInteger)
        }

        @Test("Round Trip Preserves Fractional Double")
        func roundTripPreservesFractionalDouble() throws {
            // A double with a fractional component stays a double.
            let double = try roundTrip(JSON.Number(42.5))
            #expect(double.isFloatingPoint)
        }

        @Test("Integral Double Round Trips To Integer")
        func integralDoubleRoundTripsToInteger() throws {
            // JSON has no notion of "42.0" vs "42"; an integral double serializes
            // as `42` and therefore decodes back as an integer. The values remain
            // equal, but the backing storage collapses to the integer form.
            let double = try roundTrip(JSON.Number(42.0))
            #expect(double == JSON.Number(42))
            #expect(double.isInteger)
        }

    }
}
