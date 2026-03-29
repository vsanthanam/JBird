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

enum DecoderTests {

    struct KeyDecodingStrategies {

        @Test
        func `Standard Key Decoding Strategy`() throws {

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

        @Test
        func `Snake Case Key Decoding Strategy`() throws {

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

        @Test
        func `Custom Key Decoding Strategy`() throws {

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

    enum NonConformingFloatingPointStrategy {

        struct StringReplaceStrategy {

            @Test
            func `Decode Conforming`() throws {
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

            @Test
            func `Decode Positive Infinity`() throws {
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

            @Test
            func `Decode Negative Infinity`() throws {
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

            @Test
            func `Decode NaN`() throws {
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

            @Test
            func `Decode Infinity Unkeyed`() throws {
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

            @Test
            func `Decode NaN Unkeyed`() throws {
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

            @Test
            func `Decode Infinity Keyed`() throws {
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

            @Test
            func `Decode NaN Keyed`() throws {
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
                #expect(try #require(foundation["foo"]?.isNaN))
                #expect(try #require(jbird["foo"]?.isNaN))
                #expect(foundation["bar"] == jbird["bar"])
            }

        }

    }

    struct DecodeDates {

        @Test
        func `No Date Decoding Strategy`() throws {
            let source = Date.now
            let data = try JSONEncoder().encode(source)
            let foundation = try JSONDecoder().decode(Date.self, from: data)
            let jbird = try JSON.Decoder().decode(Date.self, from: data)
            #expect(foundation == jbird)
        }

        struct ISOStrategy {

            @Test
            func `Sucessful ISO 8601 Decoding Strategy`() throws {
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

            @Test
            func `Broken ISO 8601 Decoding Strategy`() throws {
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

        struct FormatterDecodingStrategy {

            @Test
            func `Successful Date Formatter Decoding Strategy`() throws {
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

            @Test
            func `Broken Formatter Decoding Strategy`() throws {
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

        @Test
        func `Milliseconds Since 1970 Decoding Strategy`() throws {
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

        @Test
        func `Seconds Since 1970 Decoding Strategy`() throws {
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

        @Test
        func `Custom Date Decoding Strategy`() throws {
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

        @Test
        func `Custom Date Decoding Strategy That Fails`() throws {
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

        @Test
        func `Unkeyed Date Decoding`() throws {
            let dates = [Date.now, Date.now, Date.now]
            let data = try JSONEncoder().encode(dates)
            let foundation = try JSONDecoder().decode([Date].self, from: data)
            let jbird = try JSON.Decoder().decode([Date].self, from: data)
            #expect(foundation == jbird)
        }

        @Test
        func `Keyed Date Decoding`() throws {
            let dates = ["foo": Date.now, "bar": Date.now, "baz": Date.now]
            let data = try JSONEncoder().encode(dates)
            let foundation = try JSONDecoder().decode([String: Date].self, from: data)
            let jbird = try JSON.Decoder().decode([String: Date].self, from: data)
            #expect(foundation == jbird)
        }

    }

    struct DecodeData {

        struct Base64 {

            @Test
            func `Successful Base64 Data Decoding Strategy`() throws {
                let source = Data("Hello, World".utf8).base64EncodedString()
                let data = try JSONEncoder().encode(source)
                let foundation = try JSONDecoder().decode(Data.self, from: data)
                let jbird = try JSON.Decoder().decode(Data.self, from: data)
                #expect(foundation == jbird)
            }

            @Test
            func `Broken Base64 Decoding Strategy`() throws {
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

        @Test
        func `Deferred Data Decoding Strategy`() throws {
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

        @Test
        func `Custom Data Decoding Strategy`() throws {
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

        @Test
        func `Custom Data Decoding Strategy That Fails`() throws {
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

        @Test
        func `Unkeyed Data Decoding`() throws {
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

        @Test
        func `Keyed Data Decoding`() throws {
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

}
