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

@Suite("JSONRepresentable Tests")
struct JSONRepresentableTests {

    @Suite("JSON Conformance Tests")
    struct JSONTests {

        @Test("JSON JSON Value")
        func jsonJSONValue() {
            let value = JSON.string("Hello, World!")
            let json = value.jsonValue
            #expect(value == json)
        }

        @Test("JSON Convert")
        func jsonConvert() throws {
            let json = JSON.string("Hello, World!")
            let value = try json.convert(into: JSON.self)
            #expect(json == value)
        }

    }

    @Suite("Bool Conformance Tests")
    struct BoolTests {

        @Test("True Bool JSON Value")
        func trueJSONValue() {
            let bool = true
            let json = bool.jsonValue
            #expect(json == .bool(true))
        }

        @Test("True Bool Convert")
        func trueConvert() throws {
            let json = JSON.bool(true)
            let bool = try json.convert(into: Bool.self)
            #expect(bool == true)
        }

        @Test("False Bool JSON Value")
        func falseJSONValue() {
            let bool = false
            let json = bool.jsonValue
            #expect(json == .bool(false))
        }

        @Test("False Bool Convert")
        func falseConvert() throws {
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

    @Suite("Int Conformance Tests")
    struct IntTests {

        @Test("Int JSON Value")
        func intJSONValue() {
            let int = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int Convert")
        func intConvert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int.self)
            #expect(int == 21)
        }

        @Test("Int As Double Convert")
        func intDecodeAasDouble() throws {
            let json = JSON.number(21)
            let double = try json.convert(into: Double.self)
            #expect(double == 21.0)
        }

    }

    @Suite("Double Conformance Tests")
    struct DoubleTests {

        @Test("Double JSON Value")
        func doubleJSONValue() {
            let double = 2.1
            let json = double.jsonValue
            #expect(json == .number(2.1))
        }

        @Test("Double Convert")
        func doubleConvert() throws {
            let json = JSON.number(2.1)
            let double = try json.convert(into: Double.self)
            #expect(double == 2.1)
        }

        @Test("Double Decode As Int")
        func doubleDecodeAsInt() throws {
            let json = JSON.number(4.0)
            let int = try json.convert(into: Int.self)
            #expect(int == 4)
        }

        @Test("Double Decode As Int Fails For Fractional Values")
        func doubleDecodeAsIntFractionalFailure() {
            let json = JSON.number(4.1)
            #expect(throws: JSON.OperationError.illegalIntegerConversion) {
                _ = try json.convert(into: Int.self)
            }
        }

    }

    @Suite("Number Conformance Tests")
    struct NumberTests {

        @Test("Int Number JSON Value")
        func intJSONValue() {
            let number = JSON.Number(21)
            let json = number.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int Number Convert")
        func intConvert() throws {
            let json = JSON.number(21)
            let number = try json.convert(into: JSON.Number.self)
            #expect(number == .init(21))
        }

        @Test("Double Number JSON Value")
        func doubleJSONValue() {
            let number = JSON.Number(2.1)
            let json = number.jsonValue
            #expect(json == .number(2.1))
        }

        @Test("Double Number Convert")
        func doubleConvert() throws {
            let json = JSON.number(2.1)
            let number = try json.convert(into: JSON.Number.self)
            #expect(number == .init(2.1))
        }

    }

    @Suite("String Conformance Tests")
    struct StringTests {

        @Test("String JSON Value")
        func stringJSONValue() {
            let string = "foo"
            let json = string.jsonValue
            #expect(json == .string("foo"))
        }

        @Test("String Convert")
        func stringConvert() throws {
            let json = JSON.string("bar")
            let string = try json.convert(into: String.self)
            #expect(string == "bar")
        }

    }

    @Suite("Array Conformance Tests")
    struct ArrayTests {

        @Test("Array JSON Value")
        func arrayJSONValue() {
            let array = ["foo", "bar"]
            let json = array.jsonValue
            #expect(json == .array([.string("foo"), .string("bar")]))
        }

