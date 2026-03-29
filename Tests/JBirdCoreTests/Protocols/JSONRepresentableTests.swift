// JBird
// JSONRepresentableTests.swift
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
import JBirdCore
import Testing

enum JSONRepresentableTests {

    struct JSONTests {

        @Test
        func `JSON JSON Value`() {
            let value = JSON.string("Hello, World!")
            let json = value.jsonValue
            #expect(value == json)
        }

        @Test
        func `JSON Convert`() throws {
            let json = JSON.string("Hello, World!")
            let value = try json.convert(into: JSON.self)
            #expect(json == value)
        }

    }

    struct BoolTests {

        @Test
        func `True Bool JSON Value`() {
            let bool = true
            let json = bool.jsonValue
            #expect(json == .bool(true))
        }

        @Test
        func `True Bool Convert`() throws {
            let json = JSON.bool(true)
            let bool = try json.convert(into: Bool.self)
            #expect(bool == true)
        }

        @Test
        func `False Bool JSON Value`() {
            let bool = false
            let json = bool.jsonValue
            #expect(json == .bool(false))
        }

        @Test
        func `False Bool Convert`() throws {
            let json = JSON.bool(false)
            let bool = try json.convert(into: Bool.self)
            #expect(bool == false)
        }

    }

//    @Suite("Literal Conformance Tests")
//    struct LiteralTests {
//
//        @Test("True Literal JSON Value")
//        func trueJSONValue() {
//            let literal = JSON.Literal.true
//            let json = literal.jsonValue
//            #expect(json == .bool(true))
//        }
//
//        @Test("True Literal Convert")
//        func trueConvert() throws {
//            let json = JSON.bool(true)
//            let literal = try json.convert(into: JSON.Literal.self)
//            #expect(literal == .true)
//        }
//
//        @Test("False Literal JSON Value")
//        func falseJSONValue() {
//            let literal = JSON.Literal.false
//            let json = literal.jsonValue
//            #expect(json == .bool(.false))
//        }
//
//        @Test("False Literal Convert")
//        func falseConvert() throws {
//            let json = JSON.bool(.false)
//            let literal = try json.convert(into: JSON.Literal.self)
//            #expect(literal == .false)
//        }
//
//        @Test("Null Literal JSON Value")
//        func nullJSONValue() {
//            let literal = JSON.Literal.null
//            let json = literal.jsonValue
//            #expect(json == .literal(.null))
//        }
//
//        @Test("Null Literal Convert")
//        func nullConvert() throws {
//            let json = JSON.literal(.null)
//            let literal = try json.convert(into: JSON.Literal.self)
//            #expect(literal == .null)
//        }
//
//    }

    struct IntTests {

        @Test
        func `Int JSON Value`() {
            let int = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int.self)
            #expect(int == 21)
        }

