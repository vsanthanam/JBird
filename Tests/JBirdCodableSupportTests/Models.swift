// JBird
// Models.swift
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

struct Optionals<T>: Codable, ExpressibleByArrayLiteral where T: Codable {

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

struct Qux: Codable {
    let quux: Bool
    let grault: Double

    enum CodingKeys: CodingKey {
        case quux
        case grault
    }
}
