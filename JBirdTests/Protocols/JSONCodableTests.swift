// JBird
// JSONCodableTests.swift
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
import JBird
import Testing

@Suite("JSONCodable Tests")
struct JSONCodableTests {

    @Suite("JSON Conformance Tests")
    struct JSONTests {

        @Test("JSON Encode")
        func jsonEncode() {
            let value = JSON.string("Hello, World!")
            let json = value.encodeToJSON()
            #expect(value == json)
        }

        @Test("JSON Decode")
        func jsonDecode() throws {
            let json = JSON.string("Hello, World!")
            let value = try json.decode(into: JSON.self)
            #expect(json == value)
        }

    }

    @Suite("Bool Conformance Tests")
    struct BoolTests {

        @Test("True Bool Encode")
        func trueEncode() {
            let bool = true
            let json = bool.encodeToJSON()
            #expect(json == .literal(.true))
        }

        @Test("True Bool Decode")
        func trueDecode() throws {
            let json = JSON.literal(.true)
            let bool = try json.decode(into: Bool.self)
            #expect(bool == true)
        }

        @Test("False Bool Encode")
        func falseEncode() {
            let bool = false
            let json = bool.encodeToJSON()
            #expect(json == .literal(.false))
        }

        @Test("False Bool Decode")
        func falseDecode() throws {
            let json = JSON.literal(.false)
            let bool = try json.decode(into: Bool.self)
            #expect(bool == false)
        }

    }

    @Suite("Literal Conformance Tests")
    struct LiteralTests {

        @Test("True Literal Encode")
        func trueEncode() {
            let literal = JSON.Literal.true
            let json = literal.encodeToJSON()
            #expect(json == .literal(.true))
        }

        @Test("True Literal Decode")
        func trueDecode() throws {
            let json = JSON.literal(.true)
            let literal = try json.decode(into: JSON.Literal.self)
            #expect(literal == .true)
        }

        @Test("False Literal Encode")
        func falseEncode() {
            let literal = JSON.Literal.false
            let json = literal.encodeToJSON()
            #expect(json == .literal(.false))
        }

        @Test("False Literal Decode")
        func falseDecode() throws {
            let json = JSON.literal(.false)
            let literal = try json.decode(into: JSON.Literal.self)
            #expect(literal == .false)
        }

        @Test("Null Literal Encode")
        func nullEncode() {
            let literal = JSON.Literal.null
            let json = literal.encodeToJSON()
            #expect(json == .literal(.null))
        }

        @Test("Null Literal Decode")
        func nullDecode() throws {
            let json = JSON.literal(.null)
            let literal = try json.decode(into: JSON.Literal.self)
            #expect(literal == .null)
        }

    }

    @Suite("Int Conformance Tests")
    struct IntTests {

        @Test("Int Encode")
        func intEncode() {
            let int = 21
            let json = int.encodeToJSON()
            #expect(json == .numeric(.int(21)))
        }

        @Test("Int Decode")
        func intDecode() throws {
            let json = JSON.numeric(.int(21))
            let int = try json.decode(into: Int.self)
            #expect(int == 21)
        }

    }

    @Suite("Double Conformance Tests")
    struct DoubleTests {

        @Test("Double Encode")
        func doubleEncode() {
            let double = 2.1
            let json = double.encodeToJSON()
            #expect(json == .numeric(.double(2.1)))
        }

        @Test("Double Decode")
        func doubleDecode() throws {
            let json = JSON.numeric(.double(2.1))
            let double = try json.decode(into: Double.self)
            #expect(double == 2.1)
        }

    }

    @Suite("Numeric Conformance Tests")
    struct NumericTests {

        @Test("Int Numeric Encode")
        func intEncode() {
            let numeric = JSON.Numeric.int(21)
            let json = numeric.encodeToJSON()
            #expect(json == .numeric(.int(21)))
        }

        @Test("Int Numeric Decode")
        func intDecode() throws {
            let json = JSON.numeric(.int(21))
            let numeric = try json.decode(into: JSON.Numeric.self)
            #expect(numeric == .int(21))
        }

        @Test("Double Numeric Encode")
        func doubleEncode() {
            let numeric = JSON.Numeric.double(2.1)
            let json = numeric.encodeToJSON()
            #expect(json == .numeric(.double(2.1)))
        }

        @Test("Double Numeric Decode")
        func doubleDecode() throws {
            let json = JSON.numeric(.double(2.1))
            let numeric = try json.decode(into: JSON.Numeric.self)
            #expect(numeric == .double(2.1))
        }

    }

    @Suite("String Conformance Tests")
    struct StringTests {

        @Test("String Encode")
        func stringEncode() {
            let string = "foo"
            let json = string.encodeToJSON()
            #expect(json == .string("foo"))
        }

        @Test("String Decode")
        func stringDecode() throws {
            let json = JSON.string("bar")
            let string = try json.decode(into: String.self)
            #expect(string == "bar")
        }

    }

    @Suite("Array Conformance Tests")
    struct ArrayTests {

