// JBird
// DecoderTests.swift
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
                let foundationDouble = try #require(foundation["foo"])
                let jbirdDouble = try #require(jbird["foo"])
                #expect(foundationDouble.isNaN)
                #expect(jbirdDouble.isNaN)
                #expect(foundation["bar"] == jbird["bar"])
            }

        }

    }

    @Suite("Decode Dates")
    struct DecodeDates {

        @Test("No Date Decoding Strategy")
        func defaultStrategy() throws {
            let source = Date.now
            let data = try JSONEncoder().encode(source)
            let foundation = try JSONDecoder().decode(Date.self, from: data)
            let jbird = try JSON.Decoder().decode(Date.self, from: data)
            #expect(foundation == jbird)
        }

        @Suite("ISO 8601 Decoding Strategy ")
        struct ISOStrategy {

            @Test("Sucessful ISO 8601 Decoding Strategy")
            func success() throws {
                let source = Date.now
                let formatter = ISO8601DateFormatter()
                let string = formatter.string(from: source)
                let data = try JSONEncoder().encode(string)

                let foundationDecoder = JSONDecoder()
                foundationDecoder.dateDecodingStrategy = .iso8601
                let foundation = try foundationDecoder.decode(Date.self, from: data)

                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.dateDecodingStrategy = .iso8601
                let jbird = try jbirdDecoder.decode(Date.self, from: data)
                #expect(foundation == jbird)
            }

            @Test("Broken ISO 8601 Decoding Strategy")
            func failure() throws {
                let data = try JSONEncoder().encode("Some JSON String")

                let decoder = JSON.Decoder()
                decoder.dateDecodingStrategy = .iso8601
                #expect {
                    _ = try decoder.decode(Date.self, from: data)
                } throws: { error in
                    let error = try #require(error as? DecodingError)
                    guard case let .dataCorrupted(context) = error else {
                        return false
                    }
                    #expect(context.codingPath.isEmpty)
                    #expect(context.debugDescription == "Couldn't decode date using ISO8601 decoding strategy.")
                    return true
                }
            }

        }

        @Suite("Date Formatter Decoding Strategy")
        struct FormatterDecodingStrategy {

            @Test("Successful Date Formatter Decoding Strategy")
            func success() throws {
                let source = Date.now
                let formatter = DateFormatter()
                let string = formatter.string(from: source)
                let data = try JSONEncoder().encode(string)

                let foundationDecoder = JSONDecoder()
                foundationDecoder.dateDecodingStrategy = .formatted(formatter)
                let foundation = try foundationDecoder.decode(Date.self, from: data)

                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.dateDecodingStrategy = .formatted(formatter)
                let jbird = try jbirdDecoder.decode(Date.self, from: data)
                #expect(foundation == jbird)
            }

            @Test("Broken Formatter Decoding Strategy")
            func failure() throws {
                let data = try JSONEncoder().encode("Some JSON String")

                let decoder = JSON.Decoder()
                decoder.dateDecodingStrategy = .formatted(DateFormatter())
                #expect {
                    _ = try decoder.decode(Date.self, from: data)
                } throws: { error in
                    let error = try #require(error as? DecodingError)
                    guard case let .dataCorrupted(context) = error else {
                        return false
                    }
                    #expect(context.codingPath.isEmpty)
                    #expect(context.debugDescription == "Couldn't decode date using date formatter decoding strategy.")
                    return true
                }
            }

        }

        @Test("Milliseconds Since 1970 Decoding Strategy")
        func millisecondsSince1970() throws {
            let source = Date.now.timeIntervalSince1970 * 1000
            let data = try JSONEncoder().encode(source)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.dateDecodingStrategy = .millisecondsSince1970
            let foundation = try foundationDecoder.decode(Date.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.dateDecodingStrategy = .millisecondsSince1970
            let jbird = try jbirdDecoder.decode(Date.self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Seconds Since 1970 Decoding Strategy")
        func secondsSince1970() throws {
            let source = Date.now.timeIntervalSince1970
            let data = try JSONEncoder().encode(source)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.dateDecodingStrategy = .secondsSince1970
            let foundation = try foundationDecoder.decode(Date.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.dateDecodingStrategy = .secondsSince1970
            let jbird = try jbirdDecoder.decode(Date.self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Custom Date Decoding Strategy")
        func customDateDecodingStrategy() throws {
            let source = Date.now.timeIntervalSince1970 + 2
            let data = try JSONEncoder().encode(source)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.dateDecodingStrategy = .custom { decoder in
                let interval = try TimeInterval(from: decoder)
                return Date(timeIntervalSince1970: interval - 2)
            }
            let foundation = try foundationDecoder.decode(Date.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.dateDecodingStrategy = .custom { decoder in
                let interval = try TimeInterval(from: decoder)
                return Date(timeIntervalSince1970: interval - 2)
            }
            let jbird = try jbirdDecoder.decode(Date.self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Custom Date Decoding Strategy That Fails")
        func customDateDecodingStrategyThatFails() throws {
            let source = Date.now
            let data = try JSONEncoder().encode(source)
            enum MyError: Error, Equatable {
                case test
            }
            let decoder = JSON.Decoder()
            decoder.dateDecodingStrategy = .custom { _ in
                throw MyError.test
            }
            #expect {
                _ = try decoder.decode(Date.self, from: data)
            } throws: { error in
                let error = try #require(error as? DecodingError)
                guard case let .dataCorrupted(context) = error else {
                    return false
                }
                #expect(context.codingPath.isEmpty)
                #expect(context.debugDescription == "Couldn't decode date using cusomg decoding strategy.")
                let underlying = try #require(context.underlyingError as? MyError)
                #expect(underlying == .test)
                return true
            }
        }

        @Test("Unkeyed Date Decoding")
        func decodeUnkeyedDates() throws {
            let dates = [Date.now, Date.now, Date.now]
            let data = try JSONEncoder().encode(dates)
            let foundation = try JSONDecoder().decode([Date].self, from: data)
            let jbird = try JSON.Decoder().decode([Date].self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Keyed Date Decoding")
        func decodeKeyedDates() throws {
            let dates = ["foo": Date.now, "bar": Date.now, "baz": Date.now]
            let data = try JSONEncoder().encode(dates)
            let foundation = try JSONDecoder().decode([String: Date].self, from: data)
            let jbird = try JSON.Decoder().decode([String: Date].self, from: data)
            #expect(foundation == jbird)
        }

    }

    @Suite("Decode Data")
    struct DecodeData {

        @Suite("Base64 Data Decoding Strategy")
        struct Base64 {

            @Test("Successful Base64 Data Decoding Strategy")
            func success() throws {
                let source = Data("Hello, World".utf8).base64EncodedString()
                let data = try JSONEncoder().encode(source)
                let foundation = try JSONDecoder().decode(Data.self, from: data)
                let jbird = try JSON.Decoder().decode(Data.self, from: data)
                #expect(foundation == jbird)
            }

            @Test("Broken Base64 Decoding Strategy")
            func failure() throws {
                let data = try JSONEncoder().encode("Some JSON String")

                let decoder = JSON.Decoder()
                #expect {
                    _ = try decoder.decode(Data.self, from: data)
                } throws: { error in
                    let error = try #require(error as? DecodingError)
                    guard case let .dataCorrupted(context) = error else {
                        return false
                    }
                    #expect(context.codingPath.isEmpty)
                    #expect(context.debugDescription == "Couldn't decode data using base64 decoding strategy.")
                    return true
                }
            }

        }

        @Test("Deferred Data Decoding Strategy")
        func deferredStrategy() throws {
            let source = Data("Hello, World".utf8)
            let encoder = JSONEncoder()
            encoder.dataEncodingStrategy = .deferredToData
            let data = try encoder.encode(source)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.dataDecodingStrategy = .deferredToData
            let foundation = try foundationDecoder.decode(Data.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.dataDecodingStrategy = .deferredToData
            let jbird = try jbirdDecoder.decode(Data.self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Custom Data Decoding Strategy")
        func customDataDecodingStrategy() throws {
            let source = Data("Hello, World".utf8)
            let encoder = JSONEncoder()
            encoder.dataEncodingStrategy = .custom { data, encoder in
                try data.base64EncodedString().encode(to: encoder)
            }
            let data = try encoder.encode(source)

            let foundationDecoder = JSONDecoder()
            foundationDecoder.dataDecodingStrategy = .custom { decoder in
                let str = try String(from: decoder)
                return Data(str.utf8)
            }
            let foundation = try foundationDecoder.decode(Data.self, from: data)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.dataDecodingStrategy = .custom { decoder in
                let str = try String(from: decoder)
                return Data(str.utf8)
            }
            let jbird = try jbirdDecoder.decode(Data.self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Custom Data Decoding Strategy That Fails")
        func customDataDecodingStrategyThatFails() throws {
            let source = Data("Hello, World".utf8)
            let encoder = JSONEncoder()
            encoder.dataEncodingStrategy = .custom { data, encoder in
                try data.base64EncodedString().encode(to: encoder)
            }
            let data = try encoder.encode(source)

            enum MyError: Error, Equatable {
                case test
            }

            let decoder = JSON.Decoder()
            decoder.dataDecodingStrategy = .custom { _ in
                throw MyError.test
            }
            #expect {
                _ = try decoder.decode(Data.self, from: data)
            } throws: { error in
                let error = try #require(error as? DecodingError)
                guard case let .dataCorrupted(context) = error else {
                    return false
                }
                #expect(context.codingPath.isEmpty)
                #expect(context.debugDescription == "Couldn't decode data using custom decoding strategy.")
                let underlying = try #require(context.underlyingError as? MyError)
                #expect(underlying == .test)
                return true
            }
        }

        @Test("Unkeyed Data Decoding")
        func decodeUnkeyedData() throws {
            let dates = [
                Data("foo".utf8).base64EncodedString(),
                Data("bar".utf8).base64EncodedString(),
                Data("baz".utf8).base64EncodedString()
            ]
            let data = try JSONEncoder().encode(dates)
            let foundation = try JSONDecoder().decode([Data].self, from: data)
            let jbird = try JSON.Decoder().decode([Data].self, from: data)
            #expect(foundation == jbird)
        }

        @Test("Keyed Data Decoding")
        func decodeKeyedData() throws {
            let dataDict = [
                "foo": Data("foo".utf8).base64EncodedString(),
                "bar": Data("bar".utf8).base64EncodedString(),
                "baz": Data("baz".utf8).base64EncodedString()
            ]
            let data = try JSONEncoder().encode(dataDict)
            let foundation = try JSONDecoder().decode([String: Data].self, from: data)
            let jbird = try JSON.Decoder().decode([String: Data].self, from: data)
            #expect(foundation == jbird)
        }

    }

    @Suite("Decode URLs")
    struct DecodeURLs {

        @Test("Decode Root URL From JSON String")
        func rootURLFromString() throws {
            let data = try JSONEncoder().encode("https://example.com/path?q=1")
            let foundation = try JSONDecoder().decode(URL.self, from: data)
            let jbird = try JSON.Decoder().decode(URL.self, from: data)
            #expect(foundation == URL(string: "https://example.com/path?q=1"))
            #expect(jbird == foundation)
        }

        @Test("Decode URL Inside A Struct")
        func urlInsideStruct() throws {
            struct Wrapper: Codable, Equatable {
                let url: URL
            }
            let payload = #"{ "url": "https://upload.wikimedia.org/foo/bar.jpg" }"#
            let data = Data(payload.utf8)
            let expected = try Wrapper(url: #require(URL(string: "https://upload.wikimedia.org/foo/bar.jpg")))
            let foundation = try JSONDecoder().decode(Wrapper.self, from: data)
            let jbird = try JSON.Decoder().decode(Wrapper.self, from: data)
            #expect(foundation == expected)
            #expect(jbird == expected)
        }

        @Test("Decode Optional URL Present And Missing")
        func optionalURL() throws {
            struct Wrapper: Codable, Equatable {
                let url: URL?
            }
            let present = Data(#"{ "url": "https://example.com" }"#.utf8)
            let missing = Data(#"{}"#.utf8)
            let null = Data(#"{ "url": null }"#.utf8)

            let presentValue = Wrapper(url: URL(string: "https://example.com"))
            #expect(try JSONDecoder().decode(Wrapper.self, from: present) == presentValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: present) == presentValue)

            let missingValue = Wrapper(url: nil)
            #expect(try JSONDecoder().decode(Wrapper.self, from: missing) == missingValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: missing) == missingValue)

            #expect(try JSONDecoder().decode(Wrapper.self, from: null) == missingValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: null) == missingValue)
        }

        @Test("Unkeyed URL Decoding")
        func unkeyedURLs() throws {
            let urls = try [
                #require(URL(string: "https://a.example.com")),
                #require(URL(string: "https://b.example.com/path")),
                #require(URL(string: "https://c.example.com/x?y=z"))
            ]
            let data = try JSONEncoder().encode(urls)
            let foundation = try JSONDecoder().decode([URL].self, from: data)
            let jbird = try JSON.Decoder().decode([URL].self, from: data)
            #expect(foundation == urls)
            #expect(jbird == urls)
        }

        @Test("Keyed URL Decoding")
        func keyedURLs() throws {
            let urls = try [
                "foo": #require(URL(string: "https://foo.example.com")),
                "bar": #require(URL(string: "https://bar.example.com")),
                "baz": #require(URL(string: "https://baz.example.com"))
            ]
            let data = try JSONEncoder().encode(urls)
            let foundation = try JSONDecoder().decode([String: URL].self, from: data)
            let jbird = try JSON.Decoder().decode([String: URL].self, from: data)
            #expect(foundation == urls)
            #expect(jbird == urls)
        }

        @Test("Decode Invalid URL String Throws dataCorrupted")
        func invalidURLString() throws {
            // An empty string is the canonical "URL(string:) returns nil" case.
            let data = try JSONEncoder().encode("")
            #expect {
                _ = try JSON.Decoder().decode(URL.self, from: data)
            } throws: { error in
                let error = try #require(error as? DecodingError)
                guard case let .dataCorrupted(context) = error else {
                    return false
                }
                #expect(context.debugDescription == "Invalid URL string.")
                return true
            }
        }

        @Test("Decode URL From Foundation-Encoded Payload (parity)")
        func parityWithFoundationEncoder() throws {
            let url = try #require(URL(string: "https://en.wikipedia.org/wiki/Albert_Einstein"))
            let foundationData = try JSONEncoder().encode(url)
            let jbird = try JSON.Decoder().decode(URL.self, from: foundationData)
            #expect(jbird == url)
        }

    }

    @Suite("Decode Decimals")
    struct DecodeDecimals {

        @Test("Decode Root Integer Decimal")
        func rootIntegerDecimal() throws {
            let data = Data("42".utf8)
            let foundation = try JSONDecoder().decode(Decimal.self, from: data)
            let jbird = try JSON.Decoder().decode(Decimal.self, from: data)
            #expect(foundation == Decimal(42))
            #expect(jbird == foundation)
        }

        @Test("Decode Root Fractional Decimal")
        func rootFractionalDecimal() throws {
            let data = Data("3.5".utf8)
            let foundation = try JSONDecoder().decode(Decimal.self, from: data)
            let jbird = try JSON.Decoder().decode(Decimal.self, from: data)
            // 3.5 is exactly representable in both Decimal and Double.
            #expect(foundation == Decimal(string: "3.5"))
            #expect(jbird == foundation)
        }

        @Test("Decode Decimal Inside A Struct")
        func decimalInsideStruct() throws {
            struct Wrapper: Codable, Equatable {
                let amount: Decimal
            }
            let payload = #"{ "amount": 100 }"#
            let data = Data(payload.utf8)
            let expected = Wrapper(amount: Decimal(100))
            let foundation = try JSONDecoder().decode(Wrapper.self, from: data)
            let jbird = try JSON.Decoder().decode(Wrapper.self, from: data)
            #expect(foundation == expected)
            #expect(jbird == expected)
        }

        @Test("Decode Optional Decimal Present And Missing")
        func optionalDecimal() throws {
            struct Wrapper: Codable, Equatable {
                let amount: Decimal?
            }
            let present = Data(#"{ "amount": 250 }"#.utf8)
            let missing = Data(#"{}"#.utf8)
            let null = Data(#"{ "amount": null }"#.utf8)

            let presentValue = Wrapper(amount: Decimal(250))
            #expect(try JSONDecoder().decode(Wrapper.self, from: present) == presentValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: present) == presentValue)

            let missingValue = Wrapper(amount: nil)
            #expect(try JSONDecoder().decode(Wrapper.self, from: missing) == missingValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: missing) == missingValue)

            #expect(try JSONDecoder().decode(Wrapper.self, from: null) == missingValue)
            #expect(try JSON.Decoder().decode(Wrapper.self, from: null) == missingValue)
        }

        @Test("Unkeyed Decimal Decoding")
        func unkeyedDecimals() throws {
            let decimals: [Decimal] = [Decimal(1), Decimal(2), Decimal(3)]
            let data = try JSONEncoder().encode(decimals)
            let foundation = try JSONDecoder().decode([Decimal].self, from: data)
            let jbird = try JSON.Decoder().decode([Decimal].self, from: data)
            #expect(foundation == decimals)
            #expect(jbird == decimals)
        }

        @Test("Keyed Decimal Decoding")
        func keyedDecimals() throws {
            let decimals: [String: Decimal] = [
                "foo": Decimal(10),
                "bar": Decimal(20),
                "baz": Decimal(30)
            ]
            let data = try JSONEncoder().encode(decimals)
            let foundation = try JSONDecoder().decode([String: Decimal].self, from: data)
            let jbird = try JSON.Decoder().decode([String: Decimal].self, from: data)
            #expect(foundation == decimals)
            #expect(jbird == decimals)
        }

        @Test("Decode Decimal From Foundation-Encoded Payload (parity)")
        func parityWithFoundationEncoder() throws {
            let decimal = try #require(Decimal(string: "1234.5"))
            let foundationData = try JSONEncoder().encode(decimal)
            let jbird = try JSON.Decoder().decode(Decimal.self, from: foundationData)
            #expect(jbird == decimal)
        }

    }

}
