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

    @Suite("Key Decoding Strategies")
    struct KeyDecodingStrategies {

        @Test("Standard Key Decoding Strategy")
        func standard() throws {

            struct Foo: Codable, Equatable {
                let someKey: String
                let someOtherKey: Int
                let FOOBar: Bool
            }

            let payload = #"""
            {
                "someKey": "foo",
                "someOtherKey": 12,
                "FOOBar": false
            }
            """#
            let data = Data(payload.utf8)
            let value = Foo(someKey: "foo", someOtherKey: 12, FOOBar: false)

            let foundation = try JSONDecoder().decode(Foo.self, from: data)
            let jbird = try JSON.Decoder().decode(Foo.self, from: data)
            #expect(foundation == value)
            #expect(jbird == value)
        }

        @Test("Snake Case Key Decoding Strategy")
        func snake_case() throws {

            struct Foo: Codable, Equatable {
                let someKey: String
                let someOtherKey: Int
                let fOOBar: Bool
            }

            let payload = #"""
            {
                "some_key": "foo",
                "some_other_key": 12,
                "f_o_o_bar": false
            }
            """#
            let data = Data(payload.utf8)
            let value = Foo(someKey: "foo", someOtherKey: 12, fOOBar: false)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.keyDecodingStrategy = .convertFromSnakeCase
            let foundation = try foundationDecoder.decode(Foo.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.keyDecodingStrategy = .convertFromSnakeCase
            let jbird = try jbirdDecoder.decode(Foo.self, from: data)

            #expect(foundation == value)
            #expect(jbird == value)
        }

        @Test("Custom Key Decoding Strategy")
        func customKey() throws {

            struct A: Codable, Equatable {
                var value: Int
                var b: B

                struct B: Codable, Equatable {
                    var value: Int
                    var c: C

                    struct C: Codable, Equatable {
                        var value: Int
                    }
                }
            }

            let payload = #"""
            {
                "a.value": 1,
                "b": {
                    "a.b.value": 2,
                    "c": {
                        "a.b.c.value": 3
                    }
                }
            }
            """#

            let data = Data(payload.utf8)

            struct AnyKey: CodingKey {
                var stringValue: String
                var intValue: Int?

                init?(stringValue: String) {
                    self.stringValue = stringValue
                    self.intValue = nil
                }

                init?(intValue: Int) {
                    self.stringValue = String(intValue)
                    self.intValue = intValue
                }
            }

            let foundationDecoder = JSONDecoder()
            foundationDecoder.keyDecodingStrategy = .custom { keys in
                let lastComponent = keys.last!.stringValue.split(separator: ".").last!
                return AnyKey(stringValue: String(lastComponent))!
            }
            let foundation = try foundationDecoder.decode(A.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.keyDecodingStrategy = .custom { keys in
                let lastComponent = keys.last!.stringValue.split(separator: ".").last!
                return AnyKey(stringValue: String(lastComponent))!
            }
            let jbird = try jbirdDecoder.decode(A.self, from: data)

            #expect(foundation == jbird)
        }

    }

    @Suite("Decode Non Conforming Float Value")
    struct NonConformingFloatingPointStrategy {

        @Suite("String Replace Strategy")
        struct StringReplaceStrategy {

            @Test("Decode Conforming")
            func decodeConforming() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                -4.1 
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble == jbirdDouble)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat == jbirdFloat)
            }

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
                [-1.2, "Infinity", "-Infinity"] 
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
                ["NaN", -1.2] 
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
                { "foo": -1.2, "bar": "Infinity", "baz": "-Infinity" }    
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
                { "foo": "NaN", "bar": 2.1 }   
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([String: Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([String: Double].self, from: serialized)
                #expect(foundation["foo"]!.isNaN)
                #expect(jbird["foo"]!.isNaN)
                #expect(foundation["bar"] == jbird["bar"])
            }

        }

    }

}
