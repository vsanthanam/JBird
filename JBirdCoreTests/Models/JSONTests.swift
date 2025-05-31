// JBird
// JSONTests.swift
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

@Suite("JSON Tests")
struct JSONTests {

    @Test("JSON Count")
    func jsonCount() throws {
        let jsonObject = JSON.object(["foo": "bar"])
        let jsonArray = JSON.array(["foo", "bar"])
        let emptyArray: JSON = []
        let emptyObject: JSON = [:]
        let number: JSON = 1
        let string: JSON = "foo"
        let literal: JSON = false

        try #expect(jsonObject.count == 1)
        try #expect(jsonArray.count == 2)
        try #expect(jsonObject.isEmpty == false)
        try #expect(jsonArray.isEmpty == false)
        try #expect(emptyArray.isEmpty == true)
        try #expect(emptyObject.isEmpty == true)

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try number.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try number.isEmpty
        }

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try string.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try string.isEmpty
        }

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try literal.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try literal.isEmpty
        }
    }

    @Test("Untyped JSON")
    func untypedJSON() throws {
        let `true`: JSON = true
        let `false`: JSON = false
        let null: JSON = nil
        let string: JSON = "Hello, world!"
        let int: JSON = 42
        let double: JSON = 3.14
        let array: JSON = ["apple", "banana", "cherry"]
        let object: JSON = ["name": "John", "age": 30]
        #expect(`true` == true)
        #expect(`false` == false)
        #expect(null.untyped == nil)
        #expect(string.untyped is String)
        #expect(int.untyped is Int)
        #expect(double.untyped is Double)
        #expect(array.untyped is [Any])
        #expect(object.untyped is [String: Any])
    }

    @Suite("Value Checking Tests")
    struct ValueCheckingTests {

        @Test("Null Value Check")
        func nullValue() {
            let nullValue: JSON = .null
            #expect(nullValue.isNull)
            #expect(nullValue.isLiteral)
            #expect(!nullValue.isBool)
            #expect(!nullValue.isNumber)
            #expect(!nullValue.isInt)
            #expect(!nullValue.isDouble)
            #expect(!nullValue.isString)
            #expect(!nullValue.isObject)
            #expect(!nullValue.isArray)
        }

        @Test("Bool Value Check")
        func boolValue() {
            let trueValue: JSON = true
            let falseValue: JSON = false
            #expect(!trueValue.isNull)
            #expect(trueValue.isLiteral)
            #expect(trueValue.isBool)
            #expect(!trueValue.isNumber)
            #expect(!trueValue.isInt)
            #expect(!trueValue.isDouble)
            #expect(!trueValue.isString)
            #expect(!trueValue.isObject)
            #expect(!trueValue.isArray)
            #expect(!falseValue.isNull)
            #expect(falseValue.isLiteral)
            #expect(falseValue.isBool)
            #expect(!falseValue.isNumber)
            #expect(!falseValue.isInt)
            #expect(!falseValue.isDouble)
            #expect(!falseValue.isString)
            #expect(!falseValue.isObject)
            #expect(!falseValue.isArray)
        }

        @Test("Int Value Check")
        func intValue() {
            let intValue: JSON = 42
            #expect(!intValue.isNull)
            #expect(!intValue.isLiteral)
            #expect(!intValue.isBool)
            #expect(intValue.isNumber)
            #expect(intValue.isInt)
            #expect(!intValue.isDouble)
            #expect(!intValue.isString)
            #expect(!intValue.isObject)
            #expect(!intValue.isArray)
        }

        @Test("Double Value Check")
        func doubleValue() {
            let doubleValue: JSON = 4.2
            #expect(!doubleValue.isNull)
            #expect(!doubleValue.isLiteral)
            #expect(!doubleValue.isBool)
            #expect(doubleValue.isNumber)
            #expect(!doubleValue.isInt)
            #expect(doubleValue.isDouble)
            #expect(!doubleValue.isString)
            #expect(!doubleValue.isObject)
            #expect(!doubleValue.isArray)
        }

        @Test("String Value Check")
        func stringValue() {
            let stringValue: JSON = "Hello, World!"
            #expect(!stringValue.isNull)
            #expect(!stringValue.isLiteral)
            #expect(!stringValue.isBool)
            #expect(!stringValue.isNumber)
            #expect(!stringValue.isInt)
            #expect(!stringValue.isDouble)
            #expect(stringValue.isString)
            #expect(!stringValue.isObject)
            #expect(!stringValue.isArray)
        }

        @Test("Array Value Check")
        func arrayValue() {
            let arrayValue: JSON = [1, 2, 3]
            #expect(!arrayValue.isNull)
            #expect(!arrayValue.isLiteral)
            #expect(!arrayValue.isBool)
            #expect(!arrayValue.isNumber)
            #expect(!arrayValue.isInt)
            #expect(!arrayValue.isDouble)
            #expect(!arrayValue.isString)
            #expect(!arrayValue.isObject)
            #expect(arrayValue.isArray)
        }

        @Test("Object Value Check")
        func objectValue() {
            let objectValue: JSON = ["key": "value"]
            #expect(!objectValue.isNull)
            #expect(!objectValue.isLiteral)
            #expect(!objectValue.isBool)
            #expect(!objectValue.isNumber)
            #expect(!objectValue.isInt)
            #expect(!objectValue.isDouble)
            #expect(!objectValue.isString)
            #expect(objectValue.isObject)
            #expect(!objectValue.isArray)
        }
    }

    @Suite("Enum Value Access Tests")
    struct EnumValueAccessTests {

        @Test("Object value access")
        func objectValue() throws {
            let jsonObject = JSON.object(["foo": "bar"])
            let nonObjectJson = JSON.string("foo")
            let object = try jsonObject.objectValue
            #expect(object == ["foo": "bar"])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try nonObjectJson.objectValue
            }
        }

        @Test("Array value access")
        func arrayValue() throws {
            let jsonArray = JSON.array(["foo", "bar"])
            let nonArrayJson = JSON.string("foo")
            let array = try jsonArray.arrayValue
            #expect(array == ["foo", "bar"])
            #expect(throws: JSONError.illegalArrayConversion) {
                _ = try nonArrayJson.arrayValue
            }
        }

        @Test("String value access")
        func stringValue() throws {
            let jsonString = JSON.string("foo")
            let nonStringJson = JSON.object(["foo": "bar"])
            let string = try jsonString.stringValue
            #expect(string == "foo")
            #expect(throws: JSONError.illegalStringConversion) {
                _ = try nonStringJson.stringValue
            }
        }

        @Test("Number value access")
        func numberValue() throws {
            let jsonNumber = JSON.number(.int(123))
            let nonNumberJson = JSON.string("foo")
            let number = try jsonNumber.numberValue
            #expect(number == .int(123))
            #expect(throws: JSONError.illegalNumberConversion) {
                _ = try nonNumberJson.numberValue
            }
        }

        @Test("Literal value access")
        func literalValue() throws {
            let jsonLiteral = JSON.literal(.true)
            let nonLiteralJson = JSON.string("foo")
            let literal = try jsonLiteral.literalValue
            #expect(literal == .true)
            #expect(throws: JSONError.illegalLiteralConversion) {
                _ = try nonLiteralJson.literalValue
            }
        }
    }

    @Suite("Subtype Helper Tests")
    struct SubtypeHelperTests {

        @Test("Bool access tests")
        func boolValue() throws {
            let jsonBool = JSON.literal(.true)
            let nonBoolJson = JSON.string("foo")
            let nonBoolButLiteralJSON = JSON.literal(.null)
            let bool = try jsonBool.boolValue
            #expect(bool == true)
            #expect(throws: JSONError.illegalLiteralConversion) {
                _ = try nonBoolJson.boolValue
            }
            #expect(throws: JSONError.illegalBoolConversion) {
                _ = try nonBoolButLiteralJSON.boolValue
            }
        }

        @Test("Int access tests")
        func intValue() throws {
            let jsonInt = JSON.number(.int(123))
            let nonIntJson = JSON.string("foo")
            let nonIntButNumberJSON = JSON.number(.double(123.456))
            let int = try jsonInt.intValue
            #expect(int == 123)
            #expect(throws: JSONError.illegalNumberConversion) {
                _ = try nonIntJson.intValue
            }
            #expect(throws: JSONError.illegalIntConversion) {
                _ = try nonIntButNumberJSON.intValue
            }
        }

        @Test("Double access tests")
        func doubleValue() throws {
            let jsonDouble = JSON.number(.double(123.456))
            let nonDoubleJson = JSON.string("foo")
            let nonDoubleButNumberJSON = JSON.number(.int(123))
            let double = try jsonDouble.doubleValue
            #expect(double == 123.456)
            #expect(throws: JSONError.illegalNumberConversion) {
                _ = try nonDoubleJson.doubleValue
            }
            #expect(throws: JSONError.illegalDoubleConversion) {
                _ = try nonDoubleButNumberJSON.doubleValue
            }
        }

    }

    @Suite("Literal expression support")
    struct LiteralExpressionTests {

        @Test("Literal null")
        func literalNil() {
            let literal: JSON = nil
            let standard = JSON.literal(.null)
            #expect(literal == standard)
        }

        @Test("Literal true")
        func literalTrue() {
            let literal: JSON = true
            let standard = JSON.literal(.true)
            #expect(literal == standard)
        }

        @Test("Literal false")
        func literalFalse() {
            let literal: JSON = false
            let standard = JSON.literal(.false)
            #expect(literal == standard)
        }

        @Test("Literal int")
        func literalInt() {
            let literal: JSON = 123
            let standard = JSON.number(.int(123))
            #expect(literal == standard)
        }

        @Test("Literal double")
        func literalDouble() {
            let literal: JSON = 123.456
            let standard = JSON.number(.double(123.456))
            #expect(literal == standard)
        }

        @Test("Literal string")
        func literalString() {
            let literal: JSON = "foo"
            let standard = JSON.string("foo")
            #expect(literal == standard)
        }

        @Test("Literal array")
        func literalArray() {
            let literal: JSON = ["foo", "bar"]
            let standard = JSON.array(["foo", "bar"])
            #expect(literal == standard)
        }

        @Test("Literal object")
        func literalObject() {
            let literal: JSON = ["foo": "bar"]
            let standard = JSON.object(["foo": "bar"])
            #expect(literal == standard)
        }

    }

    @Suite("Initializer Tests")
    struct InitializerTests {

        @Test("Initialize from String")
        func stringInit() throws {
            let jsonString = "{\"foo\":\"bar\"}"
            let json = try JSON(jsonString: jsonString)
            #expect(json == ["foo": "bar"])
        }
    }

    @Test("Subcript Tests")
    func subscriptAccess() throws {
        let json: JSON = [
            "foo": [1, 2, 3]
        ]

        #expect(try json["foo"][1] == 2)
        #expect(try json[.key("foo")][.index(1)] == 2)
    }

    @Suite("Introspection Tests")
    struct IntrospectionTests {

        @Test("Value at path tests")
        func valueAtPath() throws {
            let json: JSON = [
                "foo": [
                    "bar": [1, 2, 3]
                ]
            ]

            let value = try json.value(atPath: [.key("foo"), .key("bar"), .index(1)])
            #expect(value == 2)
            #expect(throws: JSONError.invalidSubscript(.key("qux"))) {
                _ = try json.value(atPath: [.key("foo"), .key("bar"), .key("qux")])
            }
            #expect(throws: JSONError.keyNotFound("baz")) {
                _ = try json.value(atPath: [.key("foo"), .key("baz")])
            }
            #expect(throws: JSONError.indexOutOfBounds(5)) {
                _ = try json.value(atPath: [.key("foo"), .key("bar"), .index(5)])
            }
        }

        @available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
        @Test("Value at path tests (parameter packs)")
        func valueAtPathWithPacks() throws {
            let json: JSON = [
                "foo": [
                    "bar": [1, 2, 3]
                ]
            ]

            let value = try json.value(atPath: "foo", "bar", 1)
            #expect(value == 2)
            #expect(throws: JSONError.invalidSubscript(.key("qux"))) {
                _ = try json.value(atPath: "foo", "bar", "qux")
            }
            #expect(throws: JSONError.keyNotFound("baz")) {
                _ = try json.value(atPath: "foo", "baz")
            }
            #expect(throws: JSONError.indexOutOfBounds(5)) {
                _ = try json.value(atPath: "foo", "bar", 5)
            }
        }

        @Test("Value for key tests")
        func valueForKey() throws {
            let json: JSON = [
                "foo": "bar",
                "baz": 123
            ]

            enum Keys: String {
                case foo
                case baz
            }

            #expect(try json.value(forKey: "foo") == "bar")
            #expect(try json.value(forKey: "baz") == 123)
            #expect(try json.value(forKey: Keys.foo) == "bar")
            #expect(try json.value(forKey: Keys.baz) == 123)
            #expect(throws: JSONError.keyNotFound("qux")) {
                _ = try json.value(forKey: "qux")
            }
        }

        @Test("Value at index tests")
        func valueAtIndex() throws {
            let json: JSON = [1, "bar", true]

            enum Indexes: Int {
                case first
                case second
                case third
            }

            #expect(try json.value(atIndex: 0) == 1)
            #expect(try json.value(atIndex: 1) == "bar")
            #expect(try json.value(atIndex: 2) == true)
            #expect(try json.value(atIndex: Indexes.first) == 1)
            #expect(try json.value(atIndex: Indexes.second) == "bar")
            #expect(try json.value(atIndex: Indexes.third) == true)
            #expect(throws: JSONError.indexOutOfBounds(3)) {
                _ = try json.value(atIndex: 3)
            }
        }

        @Test("Value for subscript tests")
        func valueForSubscript() throws {
            let jsonObject: JSON = [
                "foo": "bar",
                "baz": 123
            ]

            let jsonArray: JSON = [1, "bar", true]

            #expect(try jsonObject.value(forSubscript: "foo") == "bar")
            #expect(try jsonObject.value(forSubscript: "baz") == 123)
            #expect(try jsonObject.value(forSubscript: .key("foo")) == "bar")
            #expect(try jsonObject.value(forSubscript: .key("baz")) == 123)
            #expect(try jsonArray.value(forSubscript: 0) == 1)
            #expect(try jsonArray.value(forSubscript: 1) == "bar")
            #expect(try jsonArray.value(forSubscript: 2) == true)
            #expect(try jsonArray.value(forSubscript: .index(0)) == 1)
            #expect(try jsonArray.value(forSubscript: .index(1)) == "bar")
            #expect(try jsonArray.value(forSubscript: .index(2)) == true)
            #expect(throws: JSONError.invalidSubscript(.key("qux"))) {
                _ = try jsonArray.value(forSubscript: "qux")
            }
            #expect(throws: JSONError.invalidSubscript(.index(3))) {
                _ = try jsonObject.value(forSubscript: 3)
            }
        }

        @Test("Contains value tests")
        func containsValue() {
            let jsonObject: JSON = ["foo": "bar"]
            let jsonArray: JSON = [1, 2, 3]

            enum Keys: String {
                case foo
                case baz
            }

            enum Indexes: Int {
                case first = 1
                case second = 5
            }

            #expect(jsonObject.containsValue(forKey: "foo"))
            #expect(!jsonObject.containsValue(forKey: "baz"))
            #expect(jsonObject.containsValue(forSubscript: .key("foo")))
            #expect(!jsonObject.containsValue(forSubscript: .key("baz")))
            #expect(jsonObject.containsValue(forKey: Keys.foo))
            #expect(!jsonObject.containsValue(forKey: Keys.baz))
            #expect(jsonObject.containsValue(forSubscript: "foo"))
            #expect(!jsonObject.containsValue(forSubscript: "baz"))

            #expect(jsonArray.containsValue(atIndex: 1))
            #expect(!jsonArray.containsValue(atIndex: 5))
            #expect(jsonArray.containsValue(forSubscript: .index(1)))
            #expect(!jsonArray.containsValue(forSubscript: .index(5)))
            #expect(jsonArray.containsValue(atIndex: Indexes.first))
            #expect(!jsonArray.containsValue(atIndex: Indexes.second))
            #expect(jsonArray.containsValue(forSubscript: 1))
            #expect(!jsonArray.containsValue(forSubscript: 5))

            #expect(!jsonObject.containsValue(atIndex: 0))
            #expect(!jsonArray.containsValue(forKey: "foo"))
        }

    }

    @Suite("JSON mutation tests")
    struct MutationTests {

        @Test("Set value for key tests")
        func setValueForKey() throws {
            var json: JSON = ["foo": "bar"]

            enum Keys: String {
                case key
                case qux
            }

            try json.setValue("baz", forKey: "qux")
            #expect(json == ["foo": "bar", "qux": "baz"])

            try json.setValue("bar", forKey: Keys.qux)
            #expect(json == ["foo": "bar", "qux": "bar"])

            var nonObjectJson: JSON = "string"
            #expect(throws: JSONError.invalidSubscript(JSON.Subscript("key"))) {
                try nonObjectJson.setValue("value", forKey: "key")
            }
            #expect(throws: JSONError.invalidSubscript(JSON.Subscript("key"))) {
                try nonObjectJson.setValue("value", forKey: Keys.key)
            }
        }

        @Test("Set value at index tests")
        func setValueAtIndex() throws {
            var json: JSON = [1, 2, 3]

            enum Indexes: Int {
                case first = 0
                case second = 1
                case third = 5
            }

            try json.setValue(4, atIndex: 1)
            #expect(json == [1, 4, 3])

            try json.setValue(6, atIndex: Indexes.second)
            #expect(json == [1, 6, 3])

            #expect(throws: JSONError.indexOutOfBounds(5)) {
                try json.setValue(5, atIndex: 5)
            }
            #expect(throws: JSONError.indexOutOfBounds(5)) {
                try json.setValue(5, atIndex: Indexes.third)
            }

            var nonArrayJson: JSON = "string"
            #expect(throws: JSONError.invalidSubscript(JSON.Subscript(0))) {
                try nonArrayJson.setValue("value", atIndex: 0)
            }
            #expect(throws: JSONError.invalidSubscript(JSON.Subscript(0))) {
                try nonArrayJson.setValue("value", atIndex: Indexes.first)
            }
        }

        @Test("Set value for subscript tests")
        func setValueForSubscript() throws {
            var jsonObject: JSON = ["foo": "bar"]
            var jsonArray: JSON = [1, 2, 3]

            try jsonObject.setValue("qux", forSubscript: .key("baz"))
            #expect(jsonObject == ["foo": "bar", "baz": "qux"])
            try jsonObject.setValue("quux", forSubscript: "baz")
            #expect(jsonObject == ["foo": "bar", "baz": "quux"])

            try jsonArray.setValue(4, forSubscript: .index(1))
            #expect(jsonArray == [1, 4, 3])
            try jsonArray.setValue(5, forSubscript: 1)
            #expect(jsonArray == [1, 5, 3])
        }

        @Test("Array append and insert")
        func arrayAppendAndInsert() throws {
            var json: JSON = [1, 2, 3]

            enum Indexes: Int {
                case first = 0
            }

            try json.append(4)
            #expect(json == [1, 2, 3, 4])

            try json.append(contentsOf: json)
            #expect(json == [1, 2, 3, 4, 1, 2, 3, 4])

            try json.append(contentsOf: [true])
            #expect(json == [1, 2, 3, 4, 1, 2, 3, 4, true])

            try json.insert(5, at: 2)
            #expect(json == [1, 2, 5, 3, 4, 1, 2, 3, 4, true])

            try json.insert(3, at: Indexes.first)
            #expect(json == [3, 1, 2, 5, 3, 4, 1, 2, 3, 4, true])

            #expect(throws: JSONError.indexOutOfBounds(11)) {
                try json.insert(6, at: 11)
            }

            var nonArrayJson: JSON = "string"
            #expect(throws: JSONError.illegalArrayConversion) {
                try nonArrayJson.append(1)
            }
        }

        @Test("Remove value tests")
        func removeValue() throws {
            var jsonObject: JSON = ["foo": 1, "bar": 2, "qux": 3, "quux": 4]
            var jsonArray: JSON = [1, 2, 3, 4]

            enum Keys: String {
                case quux
            }

            enum Indexes: Int {
                case first = 0
            }

            try jsonObject.removeValue(forKey: "foo")
            #expect(jsonObject == ["bar": 2, "qux": 3, "quux": 4])

            try jsonObject.removeValue(forSubscript: .key("bar"))
            #expect(jsonObject == ["qux": 3, "quux": 4])

            try jsonObject.removeValue(forSubscript: "qux")
            #expect(jsonObject == ["quux": 4])

            try jsonObject.removeValue(forKey: Keys.quux)
            #expect(jsonObject == [:])

            try jsonArray.removeValue(atIndex: 3)
            #expect(jsonArray == [1, 2, 3])

            try jsonArray.removeValue(forSubscript: .index(2))
            #expect(jsonArray == [1, 2])

            try jsonArray.removeValue(forSubscript: 1)
            #expect(jsonArray == [1])

            try jsonArray.removeValue(atIndex: Indexes.first)
            #expect(jsonArray == [])

            #expect(throws: JSONError.keyNotFound("nonexistent")) {
                try jsonObject.removeValue(forKey: "nonexistent")
            }
            #expect(throws: JSONError.indexOutOfBounds(10)) {
                try jsonArray.removeValue(atIndex: 10)
            }

            var stringJson: JSON = "string"
            #expect(throws: JSONError.invalidSubscript(JSON.Subscript("key"))) {
                try stringJson.removeValue(forKey: "key")
            }
        }
    }

    @Suite("JSON writing tests", .serialized)
    struct WritingTests {

        init() {
            try? FileManager.default.removeItem(atPath: testURL.path())
        }

        let testURL = FileManager.default.temporaryDirectory.appending(path: "test.json", directoryHint: .notDirectory)

        @available(macOS 13.0, macCatalyst 16.0, *)
        @Test("Write to disk without previous content")
        func writeToDiskWithoutPreviousContent() async throws {
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]

            try await json.write(fileURL: testURL, options: .sortedKeys)
            let diskContent = try String(contentsOf: testURL, encoding: .utf8)
            let expected = #"""
            {"bar":false,"baz":null,"foo":true}
            """#
            #expect(diskContent == expected)
        }

        @available(macOS 13.0, macCatalyst 16.0, *)
        @Test("Write to disk with previous content")
        func writeToDiskWithPreviousContent() async throws {
            let junk = try #require("junk".data(using: .utf8))
            try junk.write(to: testURL)
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]

            await #expect(throws: JSONError.fileExists(testURL)) {
                try await json.write(fileURL: testURL)
            }
        }

        @Test("Write to disk overwriting previous content")
        func writeToDiskOverwritingPreviousContent() async throws {
            let junk = try #require("junk".data(using: .utf8))
            try junk.write(to: testURL)
            let json: JSON = [
                "foo": true,
                "bar": false,
                "baz": nil
            ]

            try await json.write(fileURL: testURL, options: .sortedKeys, shouldOverwrite: true)
            let diskContent = try String(contentsOf: testURL, encoding: .utf8)
            let expected = #"""
            {"bar":false,"baz":null,"foo":true}
            """#
            #expect(diskContent == expected)
        }

    }

    @Suite("Convenience Serialization Tests")
    struct SerializationTests {

        @Test("Serialize JSON")
        func serialize() throws {
            let json: JSON = ["foo": "bar"]
            let data = try json.serialize()
            let expected = Data([
                0x7B, 0x22, 0x66, 0x6F, 0x6F, 0x22, 0x3A,
                0x22, 0x62, 0x61, 0x72, 0x22, 0x7D
            ])
            #expect(data == expected)
        }

        @Test("Stringify JSON")
        func stringify() throws {
            let json: JSON = ["foo": "bar"]
            let str = try json.stringify()
            let expected = #"""
            {"foo":"bar"}
            """#
            #expect(str == expected)
        }

    }

    @Test("First and Last Array")
    func firstAndLast() throws {
        let empty: JSON = []
        let array: JSON = ["foo", "bar"]
        let object: JSON = ["foo": "bar"]
        let literal: JSON = false
        let number: JSON = 42
        let string: JSON = "plop"

        try #expect(array.first == "foo")
        try #expect(array.last == "bar")
        try #expect(empty.first == nil)
        try #expect(empty.last == nil)

        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try object.first
        }
        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try object.last
        }

        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try literal.first
        }
        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try literal.last
        }

        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try number.first
        }
        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try number.last
        }

        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try string.first
        }
        #expect(throws: JSONError.illegalArrayConversion) {
            _ = try string.last
        }
    }

    @Test("Count Array")
    func count() throws {
        let emptyArray: JSON = []
        let array: JSON = ["foo", "bar"]
        let object: JSON = ["foo": "bar"]
        let emptyObject: JSON = [:]
        let literal: JSON = false
        let number: JSON = 42
        let string: JSON = "plop"

        try #expect(array.count == 2)
        try #expect(array.isEmpty == false)
        try #expect(emptyArray.count == 0)
        try #expect(emptyArray.isEmpty == true)
        try #expect(object.count == 1)
        try #expect(object.isEmpty == false)
        try #expect(emptyObject.count == 0)
        try #expect(emptyObject.isEmpty == true)

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try literal.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try literal.isEmpty
        }

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try number.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try number.isEmpty
        }

        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try string.count
        }
        #expect(throws: JSONError.illegalCollectionConversion) {
            _ = try string.isEmpty
        }
    }

    @Suite("AllSatisfy Tests")
    struct AllSatisfyTests {

        @Test
        func allSatisfyArray() throws {
            let array: JSON = ["a", "b", "c", "d"]
            let object: JSON = ["foo": "bar"]
            try #expect(array.allSatisfy { (element: JSON) in element.isString } == true)
            try #expect(array.allSatisfy { (element: JSON) in element.isInt } == false)
            #expect(throws: JSONError.illegalArrayConversion) {
                try object.allSatisfy { (element: JSON) in true }
            }
        }

        @Test
        func allSatisfyObject() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            try #expect(object.allSatisfy { key, _ in key.count == 3 } == true)
            try #expect(object.allSatisfy { key, value in key.count == 3 && value.isString } == false)
            #expect(throws: JSONError.illegalObjectConversion) {
                try array.allSatisfy { _, _ in true }
            }
        }

    }

    @Test("Object Keys and Values")
    func objectKeysAndValues() throws {
        let object: JSON = ["foo": "bar", "baz": 42]
        let array: JSON = ["a", "b", "c", "d"]
        let keys = try object.keys
        let values = try object.values
        #expect(keys == ["foo", "baz"] || keys == ["baz", "foo"])
        #expect(values == ["bar", 42] || values == [42, "bar"])
        #expect(throws: JSONError.illegalObjectConversion) {
            _ = try array.keys
        }
        #expect(throws: JSONError.illegalObjectConversion) {
            _ = try array.values
        }
    }

    @Suite("Map Tests")
    struct MapTests {

        @Test("Array Map Tests")
        func arrayMapTests() throws {
            let array: JSON = ["a", "b", "c", "d"]
            let object: JSON = ["foo": "bar"]
            let mapped = try array.map { try $0.stringValue.uppercased() }
            #expect(mapped == ["A", "B", "C", "D"])
            #expect(throws: JSONError.illegalArrayConversion) {
                _ = try object.map { try $0.stringValue.uppercased() }
            }
        }

        @Test("Object Map Tests")
        func objectMapTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.map { key, _ in key.uppercased() }
            #expect(mapped == ["FOO", "BAZ"] || mapped == ["BAZ", "FOO"])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try array.map { key, _ in key.uppercased() }
            }
        }

        @Test("Map Values Tests")
        func mapValuesTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.mapValues(\.isInt)
            #expect(mapped == ["foo": false, "baz": true])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try array.mapValues(\.isInt)
            }
        }

    }

    @Suite("Compact Map Tests")
    struct CompactMapTests {

        @Test("Array Map Tests")
        func arrayCompactMapTests() throws {
            let array: JSON = ["a", "B", "c", "D"]
            let object: JSON = ["foo": "bar"]
            let mapped = try array.compactMap { value in
                if let str = try? value.stringValue,
                   let char = str.first,
                   char.isUppercase {
                    str
                } else {
                    nil
                }
            }
            #expect(mapped == ["B", "D"])
            #expect(throws: JSONError.illegalArrayConversion) {
                _ = try object.compactMap { value in
                    if let str = try? value.stringValue,
                       let char = str.first,
                       char.isUppercase {
                        str
                    } else {
                        nil
                    }
                }
            }
        }

        @Test("Object Compact Map Tests")
        func objectCompactMapTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.compactMap { key, value in
                value.isInt ? key.uppercased() : nil
            }
            #expect(mapped == ["BAZ"])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try array.compactMap { key, value in
                    value.isInt ? key.uppercased() : nil
                }
            }
        }

        @Test("Map Values Tests")
        func compactMapValuesTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.compactMapValues { value in
                try? value.intValue
            }
            #expect(mapped == ["baz": 42])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try array.compactMapValues { value in
                    try? value.intValue
                }
            }
        }

    }

    @Suite("Reduce Tests")
    struct ReduceTests {

        @Test("Array Reduce")
        func arrayReduce() throws {
            let array: JSON = [1, 2, 3, 4, 5]
            let object: JSON = ["foo": "bar"]
            let total = try array.reduce(0) { total, json in
                try (total + json.intValue)
            }
            #expect(total == 15)
            #expect(throws: JSONError.illegalArrayConversion) {
                try object.reduce(0) { total, json in
                    try (total + json.intValue)
                }
            }
        }

        @Test("Array Reduce Into")
        func arrayReduceInto() throws {
            let array: JSON = [1, 2, 3, 4, 5]
            let object: JSON = ["foo": "bar"]
            let total = try array.reduce(into: 0) { total, json in
                total += try json.intValue
            }
            #expect(total == 15)
            #expect(throws: JSONError.illegalArrayConversion) {
                try object.reduce(into: 0) { total, json in
                    total += try json.intValue
                }
            }
        }

        @Test("Object Reduce")
        func objectReduce() throws {
            let object: JSON = ["foo": "bar", "baz": "qux"]
            let array: JSON = [1, 2, 3, 4, 5]
            let list: [String] = try object.reduce([]) { prev, pair in
                let (key, value) = pair
                return try prev + [key + "-" + (value.stringValue)]
            }
            #expect(list == ["foo-bar", "baz-qux"] || list == ["baz-qux", "foo-bar"])
            #expect(throws: JSONError.illegalObjectConversion) {
                _ = try array.reduce([]) { prev, pair in
                    let (key, value) = pair
                    return try prev + [key + "-" + (value.stringValue)]
                }
            }
        }

        @Test("Object Reduce Into")
        func objectReduceInto() throws {
            let object: JSON = ["foo": "bar", "baz": "qux"]
            let array: JSON = [1, 2, 3, 4, 5]
            let list: [String] = try object.reduce(into: []) { prev, pair in
                let (key, value) = pair
                try prev += [key + "-" + (value.stringValue)]
            }
            #expect(list == ["foo-bar", "baz-qux"] || list == ["baz-qux", "foo-bar"])
            #expect(throws: JSONError.illegalObjectConversion) {
                try array.reduce(into: []) { prev, pair in
                    let (key, value) = pair
                    try prev += [key + "-" + (value.stringValue)]
                }
            }
        }

    }

    @Suite("For Each Tests")
    struct ForEachTests {

        @Test("Array For Each")
        func arrayForEach() throws {
            var result: [Int] = []
            let array: JSON = [1, 2, 3, 4, 5]
            let object: JSON = ["foo": "bar", "baz": "qux"]
            try array.forEach { element in
                let value = try element.intValue + 1
                result.append(value)
            }
            #expect(result == [2, 3, 4, 5, 6])
            #expect(throws: JSONError.illegalArrayConversion) {
                try object.forEach { element in
                    let value = try element.intValue + 1
                    result.append(value)
                }
            }
        }

        @Test("Object For Each")
        func objectForEach() throws {
            var result: [String] = []
            let object: JSON = ["foo": "bar", "baz": "qux"]
            let array: JSON = [1, 2, 3, 4, 5]
            try object.forEach { key, value in
                let str = try key + "-" + (value.stringValue)
                result.append(str)
            }
            #expect(result == ["foo-bar", "baz-qux"] || result == ["baz-qux", "foo-bar"])
            #expect(throws: JSONError.illegalObjectConversion) {
                try array.forEach { key, value in
                    let str = try key + "-" + (value.stringValue)
                    result.append(str)
                }
            }
        }

    }

    @Test("Array Index Swap")
    func arrayIndexSwap() throws {
        var array: JSON = [1, 2, 3, 4]
        var object: JSON = ["foo": "bar", "baz": "qux"]
        enum Index: Int {
            case zero
            case one
            case two
            case three
            case four
        }

        try array.swapAt(0, 3)
        #expect(array == [4, 2, 3, 1])

        #expect(throws: JSONError.indexOutOfBounds(4)) {
            try array.swapAt(2, 4)
        }
        #expect(throws: JSONError.indexOutOfBounds(4)) {
            try array.swapAt(4, 3)
        }

        try array.swapAt(Index.two, Index.one)
        #expect(array == [4, 3, 2, 1])

        #expect(throws: JSONError.indexOutOfBounds(4)) {
            try array.swapAt(Index.two, Index.four)
        }
        #expect(throws: JSONError.indexOutOfBounds(4)) {
            try array.swapAt(Index.four, Index.three)
        }

        #expect(throws: JSONError.illegalArrayConversion) {
            try object.swapAt(0, 1)
        }
    }

    @Test("Object Merging")
    func objectMerging() throws {
        var object1: JSON = ["foo": "bar"]
        let object2: JSON = ["baz": "qux", "qux": "corge"]
        try object1.merge(object2)
        #expect(object1 == ["foo": "bar", "baz": "qux", "qux": "corge"])
        let object3: JSON = ["pay": "load"]
        let object4 = try object1.merging(object3)
        #expect(object4 == ["foo": "bar", "baz": "qux", "qux": "corge", "pay": "load"])
    }

    @Suite("Filtering Tests")
    struct FilteringTests {

        @Test("Array Filtering")
        func arrayFiltering() throws {
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let filteredArray = try array.filter { element in try element.stringValue.hasPrefix("q") }
            #expect(filteredArray == ["qux", "qux"])
            #expect(throws: JSONError.illegalArrayConversion) {
                try object.filter { element in try element.stringValue.hasPrefix("q") }
            }
        }

        @Test("Object Filtering")
        func objectFiltering() throws {
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filter { key, _ in key != "qux" }
            #expect(filteredObject == ["foo": "bar", "baz": "qux"])
            #expect(throws: JSONError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }
    }
}
