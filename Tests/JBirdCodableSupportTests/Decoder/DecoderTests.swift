// JBird
// DecoderTests.swift
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
import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Decoder Tests")
struct DecoderTests {

    @Suite("Decode Non Conforming Float Value")
    struct NonConformingFloats {

        @Suite("String Replace Strategy")
        struct StringReplaceStrategy {

            @Test("Decode Positive Infinity")
            func decodePositiveInfinity() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "Infinity"  
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble == jbirdDouble)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat == jbirdFloat)
            }

            @Test("Decode Negative Infinity")
            func decodeNegativeInfinity() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "-Infinity"  
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble == jbirdDouble)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat == jbirdFloat)
            }

            @Test("Decode NaN")
            func decodeNan() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "NaN" 
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble.isNaN)
                #expect(jbirdDouble.isNaN)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat.isNaN)
                #expect(jbirdFloat.isNaN)
            }

            @Test("Decode Infinity Unkeyed")
            func decodeInfinityUnkeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                ["Infinity", "-Infinity"] 
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([Double].self, from: serialized)
                #expect(foundation == jbird)
            }

            @Test("Decode NaN Unkeyed")
            func decodeNanUnkeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                ["NaN"] 
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([Double].self, from: serialized)
                #expect(foundation[0].isNaN)
                #expect(jbird[0].isNaN)
            }

            @Test("Decode Infinity Keyed")
            func decodeInfinityKeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                { "bar": "Infinity", "baz": "-Infinity" }    
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([String: Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([String: Double].self, from: serialized)
                #expect(foundation == jbird)
            }

            @Test("Decode NaN Keyed")
            func decodeNanKeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                { "foo": "NaN" }   
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([String: Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([String: Double].self, from: serialized)
                #expect(foundation["foo"]!.isNaN)
                #expect(jbird["foo"]!.isNaN)
            }

        }

    }

}
