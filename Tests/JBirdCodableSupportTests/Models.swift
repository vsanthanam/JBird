// JBird
// Models.swift
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

struct NestedUnkeyedModel: Codable, Equatable {

    init(foo: String, int: [Int]) {
        self.foo = foo
        self.int = int
    }

    let foo: String
    let int: [Int]

    init(from decoder: any Decoder) throws {
        var conatainer = try decoder.unkeyedContainer()
        self.foo = try conatainer.decode(String.self)
        var intContainer = try conatainer.nestedUnkeyedContainer()
        var int = [Int]()
        while !intContainer.isAtEnd {
            try int.append(intContainer.decode(Int.self))
        }
        self.int = int

    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(foo)
        var intContainer = container.nestedUnkeyedContainer()
        for value in int {
            try intContainer.encode(value)
        }
    }
}

struct Values<Element: Equatable & Codable>: Codable, Equatable, ExpressibleByArrayLiteral {

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
        try container.encode(contentsOf: values)
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

struct Optionals<T>: Codable, Equatable, ExpressibleByArrayLiteral where T: Codable & Equatable {

    init(arrayLiteral elements: T?...) {
        value = elements
    }

    let value: [T?]

    init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        var vals = [T?]()
        while !container.isAtEnd {
            if try container.decodeNil() {
                vals.append(nil)
            } else {
                let value = try container.decode(T.self)
                vals.append(value)
            }
        }
        self.value = vals
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        for value in value {
            if let value {
                try container.encode(value)
            } else {
                try container.encodeNil()
            }
        }
    }

}

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
        case qux
    }

    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bar = try container.decode(String.self, forKey: .bar)
        let quxContainer = try container.nestedContainer(keyedBy: Qux.CodingKeys.self, forKey: .qux)
        let quux = try quxContainer.decode(Bool.self, forKey: .quux)
        let grault = try quxContainer.decode(Double.self, forKey: .grault)
        self.qux = .init(quux: quux, grault: grault)
        let superDecoder = try container.superDecoder()
        try super.init(from: superDecoder)
    }

    override func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bar, forKey: .bar)
        try container.encode(qux, forKey: .qux)
        let superEncoder = container.superEncoder()
        try super.encode(to: superEncoder)
    }

    static func == (lhs: SomeSub, rhs: SomeSub) -> Bool {
        lhs.foo == rhs.foo && lhs.bar == rhs.bar
    }
}

final class SomeSubWitihKey: SomeInheritable, Equatable {
    let bar: String
    let qux: Qux

    init(foo: String, bar: String, qux: Qux) {
        self.bar = bar
        self.qux = qux
        super.init(foo: foo)
    }

    private enum CodingKeys: String, CodingKey {
        case bar
        case qux
        case temp
    }

    required init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.bar = try container.decode(String.self, forKey: .bar)
        let quxContainer = try container.nestedContainer(keyedBy: Qux.CodingKeys.self, forKey: .qux)
        let quux = try quxContainer.decode(Bool.self, forKey: .quux)
        let grault = try quxContainer.decode(Double.self, forKey: .grault)
        self.qux = .init(quux: quux, grault: grault)
        let superDecoder = try container.superDecoder(forKey: .temp)
        try super.init(from: superDecoder)
    }

    override func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(bar, forKey: .bar)
        try container.encode(qux, forKey: .qux)
        let superEncoder = container.superEncoder(forKey: .temp)
        try super.encode(to: superEncoder)
    }

    static func == (lhs: SomeSubWitihKey, rhs: SomeSubWitihKey) -> Bool {
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

struct AllScalars: Codable {

    struct Nested: Codable {
        let foo: Double
        let bar: Bool
    }

    let foo: String
    let bar: Float
    let baz: Double
    let int: Int
    let int8: Int8
    let int16: Int16
    let int32: Int32
    let int64: Int64
    let uint: UInt
    let uint8: UInt8
    let uint16: UInt16
    let uint32: UInt32
    let uint64: UInt64
    let bool: Bool
    let optional: String?
    let nested: Nested
}

struct UnkeyedWithNestedKeyedModel: Codable, Equatable {

    init(qux: String, foo: String, bar: String) {
        self.qux = qux
        self.member = Member(foo: foo, bar: bar)
    }

    let qux: String
    let member: Member

    struct Member: Equatable {
        let foo: String
        let bar: String

        enum CodingKeys: CodingKey {
            case foo
            case bar
        }
    }

    init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.qux = try container.decode(String.self)
        let nested = try container.nestedContainer(keyedBy: Member.CodingKeys.self)
        let foo = try nested.decode(String.self, forKey: .foo)
        let bar = try nested.decode(String.self, forKey: .bar)
        self.member = Member(foo: foo, bar: bar)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(qux)
        var nested = container.nestedContainer(keyedBy: Member.CodingKeys.self)
        try nested.encode(member.foo, forKey: .foo)
        try nested.encode(member.bar, forKey: .bar)
    }
}

