// JBird
// ArrayDecoderTests.swift
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

@Suite("Array Decoder Tests")
struct ArrayDecoderTests {

    struct SomeCodable: Codable, Equatable {
        let foo: String
    }

    let someCodableData = try! JSONEncoder().encode(Values([SomeCodable(foo: "foo"), SomeCodable(foo: "bar"), SomeCodable(foo: "baz")]))

    struct Values<Element>: Codable, Equatable, ExpressibleByArrayLiteral where Element: Equatable & Codable {

        typealias ArrayLiteralElement = Element

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.init(elements)
        }

        init(_ values: [Element]) {
            self.values = values
        }

        let values: [Element]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Element]()
            while !container.isAtEnd {
                let value = try container.decode(Element.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Strings: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = String

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [String]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [String]()
            while !container.isAtEnd {
                let value = try container.decode(String.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Ints: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Int

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Int]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Int]()
            while !container.isAtEnd {
                let value = try container.decode(Int.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Int8s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Int8

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Int8]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Int8]()
            while !container.isAtEnd {
                let value = try container.decode(Int8.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Bools: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Bool

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Bool]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Bool]()
            while !container.isAtEnd {
                let value = try container.decode(Bool.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Floats: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Float

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Float]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Float]()
            while !container.isAtEnd {
                let value = try container.decode(Float.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Doubles: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Double

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Double]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Double]()
            while !container.isAtEnd {
                let value = try container.decode(Double.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Int16s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Int16

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Int16]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Int16]()
            while !container.isAtEnd {
                let value = try container.decode(Int16.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Int32s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Int32

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Int32]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Int32]()
            while !container.isAtEnd {
                let value = try container.decode(Int32.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct Int64s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = Int64

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [Int64]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [Int64]()
            while !container.isAtEnd {
                let value = try container.decode(Int64.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct UInts: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = UInt

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [UInt]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [UInt]()
            while !container.isAtEnd {
                let value = try container.decode(UInt.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct UInt8s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = UInt8

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [UInt8]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [UInt8]()
            while !container.isAtEnd {
                let value = try container.decode(UInt8.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct UInt16s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = UInt16

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [UInt16]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [UInt16]()
            while !container.isAtEnd {
                let value = try container.decode(UInt16.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct UInt32s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = UInt32

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [UInt32]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [UInt32]()
            while !container.isAtEnd {
                let value = try container.decode(UInt32.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    struct UInt64s: Codable, Equatable, ExpressibleByArrayLiteral {

        typealias ArrayLiteralElement = UInt64

        init(arrayLiteral elements: ArrayLiteralElement...) {
            self.values = elements
        }

        let values: [UInt64]

        init(from decoder: any Decoder) throws {
            var container = try decoder.unkeyedContainer()
            var values = [UInt64]()
            while !container.isAtEnd {
                let value = try container.decode(UInt64.self)
                values.append(value)
            }
            self.values = values
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.unkeyedContainer()
            for value in values {
                try container.encode(value)
            }
        }

    }

    @Test("Decode Strings")
    func decodeStrings() throws {
        let value: Strings = ["foo", "bar"]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Strings.self, from: data)
        let jbird = try JSON.Decoder().decode(Strings.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Strings.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Ints")
    func decodeInts() throws {
        let value: Ints = [24, -12]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Ints.self, from: data)
        let jbird = try JSON.Decoder().decode(Ints.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Ints.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Int8s")
    func decodeInt8s() throws {
        let value: Int8s = [-1, 1]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Int8s.self, from: data)
        let jbird = try JSON.Decoder().decode(Int8s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Int8s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Bools")
    func decodeBools() throws {
        let value: Bools = [true, false]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Bools.self, from: data)
        let jbird = try JSON.Decoder().decode(Bools.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Bools.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Floats")
    func decodeFloats() throws {
        let value: Floats = [1.5, -2.25]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Floats.self, from: data)
        let jbird = try JSON.Decoder().decode(Floats.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Floats.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Doubles")
    func decodeDoubles() throws {
//        let value: Doubles = [3.14159, -0.1234]
        let values: Doubles = [1.2, -2.1]
        let data = try JSONEncoder().encode(values)
        let foundation = try JSONDecoder().decode(Doubles.self, from: data)
        let jbird = try JSON.Decoder().decode(Doubles.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Doubles.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Int16s")
    func decodeInt16s() throws {
        let value: Int16s = [-3, 7]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Int16s.self, from: data)
        let jbird = try JSON.Decoder().decode(Int16s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Int16s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Int32s")
    func decodeInt32s() throws {
        let value: Int32s = [-1000, 1000]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Int32s.self, from: data)
        let jbird = try JSON.Decoder().decode(Int32s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Int32s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Int64s")
    func decodeInt64s() throws {
        let value: Int64s = [-9000, 9000]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Int64s.self, from: data)
        let jbird = try JSON.Decoder().decode(Int64s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Int64s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode UInts")
    func decodeUInts() throws {
        let value: UInts = [0, 42]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UInts.self, from: data)
        let jbird = try JSON.Decoder().decode(UInts.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                UInts.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode UInt8s")
    func decodeUInt8s() throws {
        let value: UInt8s = [0, 200]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UInt8s.self, from: data)
        let jbird = try JSON.Decoder().decode(UInt8s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                UInt8s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode UInt16s")
    func decodeUInt16s() throws {
        let value: UInt16s = [0, 65000]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UInt16s.self, from: data)
        let jbird = try JSON.Decoder().decode(UInt16s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                UInt16s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode UInt32s")
    func decodeUInt32s() throws {
        let value: UInt32s = [1, 1_000_000]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UInt32s.self, from: data)
        let jbird = try JSON.Decoder().decode(UInt32s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                UInt32s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode UInt64s")
    func decodeUInt64s() throws {
        let value: UInt64s = [1, 1_000_000_000]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(UInt64s.self, from: data)
        let jbird = try JSON.Decoder().decode(UInt64s.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                UInt64s.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Codables")
    func decodeCodables() throws {
        let value: Values<SomeCodable> = [.init(foo: "foo"), .init(foo: "bar"), .init(foo: "baz")]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(Values<SomeCodable>.self, from: data)
        let jbird = try JSON.Decoder().decode(Values<SomeCodable>.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                Values<String>.self,
                from: someCodableData
            )
        }
    }

    @Test("Decode Array")
    func decodeArray() throws {
        let value = [1, 2, 3]
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode([Int].self, from: data)
        let jbird = try JSON.Decoder().decode([Int].self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                [Int].self,
                from: someCodableData
            )
        }
    }

}