        @Test("Array Encode")
        func arrayEncode() {
            let array = ["foo", "bar"]
            let json = array.encodeToJSON()
            #expect(json == .array([.string("foo"), .string("bar")]))
        }

        @Test("Array Decode")
        func arrayDecode() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let array = try json.decode(into: [String].self)
            #expect(array == ["foo", "bar"])
        }

    }

    @Suite("Dictionary Conformance Tests")
    struct DictionaryTests {

        @Test("Dictionary Encode")
        func dictionaryEncode() {
            let dictionary = ["foo": true, "bar": false]
            let json = dictionary.encodeToJSON()
            #expect(json == .object(["foo": .literal(.true), "bar": .literal(.false)]))
        }

        @Test("Dictionary Decode")
        func dictionaryDecode() throws {
            let json = JSON.object(["foo": .literal(.true), "bar": .literal(.false)])
            let dictionary = try json.decode(into: [String: Bool].self)
            #expect(dictionary == ["foo": true, "bar": false])
        }

    }

    @Suite("RawRepresentable Conformance Tests")
    struct RawRepresentableTests {

        enum Test: String, JSONCodable {
            case foo
            case bar
        }

        @Test("RawRepresentable Encode")
        func rawRepresentableEncode() {
            let foo = Test.foo.encodeToJSON()
            let bar = Test.bar.encodeToJSON()
            #expect(foo == .string("foo"))
            #expect(bar == .string("bar"))
        }

        @Test("RawRepresentable Decode")
        func rawRepresentableDecode() throws {
            let fooJson = JSON.string("foo")
            let barJson = JSON.string("bar")
            let foo = try Test(json: fooJson)
            let bar = try Test(json: barJson)
            #expect(foo == .foo)
            #expect(bar == .bar)
            #expect(throws: JSONError.invalidRawRepresentable) {
                _ = try Test(json: "baz")
            }
        }

    }

    @Suite("Optional Conformance Tests")
    struct OptionalTests {

        @Test("Some Encode")
        func someEncode() {
            let some: Int? = 42
            let json = some.encodeToJSON()
            #expect(json == 42)
        }

        @Test("Some Decode")
        func someDecode() throws {
            let json: JSON = 42
            let optional = try json.decode(into: Int?.self)
            #expect(optional == 42)
        }

        @Test("None Encode")
        func noneEncode() {
            let none: Int? = nil
            let json = none.encodeToJSON()
            #expect(json == .null)
        }

        @Test("None Decode")
        func noneDecode() throws {
            let json: JSON = .null
            let optional = try json.decode(into: Int?.self)
            #expect(optional == nil)
        }

    }

    @Suite("Set Conformance Tests")
    struct SetTests {

        @Test("Set Encode")
        func arrayEncode() {
            let set: Set<String> = ["foo", "bar"]
            let json = set.encodeToJSON()
            #expect(json == .array([.string("foo"), .string("bar")]) || json == .array([.string("bar"), .string("foo")]))
        }

        @Test("Set Decode")
        func setDecode() throws {
            let json = JSON.array([.string("foo"), .string("bar")])
            let set = try json.decode(into: Set<String>.self)
            #expect(set == ["foo", "bar"])
        }

    }

    @Suite("URL Conformance Tests")
    struct URLConformance {

        @Test("URL Encode")
        func urlEncode() throws {
            let url = try #require(URL(string: "https://example.com"))
            let json = url.encodeToJSON()
            #expect(json == .string("https://example.com"))
        }

        @Test("URL Decode")
        func urlDecode() throws {
            let json = JSON.string("https://example.com")
            let url = try json.decode(into: URL.self)
            let expected = try #require(URL(string: "https://example.com"))
            #expect(url == expected)
        }

        @Test("Illegal URL Decode")
        func ullegalUrlDecode() throws {
            let json = JSON.string("")
            #expect(throws: JSONError.urlDecodingFailure("")) {
                _ = try json.decode(into: URL.self)
            }
        }

    }

    @Suite("UUID Conformance Tests")
    struct UUIDConformance {

        @Test("UUID Encode")
        func uuidEncode() throws {
            let uuid = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            let json = uuid.encodeToJSON()
            #expect(json == .string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
        }

        @Test("UUID Decode")
        func uuidDecode() throws {
            let json = JSON.string("E621E1F8-C36C-495A-93FC-0C247A3E6E5F")
            let uuid = try json.decode(into: UUID.self)
            let expected = try #require(UUID(uuidString: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F"))
            #expect(uuid == expected)
        }

        @Test("Illegal UUID Decode")
        func illegalUuidDecode() throws {
            let json = JSON.string("E6218-C-4A-C-0C243EF")
            #expect(throws: JSONError.uuidDecodingFailure("E6218-C-4A-C-0C243EF")) {
                _ = try json.decode(into: UUID.self)
            }
        }

    }

    @Test("Codable onvenience extensions")
    func codableExtensions() throws {
        let uuid = UUID()
        let data = try Data(encodingJSON: uuid)
        let decoded = try UUID(decodingJSON: data)
        #expect(uuid == decoded)
    }

}