class UnkeyedInheritable: Codable {

    init(foo: String) {
        self.foo = foo
    }

    let foo: String

    required init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.foo = try container.decode(String.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(foo)
    }

}

final class UnkeyedSub: UnkeyedInheritable, Equatable {

    init(foo: String, bar: String) {
        self.bar = bar
        super.init(foo: foo)
    }

    let bar: String

    required init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.bar = try container.decode(String.self)
        try super.init(from: container.superDecoder())
    }

    override func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(bar)
        try super.encode(to: container.superEncoder())
    }

    static func == (lhs: UnkeyedSub, rhs: UnkeyedSub) -> Bool {
        lhs.foo == rhs.foo && lhs.bar == rhs.bar
    }

}

struct Transparent: Codable, Equatable {

    init(foo: Bar) {
        self.foo = foo
    }

    let foo: Bar

    struct Bar: Codable, Equatable {
        let baz: String
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.foo = try container.decode(Bar.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(foo)
    }

}

struct KeyedWithNestedKeyed: Codable, Equatable {

    init(foo: String, baz: String, qux: String) {
        self.foo = foo
        self.bar = .init(baz: baz, qux: qux)
    }

    enum CodingKeys: CodingKey {
        case foo
        case bar
        case baz
        case qux
    }

    let foo: String
    let bar: Bar

    struct Bar: Equatable {
        let baz: String
        let qux: String
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(
            keyedBy: CodingKeys.self
        )
        let foo = try container.decode(
            String.self,
            forKey: .foo
        )
        let barContainer = try container.nestedContainer(
            keyedBy: CodingKeys.self,
            forKey: .bar
        )
        let baz = try barContainer.decode(
            String.self,
            forKey: .baz
        )
        let qux = try barContainer.decode(
            String.self,
            forKey: .qux
        )
        self.init(foo: foo, baz: baz, qux: qux)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(foo, forKey: .foo)
        var barContainer = container.nestedContainer(keyedBy: CodingKeys.self, forKey: .bar)
        try barContainer.encode(bar.baz, forKey: .baz)
        try barContainer.encode(bar.qux, forKey: .qux)
    }
}

struct KeyedNestedUnkeyed: Codable, Equatable {

    init(name: String, numbers: [Int]) {
        self.name = name
        self.numbers = numbers
    }

    let name: String
    let numbers: [Int]

    enum CodingKeys: CodingKey {
        case name
        case numbers
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        var numbersContainer = try container.nestedUnkeyedContainer(forKey: .numbers)
        var numbers = [Int]()
        while !numbersContainer.isAtEnd {
            try numbers.append(numbersContainer.decode(Int.self))
        }
        self.numbers = numbers
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        var numbersContainer = container.nestedUnkeyedContainer(forKey: .numbers)
        for number in numbers {
            try numbersContainer.encode(number)
        }
    }
}

struct ExplicitNilKeyed: Codable, Equatable {

    init(value: String?) {
        self.value = value
    }

    let value: String?

    enum CodingKeys: CodingKey {
        case value
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        if try container.decodeNil(forKey: .value) {
            self.value = nil
        } else {
            self.value = try container.decode(String.self, forKey: .value)
        }
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if let value {
            try container.encode(value, forKey: .value)
        } else {
            try container.encodeNil(forKey: .value)
        }
    }
}

struct ReadsTwoInts: Codable, Equatable {

    init(first: Int, second: Int) {
        self.first = first
        self.second = second
    }

    let first: Int
    let second: Int

