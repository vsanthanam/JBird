// JBird
// ObjectDecoderTests.swift
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

@Suite("Object Decoder Tests")
struct ObjectDecoderTests {

    struct SomeCodable: Codable, Equatable {
        let foo: String
    }

    let someCodableData = try! JSONEncoder().encode(KeyedValue(value: SomeCodable(foo: "bar")))

    struct KeyedValue<T>: Equatable, Codable where T: Codable & Equatable {
        let value: T

        init(value: T) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(T.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedString: Equatable, Codable {
        let value: String

        init(value: String) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(String.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedBool: Equatable, Codable {
        let value: Bool

        init(value: Bool) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Bool.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedInt: Equatable, Codable {
        let value: Int

        init(value: Int) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedInt8: Equatable, Codable {
        let value: Int8

        init(value: Int8) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int8.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedInt16: Equatable, Codable {
        let value: Int16

        init(value: Int16) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int16.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedInt32: Equatable, Codable {
        let value: Int32

        init(value: Int32) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int32.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedInt64: Equatable, Codable {
        let value: Int64

        init(value: Int64) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int64.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedUInt: Equatable, Codable {
        let value: UInt

        init(value: UInt) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(UInt.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedUInt8: Equatable, Codable {
        let value: UInt8

        init(value: UInt8) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(UInt8.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedUInt16: Equatable, Codable {
        let value: UInt16

        init(value: UInt16) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(UInt16.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedUInt32: Equatable, Codable {
        let value: UInt32

        init(value: UInt32) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(UInt32.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedUInt64: Equatable, Codable {
        let value: UInt64

        init(value: UInt64) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(UInt64.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedFloat: Equatable, Codable {
        let value: Float

        init(value: Float) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Float.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    struct KeyedDouble: Equatable, Codable {
        let value: Double

        init(value: Double) {
            self.value = value
        }

        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Double.self, forKey: CodingKeys.value)
        }

        enum CodingKeys: CodingKey {
            case value
        }

        func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(self.value, forKey: CodingKeys.value)
        }
    }

    class SomeInheritable: Codable {
        let foo: String

        init(foo: String) {
            self.foo = foo
        }

    }

    final class SomeSub: SomeInheritable, Equatable {
        let bar: String
        let qux: Qux

        init(foo: String, bar: String, qux: Qux) {
            self.bar = bar
            self.qux = qux
            super.init(foo: foo)
        }

        private enum CodingKeys: String, CodingKey {
            case bar
            case superPayload
            case qux
        }

        required init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bar = try container.decode(String.self, forKey: .bar)
            let quxContainer = try container.nestedContainer(keyedBy: Qux.CodingKeys.self, forKey: .qux)
            let quuux = try quxContainer.decode(Bool.self, forKey: .quux)
            let grault = try quxContainer.decode(Double.self, forKey: .grault)
            self.qux = .init(quux: quuux, grault: grault)
            let superDecoder = try container.superDecoder(forKey: .superPayload)
            try super.init(from: superDecoder)
        }

        override func encode(to encoder: any Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(bar, forKey: .bar)
            try container.encode(qux, forKey: .qux)
            let superEncoder = container.superEncoder(forKey: .superPayload)
            try super.encode(to: superEncoder)
        }

        static func == (lhs: SomeSub, rhs: SomeSub) -> Bool {
            lhs.foo == rhs.foo && lhs.bar == rhs.bar
        }
    }

    struct Qux: Codable {
        let quux: Bool
        let grault: Double

        enum CodingKeys: CodingKey {
            case quux
            case grault
        }
    }

    @Test("Test Keyed String")
    func keyedString() throws {
        let value = KeyedString(value: "foo")
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedString.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedString.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedString.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Bool")
    func keyedBool() throws {
        let value = KeyedBool(value: false)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedBool.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedBool.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedBool.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Int")
    func keyedInt() throws {
        let value = KeyedInt(value: 42)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedInt.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedInt.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedInt.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Int8")
    func keyedInt8() throws {
        let value = KeyedInt8(value: -1)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedInt8.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedInt8.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedInt8.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Int16")
    func keyedInt16() throws {
        let value = KeyedInt16(value: -3)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedInt16.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedInt16.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedInt16.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Int32")
    func keyedInt32() throws {
        let value = KeyedInt32(value: -1000)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedInt32.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedInt32.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedInt32.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Int64")
    func keyedInt64() throws {
        let value = KeyedInt64(value: -9000)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedInt64.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedInt64.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedInt64.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed UInt")
    func keyedUInt() throws {
        let value = KeyedUInt(value: 42)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedUInt.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedUInt.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedUInt.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed UInt8")
    func keyedUInt8() throws {
        let value = KeyedUInt8(value: 200)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedUInt8.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedUInt8.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedUInt8.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed UInt16")
    func keyedUInt16() throws {
        let value = KeyedUInt16(value: 65000)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedUInt16.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedUInt16.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedUInt16.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed UInt32")
    func keyedUInt32() throws {
        let value = KeyedUInt32(value: 1_000_000)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedUInt32.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedUInt32.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedUInt32.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed UInt64")
    func keyedUInt64() throws {
        let value = KeyedUInt64(value: 1_000_000_000)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedUInt64.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedUInt64.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedUInt64.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Float")
    func keyedFloat() throws {
        let value = KeyedFloat(value: 1.5)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedFloat.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedFloat.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedFloat.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Double")
    func keyedDouble() throws {
        let value = KeyedDouble(value: 1.2)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedDouble.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedDouble.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedDouble.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Codable")
    func keyedCodable() throws {
        let value = KeyedValue<Int>(value: 12)
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(KeyedValue<Int>.self, from: data)
        let jbird = try JSON.Decoder().decode(KeyedValue<Int>.self, from: data)
        #expect(foundation == jbird)
        #expect(throws: DecodingError.self) {
            try JSON.Decoder().decode(
                KeyedValue<Int>.self,
                from: someCodableData
            )
        }
    }

    @Test("Test Keyed Subclass")
    func keyedSubClass() throws {
        let value = SomeSub(foo: "bar", bar: "foo", qux: .init(quux: false, grault: 1.2))
        let data = try JSONEncoder().encode(value)
        let foundation = try JSONDecoder().decode(SomeSub.self, from: data)
        let jbird = try JSON.Decoder().decode(SomeSub.self, from: data)
        #expect(foundation == jbird)
    }
}