        @Test("Array Convert")
        func arrayConvert() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let array = try json.convert(into: [String].self)
            #expect(array == ["foo", "bar"])
        }

    }

    @Suite("Dictionary Conformance Tests")
    struct DictionaryTests {

        enum CustomKey: String, JSONKeyRepresentable {
            case foo
            case bar
        }

        @Test("Dictionary JSON Value")
        func dictionaryJSONValue() {
            let dictionary = [CustomKey.foo: true, CustomKey.bar: false]
            let json = dictionary.jsonValue
            #expect(json == .object(["foo": .bool(true), "bar": .bool(false)]))
        }

        @Test("Dictionary Convert")
        func dictionaryConvert() throws {
            let json = JSON.object(["foo": .bool(true), "bar": .bool(false)])
            let dictionary = try json.convert(into: [CustomKey: Bool].self)
            #expect(dictionary == [.foo: true, .bar: false])
        }

    }

    @Suite("RawRepresentable Conformance Tests")
    struct RawRepresentableTests {

        enum Test: String, JSONRepresentable {
            case foo
            case bar
        }

        @Test("RawRepresentable JSON Value")
        func rawRepresentableJSONValue() {
            let foo = Test.foo.jsonValue
            let bar = Test.bar.jsonValue
            #expect(foo == .string("foo"))
            #expect(bar == .string("bar"))
        }

        @Test("RawRepresentable Convert")
        func rawRepresentableConvert() throws {
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

    @Suite("Optional Conformance Tests")
    struct OptionalTests {

        @Test("Some JSON Value")
        func someJSONValue() {
            let some: Int? = 42
            let json = some.jsonValue
            #expect(json == 42)
        }

        @Test("Some Convert")
        func someConvert() throws {
            let json: JSON = 42
            let optional = try json.convert(into: Int?.self)
            #expect(optional == 42)
        }

        @Test("None JSON Value")
        func noneJSONValue() {
            let none: Int? = nil
            let json = none.jsonValue
            #expect(json == .null)
        }

        @Test("None Convert")
        func noneConvert() throws {
            let json: JSON = .null
            let optional = try json.convert(into: Int?.self)
            #expect(optional == nil)
        }

    }

    @Suite("Set Conformance Tests")
    struct SetTests {

        @Test("Set JSON Value")
        func arrayJSONValue() {
            let set: Set<String> = ["foo", "bar"]
            let json = set.jsonValue
            #expect(json == .array([.string("foo"), .string("bar")]) || json == .array([.string("bar"), .string("foo")]))
        }

        @Test("Set Convert")
        func setConvert() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let set = try json.convert(into: Set<String>.self)
            #expect(set == ["foo", "bar"])
        }

    }

    @Suite("URL Conformance Tests")
    struct URLConformance {

        @Test("URL JSON Value")
        func urlJSONValue() throws {
            let url = try #require(URL(string: "https://example.com"))
            let json = url.jsonValue
            #expect(json == .string("https://example.com"))
        }

        @Test("URL Convert")
        func urlConvert() throws {
            let json = JSON.string("https://example.com")
            let url = try json.convert(into: URL.self)
            let expected = try #require(URL(string: "https://example.com"))
            #expect(url == expected)
        }

        @Test("Illegal URL Convert")
        func illegalUrlConvert() throws {
            let json = JSON.string("")
            #expect(throws: JSON.OperationError.urlDecodingFailure("")) {
                _ = try json.convert(into: URL.self)
            }
        }

    }

    @Suite("UUID Conformance Tests")
    struct UUIDConformance {

        @Test("UUID JSON Value")
        func uuidJSONValue() throws {
            let uuid = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            let json = uuid.jsonValue
            #expect(json == .string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
        }

        @Test("UUID Convert")
        func uuidConvert() throws {
            let json = JSON.string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F")
            let uuid = try json.convert(into: UUID.self)
            let expected = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            #expect(uuid == expected)
        }

