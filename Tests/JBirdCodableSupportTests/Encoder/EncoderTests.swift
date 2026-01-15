// JBird
// EncoderTests.swift
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

@Suite("Encoder Tests")
struct EncoderTests {

    @Suite("Encode Root Dates")
    struct DateTests {

        @Test("Encode Date No Strategy")
        func encodeDate() throws {
            let value = Date.now
            let foundation = try JSONEncoder().encode(value)
            let jbird = try JSON.Encoder().encode(value)
            #expect(foundation == jbird)
        }

        @Test("Encode Date with ISO8601 Strategy")
        func encodeDate8601Strategy() throws {
            let value = Date.now

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .iso8601
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .iso8601
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Encode Date with Formatter Strategy")
        func encodeDateFormatterStrategy() throws {
            let value = Date.now
            let formatter = DateFormatter()

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .formatted(formatter)
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .formatted(formatter)
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Encode Date with Custom Stratetgy")
        func encodeDateFormatter() throws {
            let value = Date.now
            let formatter = DateFormatter()

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .formatted(formatter)
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .formatted(formatter)
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Encode Date with Seconds Since 1970 Strategy")
        func encodeDateSecondsSince1970strategy() throws {
            let value = Date.now

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .secondsSince1970
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .secondsSince1970
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Encode Date with Milliseconds Since 1970 Strategy")
        func encodeDateMillisecondsSince1970strategy() throws {
            let value = Date.now

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .millisecondsSince1970
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .millisecondsSince1970
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Encode Date with Custom Strategy")
        func encodeDateCustomstrategy() throws {
            let value = Date.now

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dateEncodingStrategy = .custom { (date, encoder) in try date.description.encode(to: encoder) }
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dateEncodingStrategy = .custom { (date, encoder) in try date.description.encode(to: encoder) }
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

    }

    @Suite("Encode Root Data")
    struct DataTests {

        @Test("Encode Data No Strategy")
        func noStrategy() throws {
            let data = Data("FooBarBaz".utf8)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dataEncodingStrategy = .deferredToData
            let foundation = try foundationEncoder.encode(data)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dataEncodingStrategy = .deferredToData
            let jbird = try jbirdEncoder.encode(data)

            #expect(foundation == jbird)
        }

        @Test("Encode Data Base64")
        func base64() throws {
            let data = Data("FooBarBaz".utf8)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dataEncodingStrategy = .base64
            let foundation = try foundationEncoder.encode(data)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dataEncodingStrategy = .base64
            let jbird = try jbirdEncoder.encode(data)

            #expect(foundation == jbird)
        }

        @Test("Encode Data Custom Strategy")
        func custom() async throws {
            let data = Data("FooBarBaz".utf8)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.dataEncodingStrategy = .custom { (data, encoder) in try data.encode(to: encoder) }
            let foundation = try foundationEncoder.encode(data)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.dataEncodingStrategy = .custom { (data, encoder) in try data.encode(to: encoder) }
            let jbird = try jbirdEncoder.encode(data)

            #expect(foundation == jbird)
        }

    }

    @Suite("Key Encoding Strategies")
    struct KeyEncodingStrategies {

        @Test("Snake Case Key Strategy")
        func snakeCaseKeyStrategy() throws {
            struct Foo: Codable {
                let someKey: String
                let someOtherKey: Int
                let FOOBar: Bool
            }

            let value = Foo(someKey: "foo", someOtherKey: 12, FOOBar: false)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .convertToSnakeCase
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .convertToSnakeCase
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Default Key Strategy")
        func defaultKeyStrategy() throws {
            struct Foo: Codable {
                let someKey: String
                let someOtherKey: Int
                let FOOBar: Bool
            }

            let value = Foo(someKey: "foo", someOtherKey: 12, FOOBar: false)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .useDefaultKeys
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .useDefaultKeys
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Custom Key Strategy")
        func customKeyStrategy() throws {
            struct A: Codable {
                var value: Int
                var b: B

                struct B: Codable {
                    var value: Int
                    var c: C

                    struct C: Codable {
                        var value: Int
                    }
                }
            }

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

            let a = A(value: 1, b: .init(value: 2, c: .init(value: 3)))

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .custom { keys in
                if keys.last!.stringValue == "value" {
                    AnyKey(stringValue: "a." + keys.map { key in
                        key.stringValue
                    }.joined(separator: "."))!
                } else {
                    keys.last!
                }
            }
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(a)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .custom { keys in
                if keys.last!.stringValue == "value" {
                    AnyKey(stringValue: "a." + keys.map { key in
                        key.stringValue
                    }.joined(separator: "."))!
                } else {
                    keys.last!
                }
            }
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(a)

            #expect(foundation == jbird)
        }

        @Test("Custom Key Strategy Nested Encodables")
        func customKeyStrategyNestedEncodables() throws {
            struct Container: Codable {
                let foo: String
                let nested: Nested
            }

            struct Nested: Codable {
                let barValue: Int
            }

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

            let value = Container(foo: "bar", nested: .init(barValue: 42))

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .custom { keys in
                AnyKey(stringValue: "prefix_" + keys.map(\.stringValue).joined(separator: "_"))!
            }
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .custom { keys in
                AnyKey(stringValue: "prefix_" + keys.map(\.stringValue).joined(separator: "_"))!
            }
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

        @Test("Custom Key Strategy Nested Containers")
        func customKeyStrategyNestedContainers() throws {
            struct Manual: Encodable {
                let value: Int

                enum CodingKeys: String, CodingKey {
                    case payload
                }

                enum PayloadKeys: String, CodingKey {
                    case innerValue
                }

                func encode(to encoder: any Swift.Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    var payload = container.nestedContainer(keyedBy: PayloadKeys.self, forKey: .payload)
                    try payload.encode(value, forKey: .innerValue)
                }
            }

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

            let value = Manual(value: 7)

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .custom { keys in
                AnyKey(stringValue: "prefix_" + keys.map(\.stringValue).joined(separator: "_"))!
            }
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .custom { keys in
                AnyKey(stringValue: "prefix_" + keys.map(\.stringValue).joined(separator: "_"))!
            }
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value)

            #expect(foundation == jbird)
        }

    }

    @Suite("Non Conforming Float Strategies")
    struct NonConformingFloatStrategies {

        @Test("No Strategy")
        func noStrategy() throws {
            let conformingDouble = 3.14
            let conformingFloat: Float = -102_094.1239
            let nanDouble = Double.nan
            let positiveInfinityDouble = Double.infinity
            let negativeInfinityDouble = -Double.infinity
            let nanFloat = Float.nan
            let positiveInfinityFloat = Float.infinity
            let negativeInfinityFloat = -Float.infinity

            let foundationDouble = try JSONEncoder().encode(conformingDouble)
            let jbirdDouble = try JSON.Encoder().encode(conformingDouble)
            #expect(foundationDouble == jbirdDouble)

            let foundationFloat = try JSONEncoder().encode(conformingFloat)
            let jbirdFloat = try JSON.Encoder().encode(conformingFloat)
            #expect(foundationFloat == jbirdFloat)

            #expect {
                try JSONEncoder().encode(nanDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double.isNaN)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(nanDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double.isNaN)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSONEncoder().encode(positiveInfinityDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double == .infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(positiveInfinityDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double == .infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSONEncoder().encode(negativeInfinityDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double == -.infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(negativeInfinityDouble)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let double = try #require(value as? Double)
                #expect(double == -.infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSONEncoder().encode(nanFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float.isNaN)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(nanFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float.isNaN)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSONEncoder().encode(positiveInfinityFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float == .infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(positiveInfinityFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float == .infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSONEncoder().encode(negativeInfinityFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float == -.infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }

            #expect {
                try JSON.Encoder().encode(negativeInfinityFloat)
            } throws: { error in
                let error = try #require(error as? EncodingError)
                guard case let .invalidValue(value, context) = error else {
                    return false
                }
                let float = try #require(value as? Float)
                #expect(float == -.infinity)
                #expect(context.codingPath.isEmpty)
                return true
            }
        }

        @Test("String Replace Strategy")
        func stringReplaceStrategy() throws {
            let conformingDouble = 3.14
            let conformingFloat: Float = -102_094.1239

            let nanDouble = Double.nan
            let positiveInfinityDouble = Double.infinity
            let negativeInfinityDouble = -Double.infinity

            let nanFloat = Float.nan
            let positiveInfinityFloat = Float.infinity
            let negativeInfinityFloat = -Float.infinity

            let foundationEncoder = JSONEncoder()
            foundationEncoder.nonConformingFloatEncodingStrategy = .convertToString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.nonConformingFloatEncodingStrategy = .convertToString()

            let conformingDoubleFoundation = try foundationEncoder.encode(conformingDouble)
            let conformingDoubleJBird = try jbirdEncoder.encode(conformingDouble)
            #expect(conformingDoubleFoundation == conformingDoubleJBird)

            let conformingFloatFoundation = try foundationEncoder.encode(conformingFloat)
            let conformingFloatJBird = try jbirdEncoder.encode(conformingFloat)
            #expect(conformingFloatFoundation == conformingFloatJBird)

            let nanDoubleFoundation = try foundationEncoder.encode(nanDouble)
            let nanDoubleJBird = try jbirdEncoder.encode(nanDouble)
            #expect(nanDoubleFoundation == nanDoubleJBird)

            let positiveInfinityDoubleFoundation = try foundationEncoder.encode(positiveInfinityDouble)
            let positiveInfinityDoubleJBird = try jbirdEncoder.encode(positiveInfinityDouble)
            #expect(positiveInfinityDoubleFoundation == positiveInfinityDoubleJBird)

            let negativeInfinityDoubleFoundation = try foundationEncoder.encode(negativeInfinityDouble)
            let negativeInfinityDoubleJBird = try jbirdEncoder.encode(negativeInfinityDouble)
            #expect(negativeInfinityDoubleFoundation == negativeInfinityDoubleJBird)

            let nanFloatFoundation = try foundationEncoder.encode(nanFloat)
            let nanFloatJBird = try jbirdEncoder.encode(nanFloat)
            #expect(nanFloatFoundation == nanFloatJBird)

            let positiveInfinityFloatFoundation = try foundationEncoder.encode(positiveInfinityFloat)
            let positiveInfinityFloatJBird = try jbirdEncoder.encode(positiveInfinityFloat)
            #expect(positiveInfinityFloatFoundation == positiveInfinityFloatJBird)

            let negativeInfinityFloatFoundation = try foundationEncoder.encode(negativeInfinityFloat)
            let negativeInfinityFloatJBird = try jbirdEncoder.encode(negativeInfinityFloat)
            #expect(negativeInfinityFloatFoundation == negativeInfinityFloatJBird)
        }

        @Test("Use Null Strategy")
        func useNullStrategy() throws {
            let nanDouble = Double.nan
            let positiveInfinityDouble = Double.infinity
            let negativeInfinityDouble = -Double.infinity

            let nanFloat = Float.nan
            let positiveInfinityFloat = Float.infinity
            let negativeInfinityFloat = -Float.infinity

            let encoder = JSON.Encoder()
            encoder.nonConformingFloatEncodingStrategy = .useNull

            let nanDoubleEncoded = try encoder.encode(nanDouble)
            #expect(nanDoubleEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))

            let positiveInfinityDoubleEncoded = try encoder.encode(positiveInfinityDouble)
            #expect(positiveInfinityDoubleEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))

            let negativeInfinityDoubleEncoded = try encoder.encode(negativeInfinityDouble)
            #expect(negativeInfinityDoubleEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))

            let nanFloatEncoded = try encoder.encode(nanFloat)
            #expect(nanFloatEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))

            let positiveInfinityFloatEncoded = try encoder.encode(positiveInfinityFloat)
            #expect(positiveInfinityFloatEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))

            let negativeInfinityFloatEncoded = try encoder.encode(negativeInfinityFloat)
            #expect(negativeInfinityFloatEncoded == Data([0x6E, 0x75, 0x6C, 0x6C]))
        }

    }

}