    init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.first = try container.decode(Int.self)
        self.second = try container.decode(Int.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(first)
        try container.encode(second)
    }
}

struct DecodeNilPastEnd: Codable, Equatable {

    init(first: Int) {
        self.first = first
    }

    let first: Int

    init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.first = try container.decode(Int.self)
        _ = try container.decodeNil()
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(first)
    }
}

struct SingleValueDate: Codable, Equatable {

    init(value: Date) {
        self.value = value
    }

    let value: Date

    init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.value = try container.decode(Date.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}

struct SingleValueData: Codable, Equatable {

    init(value: Data) {
        self.value = value
    }

    let value: Data

    init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.value = try container.decode(Data.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}

struct SingleValueURL: Codable, Equatable {

    init(value: URL) {
        self.value = value
    }

    let value: URL

    init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.value = try container.decode(URL.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}

struct SingleValueDecimal: Codable, Equatable {

    init(value: Decimal) {
        self.value = value
    }

    let value: Decimal

    init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.value = try container.decode(Decimal.self)
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(value)
    }
}

// MARK: - Container Reuse (Foundation Parity)

struct Coordinate: Codable, Equatable {
    let x: Int
    let y: Int
}

/// A type-tagged enum that flattens its payload into the *same* keyed container
/// it writes its discriminator into: `encode(to:)` requests a keyed container
/// here and then again inside `Coordinate.encode(to:)`. Foundation merges the
/// two requests into a single object.
enum TaggedGeometry: Codable, Equatable {

    case coordinate(Coordinate)
    case empty(label: String)

    enum CodingKeys: String, CodingKey {
        case kind
    }

    init(from decoder: any Decoder) throws {
        let kind = try decoder.container(keyedBy: CodingKeys.self).decode(String.self, forKey: .kind)
        switch kind {
        case "coordinate":
            self = try .coordinate(Coordinate(from: decoder))
        case let other:
            self = .empty(label: other)
        }
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case let .coordinate(coordinate):
            try container.encode("coordinate", forKey: .kind)
            try coordinate.encode(to: encoder)
        case let .empty(label):
            try container.encode(label, forKey: .kind)
        }
    }
}

/// Writes a header element into an unkeyed container, then delegates to an array
/// value that requests *another* unkeyed container from the same encoder.
/// Foundation appends both into one array.
struct PrefixedNumbers: Codable, Equatable {

    init(header: Int, rest: [Int]) {
        self.header = header
        self.rest = rest
    }

    let header: Int
    let rest: [Int]

    init(from decoder: any Decoder) throws {
        var container = try decoder.unkeyedContainer()
        header = try container.decode(Int.self)
        var rest = [Int]()
        while !container.isAtEnd {
            try rest.append(container.decode(Int.self))
        }
        self.rest = rest
    }

    func encode(to encoder: any Encoder) throws {
        var container = encoder.unkeyedContainer()
        try container.encode(header)
        try rest.encode(to: encoder)
    }
}

/// Touches a single-value container and then delegates to its wrapped value,
/// which requests *another* single-value container from the same encoder.
struct ForwardedSingleValue: Codable, Equatable {

    init(value: String) {
        self.value = value
    }

    let value: String

    init(from decoder: any Decoder) throws {
        value = try decoder.singleValueContainer().decode(String.self)
    }

    func encode(to encoder: any Encoder) throws {
        _ = encoder.singleValueContainer()
        try value.encode(to: encoder)
    }
}

/// Requests a keyed container and then an unkeyed container from the same
/// encoder. Mismatched container kinds trap in both JBird and Foundation.
struct MismatchedContainers: Encodable {

    enum CodingKeys: String, CodingKey {
        case a
    }

    func encode(to encoder: any Encoder) throws {
        var keyed = encoder.container(keyedBy: CodingKeys.self)
        try keyed.encode(1, forKey: .a)
        _ = encoder.unkeyedContainer()
    }
}

/// Writes two distinct values through two single-value containers vended by the
/// same encoder. The second write traps, matching Foundation.
struct DoubleSingleValueWrite: Encodable {

    func encode(to encoder: any Encoder) throws {
        var first = encoder.singleValueContainer()
        try first.encode(1)
        var second = encoder.singleValueContainer()
        try second.encode(2)
    }
}