        @Test
        func `Int As Double Convert`() throws {
            let json = JSON.number(21)
            let double = try json.convert(into: Double.self)
            #expect(double == 21.0)
        }

    }

    struct DoubleTests {

        @Test
        func `Double JSON Value`() {
            let double = 2.1
            let json = double.jsonValue
            #expect(json == .number(2.1))
        }

        @Test
        func `Double Convert`() throws {
            let json = JSON.number(2.1)
            let double = try json.convert(into: Double.self)
            #expect(double == 2.1)
        }

        @Test
        func `Double Decode As Int`() throws {
            let json = JSON.number(4.0)
            let int = try json.convert(into: Int.self)
            #expect(int == 4)
        }

        @Test
        func `Double Decode As Int Fails For Fractional Values`() {
            let json = JSON.number(4.1)
            #expect(throws: JSON.OperationError.illegalIntegerConversion) {
                _ = try json.convert(into: Int.self)
            }
        }

    }

    struct NumberTests {

        @Test
        func `Int Number JSON Value`() {
            let number = JSON.Number(21)
            let json = number.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int Number Convert`() throws {
            let json = JSON.number(21)
            let number = try json.convert(into: JSON.Number.self)
            #expect(number == .init(21))
        }

        @Test
        func `Double Number JSON Value`() {
            let number = JSON.Number(2.1)
            let json = number.jsonValue
            #expect(json == .number(2.1))
        }

        @Test
        func `Double Number Convert`() throws {
            let json = JSON.number(2.1)
            let number = try json.convert(into: JSON.Number.self)
            #expect(number == .init(2.1))
        }

    }

    struct StringTests {

        @Test
        func `String JSON Value`() {
            let string = "foo"
            let json = string.jsonValue
            #expect(json == .string("foo"))
        }

        @Test
        func `String Convert`() throws {
            let json = JSON.string("bar")
            let string = try json.convert(into: String.self)
            #expect(string == "bar")
        }

    }

    struct ArrayTests {

        @Test
        func `Array JSON Value`() {
            let array = ["foo", "bar"]
            let json = array.jsonValue
            #expect(json == .array([.string("foo"), .string("bar")]))
        }

        @Test
        func `Array Convert`() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let array = try json.convert(into: [String].self)
            #expect(array == ["foo", "bar"])
        }

    }

    struct DictionaryTests {

        enum CustomKey: String, JSONKeyRepresentable {
            case foo
            case bar
        }

        @Test
        func `Dictionary JSON Value`() {
            let dictionary = [CustomKey.foo: true, CustomKey.bar: false]
            let json = dictionary.jsonValue
            #expect(json == .object(["foo": .bool(true), "bar": .bool(false)]))
        }

        @Test
        func `Dictionary Convert`() throws {
            let json = JSON.object(["foo": .bool(true), "bar": .bool(false)])
            let dictionary = try json.convert(into: [CustomKey: Bool].self)
            #expect(dictionary == [.foo: true, .bar: false])
        }

    }

    struct RawRepresentableTests {

        enum Test: String, JSONRepresentable {
            case foo
            case bar
        }

        @Test
        func `RawRepresentable JSON Value`() {
            let foo = Test.foo.jsonValue
            let bar = Test.bar.jsonValue
            #expect(foo == .string("foo"))
            #expect(bar == .string("bar"))
        }

        @Test
        func `RawRepresentable Convert`() throws {
            let fooJson = JSON.string("foo")
            let barJson = JSON.string("bar")
            let foo = try Test(json: fooJson)
            let bar = try Test(json: barJson)
            #expect(foo == .foo)
            #expect(bar == .bar)
            #expect(throws: JSON.OperationError.invalidRawRepresentable) {
                _ = try Test(json: "baz")
            }
        }

    }

    struct OptionalTests {

        @Test
        func `Some JSON Value`() {
            let some: Int? = 42
            let json = some.jsonValue
            #expect(json == 42)
        }

        @Test
        func `Some Convert`() throws {
            let json: JSON = 42
            let optional = try json.convert(into: Int?.self)
            #expect(optional == 42)
        }

        @Test
        func `None JSON Value`() {
            let none: Int? = nil
            let json = none.jsonValue
            #expect(json == .null)
        }

        @Test
        func `None Convert`() throws {
            let json: JSON = .null
            let optional = try json.convert(into: Int?.self)
            #expect(optional == nil)
        }

    }

    struct SetTests {

        @Test
        func `Set JSON Value`() {
            let set: Set = ["foo", "bar"]
            let json = set.jsonValue
            #expect(json == .array([.string("foo"), .string("bar")]) || json == .array([.string("bar"), .string("foo")]))
        }

        @Test
        func `Set Convert`() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let set = try json.convert(into: Set<String>.self)
            #expect(set == ["foo", "bar"])
        }

    }

    struct URLConformance {

        @Test
        func `URL JSON Value`() throws {
            let url = try #require(URL(string: "https://example.com"))
            let json = url.jsonValue
            #expect(json == .string("https://example.com"))
        }

        @Test
        func `URL Convert`() throws {
            let json = JSON.string("https://example.com")
            let url = try json.convert(into: URL.self)
            let expected = try #require(URL(string: "https://example.com"))
            #expect(url == expected)
        }

        @Test
        func `Illegal URL Convert`() throws {
            let json = JSON.string("")
            #expect(throws: JSON.OperationError.urlDecodingFailure("")) {
                _ = try json.convert(into: URL.self)
            }
        }

    }

    struct UUIDConformance {

        @Test
        func `UUID JSON Value`() throws {
            let uuid = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            let json = uuid.jsonValue
            #expect(json == .string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
        }

        @Test
        func `UUID Convert`() throws {
            let json = JSON.string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F")
            let uuid = try json.convert(into: UUID.self)
            let expected = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            #expect(uuid == expected)
        }

        @Test
        func `Illegal UUID Convert`() throws {
            let json = JSON.string("E6218-C-4A-C-0C243EF")
            #expect(throws: JSON.OperationError.uuidDecodingFailure("E6218-C-4A-C-0C243EF")) {
                _ = try json.convert(into: UUID.self)
            }
        }

    }

    struct Int8Tests {

        @Test
        func `Int8 JSON Value`() {
            let int: Int8 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int8 Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int8.self)
            #expect(int == 21)
        }

    }

    struct Int16Tests {

        @Test
        func `Int16 JSON Value`() {
            let int: Int16 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int16 Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int16.self)
            #expect(int == 21)
        }

    }

    struct Int32Tests {

        @Test
        func `Int32 JSON Value`() {
            let int: Int32 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int32 Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int32.self)
            #expect(int == 21)
        }

    }

    struct Int64Tests {

        @Test
        func `Int64 JSON Value`() {
            let int: Int64 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Int64 Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int64.self)
            #expect(int == 21)
        }

    }

    struct UIntTests {

        @Test
        func `UInt JSON Value`() {
            let int: UInt = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `UInt Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt.self)
            #expect(int == 21)
        }

    }

    struct UInt8Tests {

        @Test
        func `UInt8 JSON Value`() {
            let int: UInt8 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `uint9 convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt8.self)
            #expect(int == 21)
        }

    }

    struct UInt16Tests {

        @Test
        func `uint16json value`() {
            let int: UInt16 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `uint16 convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt16.self)
            #expect(int == 21)
        }

    }

    struct UInt32Tests {

        @Test
        func `UInt32 JSON Value`() {
            let int: UInt32 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `uint32 convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt32.self)
            #expect(int == 21)
        }

    }

    struct UInt64Tests {

        @Test
        func `uint64json value`() {
            let int: UInt64 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `UInt64 Convert`() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt64.self)
            #expect(int == 21)
        }

    }

    struct FloatTests {

        @Test
        func `Float JSON Value`() {
            let float: Float = 0.5
            let json = float.jsonValue
            #expect(json == .number(0.5))
        }

        @Test
        func `Float Convert`() throws {
            let json = JSON.number(0.5)
            let float = try json.convert(into: Float.self)
            #expect(float == 0.5)
        }

    }

    struct DecimalTests {

        @Test
        func `Decimal Whole JSON Value`() {
            let decimal: Decimal = 21
            let json = decimal.jsonValue
            #expect(json == .number(21))
        }

        @Test
        func `Decimal Whole Convert`() throws {
            let json = JSON.number(21)
            let decimal = try json.convert(into: Decimal.self)
            #expect(decimal == 21)
        }

        @Test
        func `Decimal Float JSON Value`() {
            let decimal: Decimal = 2.1
            let json = decimal.jsonValue
            #expect(json == .number(2.1))
        }

        @Test
        func `Decimal Float Convert`() throws {
            let json = JSON.number(2.1)
            let decimal = try json.convert(into: Decimal.self)
            #expect(decimal == 2.1)
        }
    }
}