        @Test("Illegal UUID Convert")
        func illegalUuidConvert() throws {
            let json = JSON.string("E6218-C-4A-C-0C243EF")
            #expect(throws: JSON.OperationError.uuidDecodingFailure("E6218-C-4A-C-0C243EF")) {
                _ = try json.convert(into: UUID.self)
            }
        }

    }

    @Suite("Int8 Conformance Tests")
    struct Int8Tests {

        @Test("Int8 JSON Value")
        func int8JSONValue() {
            let int: Int8 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int8 Convert")
        func int8Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int8.self)
            #expect(int == 21)
        }

    }

    @Suite("Int16 Conformance Tests")
    struct Int16Tests {

        @Test("Int16 JSON Value")
        func int16JSONValue() {
            let int: Int16 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int16 Convert")
        func int16Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int16.self)
            #expect(int == 21)
        }

    }

    @Suite("Int32 Conformance Tests")
    struct Int32Tests {

        @Test("Int32 JSON Value")
        func int32JSONValue() {
            let int: Int32 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int32 Convert")
        func int32Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int32.self)
            #expect(int == 21)
        }

    }

    @Suite("Int64 Conformance Tests")
    struct Int64Tests {

        @Test("Int64 JSON Value")
        func int64JSONValue() {
            let int: Int64 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("Int64 Convert")
        func int64Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: Int64.self)
            #expect(int == 21)
        }

    }

    @Suite("UInt Conformance Tests")
    struct UIntTests {

        @Test("UInt JSON Value")
        func uintJSONValue() {
            let int: UInt = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("UInt Convert")
        func uintConvert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt.self)
            #expect(int == 21)
        }

    }

    @Suite("UInt8 Conformance Tests")
    struct UInt8Tests {

        @Test("UInt8 JSON Value")
        func uint8JSONValue() {
            let int: UInt8 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("UInt Convert")
        func uint9Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt8.self)
            #expect(int == 21)
        }

    }

    @Suite("UInt16 Conformance Tests")
    struct UInt16Tests {

        @Test("UInt JSON Value")
        func uint16JSONValue() {
            let int: UInt16 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("UInt Convert")
        func uint16Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt16.self)
            #expect(int == 21)
        }

    }

    @Suite("UInt32 Conformance Tests")
    struct UInt32Tests {

        @Test("UInt32 JSON Value")
        func uint32JSONValue() {
            let int: UInt32 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("UInt Convert")
        func uint32Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt32.self)
            #expect(int == 21)
        }

    }

    @Suite("UInt64 Conformance Tests")
    struct UInt64Tests {

        @Test("UInt JSON Value")
        func uint64JSONValue() {
            let int: UInt64 = 21
            let json = int.jsonValue
            #expect(json == .number(21))
        }

        @Test("UInt64 Convert")
        func uint64Convert() throws {
            let json = JSON.number(21)
            let int = try json.convert(into: UInt64.self)
            #expect(int == 21)
        }

    }

    @Suite("Float Conformance Tests")
    struct FloatTests {

        @Test("Float JSON Value")
        func doubleJSONValue() {
            let float: Float = 0.5
            let json = float.jsonValue
            #expect(json == .number(0.5))
        }

        @Test("Float Convert")
        func floatConvert() throws {
            let json = JSON.number(0.5)
            let float = try json.convert(into: Float.self)
            #expect(float == 0.5)
        }

    }

    @Suite("Decimal Conformance Tests")
    struct DecimalTests {

        @Test("Decimal Whole JSON Value")
        func decimalWholeJSONValue() {
            let decimal: Decimal = 21
            let json = decimal.jsonValue
            #expect(json == .number(21))
        }

        @Test("Decimal Whole Convert")
        func decimalWholeConvert() throws {
            let json = JSON.number(21)
            let decimal = try json.convert(into: Decimal.self)
            #expect(decimal == 21)
        }

        @Test("Decimal Float JSON Value")
        func decimalFloatJSONValue() {
            let decimal: Decimal = 2.1
            let json = decimal.jsonValue
            #expect(json == .number(2.1))
        }

        @Test("Decimal Float Convert")
        func decimalFloatConvert() throws {
            let json = JSON.number(2.1)
            let decimal = try json.convert(into: Decimal.self)
            #expect(decimal == 2.1)
        }
    }
}
