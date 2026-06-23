// JBird
// StringInterpolationTests.swift
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

import JBirdCore
import Testing

@Suite("String Interpolation Tests")
struct StringInterpolationTests {

    @Test(
        "Interpolates a value's JSON representation",
        arguments: [
            ("integer", 42, "42"),
            ("double", 4.5, "4.5"),
            ("bool", true, "true"),
            ("string is quoted", "hi", "\"hi\""),
            ("null", JSON.null, "null"),
            ("array", [1, 2, 3], "[1,2,3]"),
            ("object", ["a": 1], "{\"a\":1}"),
        ] as [(name: String, value: JSON, expected: String)]
    )
    func interpolates(name: String, value: JSON, expected: String) {
        #expect(expected == "\(json: value)")
    }

    @Test("Interpolates within a larger string literal")
    func embedded() {
        let value: JSON = ["x": [1, 2]]
        #expect("the value is \(json: value)!" == "the value is {\"x\":[1,2]}!")
    }

    @Test("Accepts any JSONConvertible value, not just JSON")
    func convertible() {
        // The parameter is `some JSONConvertible`, so Swift values work directly.
        #expect("\(json: 7)" == "7")
        #expect("\(json: "raw")" == "\"raw\"")
        #expect("\(json: [true, false])" == "[true,false]")
    }

    @Test(
        "Serializes non-conforming floating-point values as strings",
        arguments: [
            (Double.nan, "\"NaN\""),
            (Double.infinity, "\"Infinity\""),
            (-Double.infinity, "\"-Infinity\""),
        ] as [(value: Double, expected: String)]
    )
    func nonConformingFloats(value: Double, expected: String) {
        #expect(expected == "\(json: value)")
    }

    @Test("The options overload applies serialization options")
    func withOptions() throws {
        let value: JSON = ["b": 2, "a": 1]
        let pretty = try "\(json: value, options: [.prettyPrinted, .sortedKeys, .fragmentsAllowed])"
        #expect(pretty == "{\n  \"a\" : 1,\n  \"b\" : 2\n}")
    }

    @Test("The options overload interpolates within a larger literal")
    func withOptionsEmbedded() throws {
        let result = try "value: \(json: [1, 2], options: [.fragmentsAllowed])."
        #expect(result == "value: [1,2].")
    }

    @Test("The options overload throws on non-conforming floats when not allowed")
    func withOptionsThrows() {
        #expect(throws: (any Error).self) {
            _ = try "\(json: Double.nan, options: [.fragmentsAllowed])"
        }
    }
}
