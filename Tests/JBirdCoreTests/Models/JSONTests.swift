// JBird
// JSONTests.swift
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
import JBirdCore
import Testing

@Suite("JSON Tests")
struct JSONTests {

    @Test("Empty Init")
    func emptyInit() {
        let json = JSON()
        #expect(json == .object([:]))
    }

    @Test("JSON Count")
    func jsonCount() throws {
        let jsonObject = JSON.object(["foo": "bar"])
        let jsonArray = JSON.array(["foo", "bar"])
        let emptyArray = JSON.array([])
        let emptyObject = JSON.object([:])
        let number = JSON.number(0)
        let string = JSON.string("foo")
        let bool = JSON.bool(false)
        let null = JSON.null

        try #expect(jsonObject.count == 1)
        try #expect(jsonArray.count == 2)
        try #expect(jsonObject.isEmpty == false)
        try #expect(jsonArray.isEmpty == false)
        try #expect(emptyArray.isEmpty == true)
        try #expect(emptyObject.isEmpty == true)

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try number.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try number.isEmpty
        }

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try string.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try string.isEmpty
        }

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try bool.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try bool.isEmpty
        }

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try null.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try null.isEmpty
        }
    }

    @Test("Unboxed JSON")
    func unboxedJSON() {
        let `true`: JSON = true
        let `false`: JSON = false
        let null: JSON = nil
        let string: JSON = "Hello, world!"
        let int: JSON = 42
        let double: JSON = 3.14
        let array: JSON = ["apple", "banana", "cherry"]
        let object: JSON = ["name": "John", "age": 30]
        #expect(`true`.unboxed().base is Bool)
        #expect(`false`.unboxed().base is Bool)
        #expect(null.unboxed().base is NSNull)
        #expect(string.unboxed().base is String)
        #expect(int.unboxed().base is Int)
        #expect(double.unboxed().base is Double)
        #expect(array.unboxed().base is [AnyHashable])
        #expect(object.unboxed().base is [String: AnyHashable])
    }

    @Suite("Value Checking Tests")
    struct ValueCheckingTests {

        @Test("Null Value Check")
        func nullValue() {
            let nullValue: JSON = .null
            #expect(nullValue.isNull)
            #expect(!nullValue.isBool)
            #expect(!nullValue.isNumber)
            #expect(!nullValue.isString)
            #expect(!nullValue.isObject)
            #expect(!nullValue.isArray)
        }

        @Test("Bool Value Check")
        func boolValue() {
            let trueValue: JSON = true
            let falseValue: JSON = false
            #expect(!trueValue.isNull)
            #expect(trueValue.isBool)
            #expect(!trueValue.isNumber)
            #expect(!trueValue.isString)
            #expect(!trueValue.isObject)
            #expect(!trueValue.isArray)
            #expect(!falseValue.isNull)
            #expect(falseValue.isBool)
            #expect(!falseValue.isNumber)
            #expect(!falseValue.isString)
            #expect(!falseValue.isObject)
            #expect(!falseValue.isArray)
        }

        @Test("Number Value Check")
        func numberValue() {
            let intValue: JSON = 42
            let floatValue: JSON = 4.2
            #expect(!intValue.isNull)
            #expect(!intValue.isBool)
            #expect(intValue.isNumber)
            #expect(!intValue.isString)
            #expect(!intValue.isObject)
            #expect(!intValue.isArray)
            #expect(!floatValue.isNull)
            #expect(!floatValue.isBool)
            #expect(floatValue.isNumber)
            #expect(!floatValue.isString)
            #expect(!floatValue.isObject)
            #expect(!floatValue.isArray)
        }

        @Test("String Value Check")
        func stringValue() {
            let stringValue: JSON = "Hello, World!"
            #expect(!stringValue.isNull)
            #expect(!stringValue.isBool)
            #expect(!stringValue.isNumber)
            #expect(stringValue.isString)
            #expect(!stringValue.isObject)
            #expect(!stringValue.isArray)
        }

        @Test("Array Value Check")
        func arrayValue() {
            let arrayValue: JSON = [1, 2, 3]
            #expect(!arrayValue.isNull)
            #expect(!arrayValue.isBool)
            #expect(!arrayValue.isNumber)
            #expect(!arrayValue.isString)
            #expect(!arrayValue.isObject)
            #expect(arrayValue.isArray)
        }

        @Test("Object Value Check")
        func objectValue() {
            let objectValue: JSON = ["key": "value"]
            #expect(!objectValue.isNull)
            #expect(!objectValue.isBool)
            #expect(!objectValue.isNumber)
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
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try nonObjectJson.objectValue
            }
        }

        @Test("Array value access")
        func arrayValue() throws {
            let jsonArray = JSON.array(["foo", "bar"])
            let nonArrayJson = JSON.string("foo")
            let array = try jsonArray.arrayValue
            #expect(array == ["foo", "bar"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                _ = try nonArrayJson.arrayValue
            }
        }

        @Test("String value access")
        func stringValue() throws {
            let jsonString = JSON.string("foo")
            let nonStringJson = JSON.object(["foo": "bar"])
            let string = try jsonString.stringValue
            #expect(string == "foo")
            #expect(throws: JSON.OperationError.illegalStringConversion) {
                _ = try nonStringJson.stringValue
            }
        }

        @Test("Number value access")
        func numberValue() throws {
            let jsonNumber = JSON.number(123)
            let nonNumberJson = JSON.string("foo")
            let number = try jsonNumber.numberValue
            #expect(number == .init(123))
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonNumberJson.numberValue
            }
        }

        @Test("Bool value access")
        func boolValue() throws {
            let jsonBool = JSON.bool(false)
            let nonBoolJson = JSON.string("foo")
            let bool = try jsonBool.boolValue
            #expect(bool == false)
            #expect(throws: JSON.OperationError.illegalBoolConversion) {
                _ = try nonBoolJson.boolValue
            }
        }

    }

    @Suite("Subtype Helper Tests")
    struct SubtypeHelperTests {

        @Test("Bool access tests")
        func boolValue() throws {
            let jsonBool = JSON.bool(true)
            let nonBoolJson = JSON.string("foo")
            let nonBoolButLiteralJSON = JSON.null
            let bool = try jsonBool.boolValue
            #expect(bool == true)
            #expect(throws: JSON.OperationError.illegalBoolConversion) {
                _ = try nonBoolJson.boolValue
            }
            #expect(throws: JSON.OperationError.illegalBoolConversion) {
                _ = try nonBoolButLiteralJSON.boolValue
            }
        }

        @Test("Integer access tests")
        func intValue() throws {
            let jsonInt = JSON.number(123)
            let nonIntJson = JSON.string("foo")
            let int = try jsonInt.numberValue.convert(into: Int.self)
            #expect(int == 123)
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonIntJson.numberValue
            }
        }

        @Test("Floating point access tests")
        func doubleValue() throws {
            let jsonDouble = JSON.number(123.456)
            let nonDoubleJson = JSON.string("foo")
            let double = try jsonDouble.numberValue.convert(into: Double.self)
            #expect(double == 123.456)
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonDoubleJson.numberValue
            }
        }

    }

    @Suite("Literal expression support")
    struct LiteralExpressionTests {

        @Test("Literal null")
        func literalNil() {
            let literal: JSON = nil
            let standard = JSON.null
            #expect(literal == standard)
        }

        @Test("Literal true")
        func literalTrue() {
            let literal: JSON = true
            let standard = JSON.bool(true)
            #expect(literal == standard)
        }

        @Test("Literal false")
        func literalFalse() {
            let literal: JSON = false
            let standard = JSON.bool(false)
            #expect(literal == standard)
        }

        @Test("Literal int")
        func literalInt() {
            let literal: JSON = 123
            let standard = JSON.number(123)
            #expect(literal == standard)
        }

        @Test("Literal double")
        func literalDouble() {
            let literal: JSON = 123.456
            let standard = JSON.number(123.456)
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

    @Test("Typed Subscript Tests")
    func typedSubscriptAccess() throws {
        let json: JSON = [
            "foo": [1, 2, 3]
        ]

        #expect(try json["foo"][.index(1), as: Int.self] == 2)
        #expect(try json["foo"][1, as: Int.self] == 2)
    }

    @Test("Map array to a JSON array")
    func mapToJSONArray() throws {
        let array: JSON = [1, 2, 3]
        let mapped: JSON = try array.map { _ in JSON.string("x") }
        #expect(mapped == ["x", "x", "x"])
    }

    @Test("Merge keeps existing values on conflicts by default")
    func mergeDefaultUniquing() throws {
        var object: JSON = ["a": 1, "b": 2]
        try object.merge(["b": 99, "c": 3])
        #expect(object == ["a": 1, "b": 2, "c": 3])

        let merged = try (["x": 1] as JSON).merging(["x": 99, "y": 2])
        #expect(merged == ["x": 1, "y": 2])
    }

    @Suite("Introspection Tests")
    struct IntrospectionTests {

        @Test("Value at path tests")
        @available(*, deprecated)
        func valueAtPathVariadic() throws {
            let json: JSON = [
                "foo": [
                    "bar": [1, 2, 3]
                ]
            ]

            let value = try json.value(atPath: .key("foo"), .key("bar"), .index(1))
            #expect(value == 2)
            #expect(throws: JSON.OperationError.invalidSubscript(.key("qux"))) {
                _ = try json.value(atPath: .key("foo"), .key("bar"), .key("qux"))
            }
            #expect(throws: JSON.OperationError.keyNotFound("baz")) {
                _ = try json.value(atPath: .key("foo"), .key("baz"))
            }
            #expect(throws: JSON.OperationError.indexOutOfBounds(5)) {
                _ = try json.value(atPath: .key("foo"), .key("bar"), .index(5))
            }
        }

        @Test("Value at path tests (deprecated)")
        @available(*, deprecated)
        func valueAtPathDeprecated() throws {
            let json: JSON = [
                "foo": [
                    "bar": [1, 2, 3]
                ]
            ]

            let value = try json.value(atPath: [.key("foo"), .key("bar"), .index(1)])
            #expect(value == 2)
            #expect(throws: JSON.OperationError.invalidSubscript(.key("qux"))) {
                _ = try json.value(atPath: [.key("foo"), .key("bar"), .key("qux")])
            }
            #expect(throws: JSON.OperationError.keyNotFound("baz")) {
                _ = try json.value(atPath: [.key("foo"), .key("baz")])
            }
            #expect(throws: JSON.OperationError.indexOutOfBounds(5)) {
                _ = try json.value(atPath: [.key("foo"), .key("bar"), .index(5)])
            }
        }

        @Test("Value at path tests (parameter packs)")
        @available(*, deprecated)
        func valueAtPathWithPacks() throws {
            let json: JSON = [
                "foo": [
                    "bar": [1, 2, 3]
                ]
            ]

            let value = try json.value(atPath: "foo", "bar", 1)
            #expect(value == 2)
            #expect(throws: JSON.OperationError.invalidSubscript(.key("qux"))) {
                _ = try json.value(atPath: "foo", "bar", "qux")
            }
            #expect(throws: JSON.OperationError.keyNotFound("baz")) {
                _ = try json.value(atPath: "foo", "baz")
            }
            #expect(throws: JSON.OperationError.indexOutOfBounds(5)) {
                _ = try json.value(atPath: "foo", "bar", 5)
            }
        }

        #if compiler(>=6.2)
            /// For reasons I do not understand, this test crashes the Swift 6.1 compiler.
            @Test("Subscript with parameter packs and type conversion")
            @available(*, deprecated)
            func subscriptPacksWithType() throws {
                let json: JSON = [
                    "foo": [
                        "bar": [1, 2, 3]
                    ]
                ]

                let value = try json["foo", "bar", 1, as: Int.self]
                #expect(value == 2)
                #expect(throws: JSON.OperationError.invalidSubscript(.key("qux"))) {
                    _ = try json["foo", "bar", "qux", as: Int.self]
                }
                #expect(throws: JSON.OperationError.keyNotFound("baz")) {
                    _ = try json["foo", "baz", as: Int.self]
                }
                #expect(throws: JSON.OperationError.indexOutOfBounds(5)) {
                    _ = try json["foo", "bar", 5, as: Int.self]
                }
            }
        #endif

        @Test("Value for key tests")
        func valueForKey() throws {
            let json: JSON = [
                "foo": "bar",
                "baz": 123
            ]

            #expect(try json.value(forKey: "foo") == "bar")
            #expect(try json.value(forKey: "baz") == 123)
            #expect(throws: JSON.OperationError.keyNotFound("qux")) {
                _ = try json.value(forKey: "qux")
            }
        }

        @Test("Value at index tests")
        func valueAtIndex() throws {
            let json: JSON = [1, "bar", true]

            #expect(try json.value(atIndex: 0) == 1)
            #expect(try json.value(atIndex: 1) == "bar")
            #expect(try json.value(atIndex: 2) == true)
            #expect(throws: JSON.OperationError.indexOutOfBounds(3)) {
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
            #expect(throws: JSON.OperationError.invalidSubscript(.key("qux"))) {
                _ = try jsonArray.value(forSubscript: "qux")
            }
            #expect(throws: JSON.OperationError.invalidSubscript(.index(3))) {
                _ = try jsonObject.value(forSubscript: 3)
            }
        }

        @Test("Contains value tests")
        func containsValue() {
            let jsonObject: JSON = ["foo": "bar"]
            let jsonArray: JSON = [1, 2, 3]

            #expect(jsonObject.containsValue(forKey: "foo"))
            #expect(!jsonObject.containsValue(forKey: "baz"))
            #expect(jsonObject.containsValue(forSubscript: .key("foo")))
            #expect(!jsonObject.containsValue(forSubscript: .key("baz")))
            #expect(jsonObject.containsValue(forSubscript: "foo"))
            #expect(!jsonObject.containsValue(forSubscript: "baz"))

            #expect(jsonArray.containsValue(atIndex: 1))
            #expect(!jsonArray.containsValue(atIndex: 5))
            #expect(jsonArray.containsValue(forSubscript: .index(1)))
            #expect(!jsonArray.containsValue(forSubscript: .index(5)))
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

            try json.setValue("baz", forKey: "qux")
            #expect(json == ["foo": "bar", "qux": "baz"])

            var nonObjectJson: JSON = "string"
            #expect(throws: JSON.OperationError.invalidSubscript(JSON.Subscript("key"))) {
                try nonObjectJson.setValue("value", forKey: "key")
            }

        }

        @Test("Set value at index tests")
        func setValueAtIndex() throws {
            var json: JSON = [1, 2, 3]

            try json.setValue(4, atIndex: 1)
            #expect(json == [1, 4, 3])

            #expect(throws: JSON.OperationError.indexOutOfBounds(5)) {
                try json.setValue(5, atIndex: 5)
            }

            var nonArrayJson: JSON = "string"
            #expect(throws: JSON.OperationError.invalidSubscript(JSON.Subscript(0))) {
                try nonArrayJson.setValue("value", atIndex: 0)
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

            #expect(throws: JSON.OperationError.indexOutOfBounds(11)) {
                try json.insert(6, at: 11)
            }

            var nonArrayJson: JSON = "string"
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try nonArrayJson.append(1)
            }
        }

        @Test("Remove value tests")
        func removeValue() throws {
            var jsonObject: JSON = ["foo": 1, "bar": 2, "qux": 3, "quux": 4]
            var jsonArray: JSON = [1, 2, 3, 4]

            try jsonObject.removeValue(forKey: "foo")
            #expect(jsonObject == ["bar": 2, "qux": 3, "quux": 4])

            try jsonObject.removeValue(forSubscript: .key("bar"))
            #expect(jsonObject == ["qux": 3, "quux": 4])

            try jsonObject.removeValue(forSubscript: "qux")
            #expect(jsonObject == ["quux": 4])

            try jsonArray.removeValue(atIndex: 3)
            #expect(jsonArray == [1, 2, 3])

            try jsonArray.removeValue(forSubscript: .index(2))
            #expect(jsonArray == [1, 2])

            try jsonArray.removeValue(forSubscript: 1)
            #expect(jsonArray == [1])

            #expect(throws: JSON.OperationError.keyNotFound("nonexistent")) {
                try jsonObject.removeValue(forKey: "nonexistent")
            }
            #expect(throws: JSON.OperationError.indexOutOfBounds(10)) {
                try jsonArray.removeValue(atIndex: 10)
            }

            var stringJson: JSON = "string"
            #expect(throws: JSON.OperationError.invalidSubscript(JSON.Subscript("key"))) {
                try stringJson.removeValue(forKey: "key")
            }
        }
    }

    #if canImport(Darwin)
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

                try await json.write(to: testURL, options: .sortedKeys)
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

                await #expect(throws: JSON.OperationError.fileExists(testURL)) {
                    try await json.write(to: testURL)
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

                try await json.write(to: testURL, options: .sortedKeys, shouldOverwrite: true)
                let diskContent = try String(contentsOf: testURL, encoding: .utf8)
                let expected = #"""
                {"bar":false,"baz":null,"foo":true}
                """#
                #expect(diskContent == expected)
            }

        }
    #endif

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

        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try object.first
        }
        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try object.last
        }

        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try literal.first
        }
        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try literal.last
        }

        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try number.first
        }
        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try number.last
        }

        #expect(throws: JSON.OperationError.illegalArrayConversion) {
            _ = try string.first
        }
        #expect(throws: JSON.OperationError.illegalArrayConversion) {
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

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try literal.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try literal.isEmpty
        }

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try number.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try number.isEmpty
        }

        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
            _ = try string.count
        }
        #expect(throws: JSON.OperationError.illegalCollectionConversion) {
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
            try #expect(array.allSatisfy { (element: JSON) in element.isNumber } == false)
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.allSatisfy { (element: JSON) in true }
            }
        }

        @Test
        func allSatisfyObject() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            try #expect(object.allSatisfy { key, _ in key.count == 3 } == true)
            try #expect(object.allSatisfy { key, value in key.count == 3 && value.isString } == false)
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
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
        #expect(throws: JSON.OperationError.illegalObjectConversion) {
            _ = try array.keys
        }
        #expect(throws: JSON.OperationError.illegalObjectConversion) {
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
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                _ = try object.map { try $0.stringValue.uppercased() }
            }
        }

        @Test("Object Map Tests")
        func objectMapTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.map { key, _ in key.uppercased() }
            #expect(mapped == ["FOO", "BAZ"] || mapped == ["BAZ", "FOO"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.map { key, _ in key.uppercased() }
            }
        }

        @Test("Map Values Tests")
        func mapValuesTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.mapValues(\.isNumber)
            #expect(mapped == ["foo": false, "baz": true])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.mapValues(\.isNumber)
            }
        }

        @Test("Map Values Into JSON Tests")
        func mapValuesIntoJSONTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped: JSON = try object.mapValues { value in
                JSON.null
            }
            #expect(mapped == ["foo": nil, "baz": nil])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.mapValues(\.isNumber)
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
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
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
                value.isNumber ? key.uppercased() : nil
            }
            #expect(mapped == ["BAZ"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.compactMap { key, value in
                    value.isNumber ? key.uppercased() : nil
                }
            }
        }

        @Test("Map Values Tests")
        func compactMapValuesTests() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.compactMapValues { value in
                try? value.convert(into: Int.self)
            }
            #expect(mapped == ["baz": 42])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.compactMapValues { value in
                    try? value.convert(into: Int.self)
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
                try (total + json.convert())
            }
            #expect(total == 15)
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.reduce(0) { total, json in
                    try (total + json.convert())
                }
            }
        }

        @Test("Array Reduce Into")
        func arrayReduceInto() throws {
            let array: JSON = [1, 2, 3, 4, 5]
            let object: JSON = ["foo": "bar"]
            let total = try array.reduce(into: 0) { total, json in
                total += try json.convert()
            }
            #expect(total == 15)
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.reduce(into: 0) { total, json in
                    total += try json.convert()
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
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
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
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
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
                let value = try element.convert() + 1
                result.append(value)
            }
            #expect(result == [2, 3, 4, 5, 6])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.forEach { element in
                    let value = try element.convert() + 1
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
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
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

        try array.swapAt(0, 3)
        #expect(array == [4, 2, 3, 1])

        #expect(throws: JSON.OperationError.indexOutOfBounds(4)) {
            try array.swapAt(2, 4)
        }
        #expect(throws: JSON.OperationError.indexOutOfBounds(4)) {
            try array.swapAt(4, 3)
        }
        #expect(throws: JSON.OperationError.illegalArrayConversion) {
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
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.filter { element in try element.stringValue.hasPrefix("q") }
            }
        }

        @Test("Object Filtering")
        func objectFiltering() throws {
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filter { key, _ in key != "qux" }
            #expect(filteredObject == ["foo": "bar", "baz": "qux"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test("Object Key Filtering")
        func objectKeyFiltering() throws {
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filterKeys { key in key.starts(with: "q") }
            #expect(filteredObject == ["qux": "corge"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test("Object Value Filtering")
        func objectValueFiltering() throws {
            let object: JSON = ["foo": "bar", "baz": 2.0, "qux": 1]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filterValues(\.isString)
            #expect(filteredObject == ["foo": "bar"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test("Array Filter Nils Filtering")
        func arrayNilFiltering() throws {
            let array: JSON = ["foo", "bar", nil, "baz", nil]
            let object: JSON = ["foo": "bar", "baz": 2.0, "qux": 1]
            let filteredArray = try array.filterNils()
            #expect(filteredArray == ["foo", "bar", "baz"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.filterNils()
            }
        }
    }

    @Test("JSON Zero")
    func jsonZero() {
        let zero = JSON.zero
        #expect(zero == JSON.number(.zero))
        #expect(zero == JSON.number(0))
        #expect(zero.isNumber)
    }

    @Suite("Contains Non-Conforming Floating Point Values Tests")
    struct ContainsNonConformingFloatingPointValuesTests {

        @Test("Scalar values")
        func scalarValues() {
            #expect(!JSON.null.containsNonConformingFloatingPointValues)
            #expect(!JSON.bool(true).containsNonConformingFloatingPointValues)
            #expect(!JSON.string("hello").containsNonConformingFloatingPointValues)
            #expect(!JSON.number(42).containsNonConformingFloatingPointValues)
            #expect(!JSON.number(3.14).containsNonConformingFloatingPointValues)
            #expect(JSON.number(.nan).containsNonConformingFloatingPointValues)
            #expect(JSON.number(.infinity).containsNonConformingFloatingPointValues)
            #expect(JSON.number(.init(-Double.infinity)).containsNonConformingFloatingPointValues)
        }

        @Test("Array values")
        func arrayValues() {
            let clean: JSON = [1, 2, 3]
            #expect(!clean.containsNonConformingFloatingPointValues)

            let withNaN: JSON = .array([1, .number(.nan), 3])
            #expect(withNaN.containsNonConformingFloatingPointValues)

            let withInfinity: JSON = .array([1, .number(.infinity), 3])
            #expect(withInfinity.containsNonConformingFloatingPointValues)

            let empty: JSON = []
            #expect(!empty.containsNonConformingFloatingPointValues)
        }

        @Test("Object values")
        func objectValues() {
            let clean: JSON = ["foo": 1, "bar": "baz"]
            #expect(!clean.containsNonConformingFloatingPointValues)

            let withNaN: JSON = .object(["foo": .number(.nan)])
            #expect(withNaN.containsNonConformingFloatingPointValues)

            let withInfinity: JSON = .object(["foo": .number(.infinity)])
            #expect(withInfinity.containsNonConformingFloatingPointValues)

            let empty: JSON = [:]
            #expect(!empty.containsNonConformingFloatingPointValues)
        }

        @Test("Nested values")
        func nestedValues() {
            let deepClean: JSON = [
                "a": [1, 2, 3],
                "b": ["c": "d"]
            ]
            #expect(!deepClean.containsNonConformingFloatingPointValues)

            let deepNaN: JSON = .object([
                "a": .array([1, .object(["nested": .number(.nan)])])
            ])
            #expect(deepNaN.containsNonConformingFloatingPointValues)
        }
    }

    @Test("Null JSON Description")
    func nullDescription() {
        let json = JSON.null
        #expect(json.description == "null")
    }

    @Suite("Pointer Access Tests")
    struct PointerAccess {

        private static let document: JSON = [
            "name": "root",
            "nested": ["values": [1, 2, 3]],
            "flag": true,
        ]

        @Test(
            "Reads the value at a pointer",
            arguments: [
                ("/name", "root"),
                ("/nested/values/0", 1),
                ("/nested/values/2", 3),
                ("/flag", true),
            ] as [(pointer: String, value: JSON)]
        )
        func reads(
            pointer: String,
            value: JSON
        ) throws {
            let resolved = try Self.document.value(atPointer: JSON.Pointer(pointer))
            #expect(resolved == value)
        }

        @Test("Reads the whole document")
        func readsWholeDocument() throws {
            #expect(try Self.document.value(atPointer: .wholeDocument) == Self.document)
        }

        @Test("Reads via the pointer subscript")
        func subscriptReads() throws {
            let pointer = try JSON.Pointer("/nested/values/2")
            #expect(try Self.document[pointer] == 3)
        }

        @Test("Reads a typed value via the pointer subscript")
        func subscriptReadsTyped() throws {
            let pointer = try JSON.Pointer("/nested/values/0")
            let value = try Self.document[pointer, as: Int.self]
            #expect(value == 1)
        }

        @Test("Pointer subscript propagates resolution errors")
        func subscriptThrows() {
            #expect(throws: JSON.OperationError.keyNotFound("missing")) {
                try Self.document[JSON.Pointer("/missing")]
            }
        }

        @Test(
            "Tests for a value at a pointer",
            arguments: [
                ("/nested/values/2", true),
                ("/nested/values/3", false),
                ("/missing", false),
                ("/name/deeper", false),
            ] as [(pointer: String, exists: Bool)]
        )
        func contains(
            pointer: String,
            exists: Bool
        ) throws {
            #expect(try Self.document.containsValue(atPointer: JSON.Pointer(pointer)) == exists)
        }

        @Test(
            "Rejects unresolvable pointers",
            arguments: [
                ("/missing", .keyNotFound("missing")),
                ("/nested/values/5", .indexOutOfBounds(5)),
                ("/nested/values/-", .invalidSubscript(.key("-"))),
                ("/nested/values/01", .invalidSubscript(.key("01"))),
                ("/nested/values/x", .invalidSubscript(.key("x"))),
                ("/name/deeper", .invalidSubscript(.key("deeper"))),
            ] as [(pointer: String, error: JSON.OperationError)]
        )
        func rejects(
            pointer: String,
            error: JSON.OperationError
        ) {
            #expect(throws: error) {
                try Self.document.value(atPointer: JSON.Pointer(pointer))
            }
        }

        // MARK: - Setting

        @Test("Set creates an object key")
        func setCreatesKey() throws {
            var document = Self.document
            try document.setValue("a@b.com", atPointer: JSON.Pointer("/email"))
            #expect(try document.value(atPointer: JSON.Pointer("/email")) == "a@b.com")
        }

        @Test("Set overwrites an array element")
        func setOverwritesArrayElement() throws {
            var document = Self.document
            try document.setValue(99, atPointer: JSON.Pointer("/nested/values/1"))
            #expect(try document.value(atPointer: JSON.Pointer("/nested/values")) == [1, 99, 3])
        }

        @Test("Set out of bounds throws")
        func setOutOfBounds() {
            var document = Self.document
            #expect(throws: JSON.OperationError.indexOutOfBounds(3)) {
                try document.setValue(4, atPointer: JSON.Pointer("/nested/values/3"))
            }
        }

        @Test("Set whole document replaces the root")
        func setWholeDocument() throws {
            var document = Self.document
            try document.setValue(["replaced": true], atPointer: .wholeDocument)
            #expect(document == ["replaced": true])
        }

        @Test("Set through a missing intermediate throws")
        func setMissingIntermediate() {
            var document = Self.document
            #expect(throws: JSON.OperationError.keyNotFound("missing")) {
                try document.setValue(1, atPointer: JSON.Pointer("/missing/child"))
            }
        }

        @Test("Removes an object key")
        func removesObjectKey() throws {
            var document = Self.document
            let pointer = try JSON.Pointer("/flag")
            try document.removeValue(atPointer: pointer)
            #expect(!document.containsValue(atPointer: pointer))
        }

        @Test("Removing an array element shifts the rest")
        func removesArrayElement() throws {
            var document = Self.document
            try document.removeValue(atPointer: JSON.Pointer("/nested/values/0"))
            #expect(try document.value(atPointer: JSON.Pointer("/nested/values")) == [2, 3])
        }

        @Test("Removing a missing key throws")
        func removesMissingKey() {
            var document = Self.document
            #expect(throws: JSON.OperationError.keyNotFound("missing")) {
                try document.removeValue(atPointer: JSON.Pointer("/missing"))
            }
        }

        @Test("Removing the whole document throws")
        func removesWholeDocument() {
            var document = Self.document
            #expect(throws: JSON.OperationError.cannotRemoveWholeDocument) {
                try document.removeValue(atPointer: .wholeDocument)
            }
        }

    }

    @Suite("Codable Tests")
    struct CodableTests {

        private let encoder = JSONEncoder()

        private let decoder = JSONDecoder()

        private func roundTrip(_ json: JSON) throws -> JSON {
            let data = try encoder.encode(json)
            return try decoder.decode(JSON.self, from: data)
        }

        private func encodeString(
            _ json: JSON
        ) throws -> String {
            let data = try encoder.encode(json)
            return try #require(String(data: data, encoding: .utf8))
        }

        private func decode(
            _ string: String
        ) throws -> JSON {
            try decoder.decode(JSON.self, from: Data(string.utf8))
        }

        // MARK: - Encoding Scalars

        @Test("Encode Null")
        func encodeNull() throws {
            #expect(try encodeString(.null) == "null")
        }

        @Test("Encode Bool")
        func encodeBool() throws {
            #expect(try encodeString(.bool(true)) == "true")
            #expect(try encodeString(.bool(false)) == "false")
        }

        @Test("Encode Integer Number")
        func encodeIntegerNumber() throws {
            #expect(try encodeString(.number(42)) == "42")
        }

        @Test("Encode Double Number")
        func encodeDoubleNumber() throws {
            #expect(try encodeString(.number(4.5)) == "4.5")
        }

        @Test("Encode String")
        func encodeStringValue() throws {
            #expect(try encodeString(.string("hello")) == "\"hello\"")
        }

        @Test("Encode Empty Array")
        func encodeEmptyArray() throws {
            #expect(try encodeString(.array([])) == "[]")
        }

        @Test("Encode Empty Object")
        func encodeEmptyObject() throws {
            #expect(try encodeString(.object([:])) == "{}")
        }

        @Test("Encode Array")
        func encodeArray() throws {
            let json: JSON = [1, "two", true, nil]
            #expect(try encodeString(json) == "[1,\"two\",true,null]")
        }

        @Test("Encode Object")
        func encodeObject() throws {
            let json: JSON = ["key": "value"]
            #expect(try encodeString(json) == "{\"key\":\"value\"}")
        }

        @Test("Encode Nested Structure")
        func encodeNested() throws {
            let json: JSON = ["outer": [1, 2, ["inner": true]]]
            // Re-decode rather than asserting key order, which is not guaranteed.
            let decoded = try decode(encodeString(json))
            #expect(decoded == json)
        }

        // MARK: - Decoding Scalars

        @Test("Decode Null")
        func decodeNull() throws {
            #expect(try decode("null") == .null)
        }

        @Test("Decode Bool")
        func decodeBool() throws {
            #expect(try decode("true") == .bool(true))
            #expect(try decode("false") == .bool(false))
        }

        @Test("Decode Integer Number")
        func decodeIntegerNumber() throws {
            #expect(try decode("42") == .number(42))
        }

        @Test("Decode Double Number")
        func decodeDoubleNumber() throws {
            #expect(try decode("4.5") == .number(4.5))
        }

        @Test("Decode String")
        func decodeStringValue() throws {
            #expect(try decode("\"hello\"") == .string("hello"))
        }

        @Test("Decode Empty Array")
        func decodeEmptyArray() throws {
            #expect(try decode("[]") == .array([]))
        }

        @Test("Decode Empty Object")
        func decodeEmptyObject() throws {
            #expect(try decode("{}") == .object([:]))
        }

        @Test("Decode Array")
        func decodeArray() throws {
            #expect(try decode("[1,\"two\",true,null]") == [1, "two", true, nil])
        }

        @Test("Decode Object")
        func decodeObject() throws {
            let expected: JSON = ["a": 1, "b": "two", "c": false]
            #expect(try decode("{\"a\":1,\"b\":\"two\",\"c\":false}") == expected)
        }

        @Test("Decode Nested Structure")
        func decodeNested() throws {
            let expected: JSON = ["outer": [1, 2, ["inner": true]]]
            #expect(try decode("{\"outer\":[1,2,{\"inner\":true}]}") == expected)
        }

        @Test("Decode Malformed JSON Throws")
        func decodeMalformedThrows() {
            #expect(throws: (any Error).self) {
                _ = try decode("{not valid json")
            }
        }

        // MARK: - Round Trips

        @Test("Round Trip Scalars")
        func roundTripScalars() throws {
            let values: [JSON] = [.null, true, false, 0, 42, -7, 4.5, -3.14, "", "string with \" quote"]
            for value in values {
                #expect(try roundTrip(value) == value)
            }
        }

        @Test("Round Trip Collections")
        func roundTripCollections() throws {
            let json: JSON = [
                "null": nil,
                "bool": true,
                "int": 42,
                "double": 4.5,
                "string": "hello",
                "array": [1, 2, 3],
                "object": ["nested": "value"],
                "empty_array": [],
                "empty_object": [:],
            ]
            #expect(try roundTrip(json) == json)
        }

        @Test("Round Trip Deeply Nested")
        func roundTripDeeplyNested() throws {
            let json: JSON = [
                [
                    ["a": [1, [2, [3, ["deep": true]]]]],
                ],
            ]
            #expect(try roundTrip(json) == json)
        }

        // MARK: - Interoperability

        @Test("Encoded Output Matches JSONSerialization")
        func encodedMatchesFoundation() throws {
            let json: JSON = ["a": 1, "b": [2, 3], "c": "four"]
            let data = try encoder.encode(json)
            let object = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            let unwrapped = try #require(object)
            #expect(unwrapped["a"] as? Int == 1)
            #expect(unwrapped["b"] as? [Int] == [2, 3])
            #expect(unwrapped["c"] as? String == "four")
        }

        @Test("Decodes Foundation Produced JSON")
        func decodesFoundationProducedJSON() throws {
            let object: [String: Any] = ["a": 1, "b": [2, 3], "c": "four"]
            let data = try JSONSerialization.data(withJSONObject: object)
            let json = try decoder.decode(JSON.self, from: data)
            #expect(try json.value(forKey: "a") == 1)
            #expect(try json.value(forKey: "b") == [2, 3])
            #expect(try json.value(forKey: "c") == "four")
        }

        @Test("JSON Codable Inside Another Codable Type")
        func nestedInsideCodableType() throws {
            struct Wrapper: Codable, Equatable {
                let name: String
                let payload: JSON
            }
            let wrapper = Wrapper(name: "test", payload: ["count": 3, "tags": ["a", "b"]])
            let data = try encoder.encode(wrapper)
            let decoded = try decoder.decode(Wrapper.self, from: data)
            #expect(decoded == wrapper)
        }

        // MARK: - Malformed Single Value

        @Test("Decode Unsupported Single Value Throws")
        func decodeUnsupportedSingleValueThrows() {
            // A property list can hold a `Date` in a single-value container. A `Date`
            // is neither bool, number, string, nor null, so decoding it as `JSON`
            // exercises the type-mismatch path in `JSON.init(from:)`.
            struct Box: Encodable {
                let value: Date
            }
            let plistEncoder = PropertyListEncoder()
            let plistDecoder = PropertyListDecoder()
            #expect(throws: DecodingError.self) {
                let data = try plistEncoder.encode(Box(value: Date(timeIntervalSince1970: 0)))
                _ = try plistDecoder.decode(JSON.self, from: data)
            }
        }

    }

    @Suite("Patch Application Tests")
    struct PatchApplicationTests {

        /// Asserts both the non-mutating and mutating forms produce `expected`.
        private func assertApplies(
            _ input: JSON,
            _ patch: JSON.Patch,
            _ expected: JSON
        ) throws {
            #expect(try input.applying(patch) == expected)
            var copy = input
            try copy.apply(patch)
            #expect(copy == expected)
        }

        @Test(
            "Applies add operations",
            arguments: [
                ("object member", ["foo": "bar"], JSON.Patch().add("qux", to: ["baz"]), ["foo": "bar", "baz": "qux"]),
                ("replaces an existing member", ["a": 1], JSON.Patch().add(2, to: ["a"]), ["a": 2]),
                ("inserts into an array", ["a": [1, 2, 3]], JSON.Patch().add(99, to: ["a", "1"]), ["a": [1, 99, 2, 3]]),
                ("at the first index", [1, 2], JSON.Patch().add(0, to: ["0"]), [0, 1, 2]),
                ("at the end index", [1, 2], JSON.Patch().add(3, to: ["2"]), [1, 2, 3]),
                ("appends with a dash", [1, 2], JSON.Patch().add(3, to: ["-"]), [1, 2, 3]),
                ("replaces the whole document", ["a": 1], JSON.Patch().add("new", to: .wholeDocument), "new"),
                ("into a nested array", ["a": ["b": [1]]], JSON.Patch().add(2, to: ["a", "b", "-"]), ["a": ["b": [1, 2]]]),
            ] as [(name: String, input: JSON, patch: JSON.Patch, expected: JSON)]
        )
        func addOperations(name: String, input: JSON, patch: JSON.Patch, expected: JSON) throws {
            try assertApplies(input, patch, expected)
        }

        @Test(
            "Applies remove and replace operations",
            arguments: [
                ("remove an object member", ["a": 1, "b": 2], JSON.Patch().remove(at: ["a"]), ["b": 2]),
                ("remove an array element", [1, 2, 3], JSON.Patch().remove(at: ["1"]), [1, 3]),
                ("remove a nested member", ["a": ["b": 1, "c": 2]], JSON.Patch().remove(at: ["a", "b"]), ["a": ["c": 2]]),
                ("replace an object member", ["a": 1], JSON.Patch().replace(at: ["a"], with: 2), ["a": 2]),
                ("replace an array element", [1, 2], JSON.Patch().replace(at: ["0"], with: 9), [9, 2]),
                ("replace the whole document", ["a": 1], JSON.Patch().replace(at: .wholeDocument, with: "x"), "x"),
            ] as [(name: String, input: JSON, patch: JSON.Patch, expected: JSON)]
        )
        func removeAndReplaceOperations(name: String, input: JSON, patch: JSON.Patch, expected: JSON) throws {
            try assertApplies(input, patch, expected)
        }

        @Test(
            "Applies move, copy, test, and compound patches",
            arguments: [
                ("move an object member", ["a": 1], JSON.Patch().move(from: ["a"], to: ["c"]), ["c": 1]),
                ("move reorders an array", ["f": ["all", "grass", "cows", "eat"]], JSON.Patch().move(from: ["f", "1"], to: ["f", "3"]), ["f": ["all", "cows", "eat", "grass"]]),
                ("copy duplicates a value", ["a": ["x": 1]], JSON.Patch().copy(from: ["a"], to: ["b"]), ["a": ["x": 1], "b": ["x": 1]]),
                ("a passing test is a no-op", ["a": 1], JSON.Patch().test(for: 1, at: ["a"]), ["a": 1]),
                ("an empty patch is the identity", ["a": 1], JSON.Patch(), ["a": 1]),
                ("operations apply in sequence", ["a": 1], JSON.Patch().add(2, to: ["b"]).replace(at: ["a"], with: 9), ["a": 9, "b": 2]),
            ] as [(name: String, input: JSON, patch: JSON.Patch, expected: JSON)]
        )
        func compoundOperations(name: String, input: JSON, patch: JSON.Patch, expected: JSON) throws {
            try assertApplies(input, patch, expected)
        }

        @Test("A failing test operation throws patchTestFailed")
        func failure() {
            let document: JSON = ["foo": "bar"]
            #expect(throws: JSON.OperationError.patchTestFailed(["foo"])) {
                try document.applying(JSON.Patch().test(for: "qux", at: ["foo"]))
            }
        }

        // "é" can be written as a single precomposed scalar (U+00E9) or as "e"
        // plus a combining acute accent (U+0065 U+0301). The two are canonically
        // equivalent — Swift's `String ==` treats them as equal — but their code
        // points differ, so RFC 6902 §4.6 requires `test` to compare them as unequal.
        static let precomposedE = JSON.string("\u{00E9}")
        static let decomposedE = JSON.string("\u{0065}\u{0301}")

        @Test("test compares strings by code points, not canonical equivalence")
        func codePointEquality() {
            let document: JSON = ["name": PatchApplicationTests.precomposedE]
            #expect(throws: JSON.OperationError.patchTestFailed(["name"])) {
                try document.applying(JSON.Patch().test(for: PatchApplicationTests.decomposedE, at: ["name"]))
            }
        }

        @Test(
            "test code-point comparison applies inside arrays and objects",
            arguments: [
                ("array element", [PatchApplicationTests.precomposedE], JSON.array([PatchApplicationTests.decomposedE])),
                ("object value", ["k": PatchApplicationTests.precomposedE], JSON.object(["k": PatchApplicationTests.decomposedE])),
            ] as [(name: String, document: JSON, tested: JSON)]
        )
        func codePointEqualityNested(name: String, document: JSON, tested: JSON) {
            #expect(throws: JSON.OperationError.patchTestFailed(.wholeDocument)) {
                try document.applying(JSON.Patch().test(for: tested, at: .wholeDocument))
            }
        }

        @Test("test passes for code-point-identical strings nested in collections")
        func exactMatchPasses() throws {
            let document: JSON = [
                "a": [PatchApplicationTests.precomposedE, 1],
                "b": ["x": true],
            ]
            // Comparing the document against itself: identical code points, so the test passes.
            #expect(try document.applying(JSON.Patch().test(for: document, at: .wholeDocument)) == document)
        }

        @Test("test keeps numeric equality for numbers")
        func numericEquality() throws {
            let document: JSON = ["n": 42]
            // 42 and 42.0 are numerically equal per RFC 6902, so the test passes.
            #expect(try document.applying(JSON.Patch().test(for: ["n": 42.0], at: .wholeDocument)) == document)
        }

        @Test("test fails when objects have the same size but different keys")
        func objectMismatchedKeys() {
            let document: JSON = ["a": 1]
            #expect(throws: JSON.OperationError.patchTestFailed(.wholeDocument)) {
                try document.applying(JSON.Patch().test(for: ["b": 1], at: .wholeDocument))
            }
        }

        @Test("Moving a value into its own descendant throws invalidPatchMove")
        func moveIntoDescendant() {
            let document: JSON = ["a": ["b": 1]]
            #expect(throws: JSON.OperationError.invalidPatchMove(["a"])) {
                try document.applying(JSON.Patch().move(from: ["a"], to: ["a", "c"]))
            }
        }

        @Test("Removing the whole document throws cannotRemoveWholeDocument")
        func removeWholeDocument() {
            let document: JSON = ["a": 1]
            #expect(throws: JSON.OperationError.cannotRemoveWholeDocument) {
                try document.applying(JSON.Patch().remove(at: .wholeDocument))
            }
        }

        @Test(
            "Operations targeting invalid locations throw",
            arguments: [
                ("replace a missing key", ["a": 1], JSON.Patch().replace(at: ["z"], with: 1), JSON.OperationError.keyNotFound("z")),
                ("remove a missing key", ["a": 1], JSON.Patch().remove(at: ["z"]), .keyNotFound("z")),
                ("add past the end of an array", [1, 2], JSON.Patch().add(9, to: ["5"]), .indexOutOfBounds(5)),
                ("add with a non-numeric array token", ["a": [1]], JSON.Patch().add(9, to: ["a", "x"]), .invalidSubscript(.key("x"))),
                ("add into a scalar", 5, JSON.Patch().add(1, to: ["x"]), .invalidSubscript(.key("x"))),
            ] as [(name: String, input: JSON, patch: JSON.Patch, error: JSON.OperationError)]
        )
        func invalidLocation(name: String, input: JSON, patch: JSON.Patch, error: JSON.OperationError) {
            #expect(throws: error) {
                try input.applying(patch)
            }
        }

        @Test("A failing operation leaves the value unchanged")
        func atomicity() {
            var document: JSON = ["a": 1]
            let patch = JSON.Patch()
                .add(2, to: ["b"])
                .remove(at: ["does-not-exist"])
            #expect(throws: JSON.OperationError.self) {
                try document.apply(patch)
            }
            #expect(document == ["a": 1])
        }
    }

    @Suite("String Interpolation Tests")
    struct StringInterpolationTests {

        @Test(
            "Interpolates a value's JSON representation",
            arguments: [
                ("integer", 42, "42"),
                ("double", 4.5, "4.5"),
                ("bool", true, "true"),
                ("string is quoted", "hi", "\"hi\""),
                ("null", JSON.null, "null"),
                ("array", [1, 2, 3], "[1,2,3]"),
                ("object", ["a": 1], "{\"a\":1}"),
            ] as [(name: String, value: JSON, expected: String)]
        )
        func interpolates(name: String, value: JSON, expected: String) {
            #expect(expected == "\(json: value)")
        }

        @Test("Interpolates within a larger string literal")
        func embedded() {
            let value: JSON = ["x": [1, 2]]
            #expect("the value is \(json: value)!" == "the value is {\"x\":[1,2]}!")
        }

        @Test("Accepts any JSONConvertible value, not just JSON")
        func convertible() {
            // The parameter is `some JSONConvertible`, so Swift values work directly.
            #expect("\(json: 7)" == "7")
            #expect("\(json: "raw")" == "\"raw\"")
            #expect("\(json: [true, false])" == "[true,false]")
        }

        @Test(
            "Serializes non-conforming floating-point values as strings",
            arguments: [
                (Double.nan, "\"NaN\""),
                (Double.infinity, "\"Infinity\""),
                (-Double.infinity, "\"-Infinity\""),
            ] as [(value: Double, expected: String)]
        )
        func nonConformingFloats(value: Double, expected: String) {
            #expect(expected == "\(json: value)")
        }

        @Test("The options overload applies serialization options")
        func withOptions() throws {
            let value: JSON = ["b": 2, "a": 1]
            let pretty = try "\(json: value, options: [.prettyPrinted, .sortedKeys, .fragmentsAllowed])"
            #expect(pretty == "{\n  \"a\" : 1,\n  \"b\" : 2\n}")
        }

        @Test("The options overload interpolates within a larger literal")
        func withOptionsEmbedded() throws {
            let result = try "value: \(json: [1, 2], options: [.fragmentsAllowed])."
            #expect(result == "value: [1,2].")
        }

        @Test("The options overload throws on non-conforming floats when not allowed")
        func withOptionsThrows() {
            #expect(throws: (any Error).self) {
                _ = try "\(json: Double.nan, options: [.fragmentsAllowed])"
            }
        }
    }

    @Suite("Merge Patch Tests")
    struct MergePatchTests {

        @Suite("Apply")
        struct Apply {

            /// The example test cases from RFC 7386 Appendix A: (original, patch, result).
            static let appendixA: [(target: JSON, patch: JSON, result: JSON)] = [
                (["a": "b"], ["a": "c"], ["a": "c"]),
                (["a": "b"], ["b": "c"], ["a": "b", "b": "c"]),
                (["a": "b"], ["a": nil], [:]),
                (["a": "b", "b": "c"], ["a": nil], ["b": "c"]),
                (["a": ["b"]], ["a": "c"], ["a": "c"]),
                (["a": "c"], ["a": ["b"]], ["a": ["b"]]),
                (["a": ["b": "c"]], ["a": ["b": "d", "c": nil]], ["a": ["b": "d"]]),
                (["a": [["b": "c"]]], ["a": [1]], ["a": [1]]),
                (["a", "b"], ["c", "d"], ["c", "d"]),
                (["a": "b"], ["c"], ["c"]),
                (["a": "foo"], nil, nil),
                (["a": "foo"], "bar", "bar"),
                (["e": nil], ["a": 1], ["e": nil, "a": 1]),
                ([1, 2], ["a": "b", "c": nil], ["a": "b"]),
                ([:], ["a": ["bb": ["ccc": nil]]], ["a": ["bb": [:]]]),
            ]

            @Test("RFC 7386 Appendix A example test cases", arguments: appendixA)
            func appendixAVectors(_ vector: (target: JSON, patch: JSON, result: JSON)) {
                #expect(vector.target.applying(mergePatch: vector.patch) == vector.result)
            }

            @Test("apply(mergePatch:) mutates the value in place")
            func applyMutates() {
                var value: JSON = ["a": "b"]
                value.apply(mergePatch: ["a": "c", "b": "d"])
                #expect(value == ["a": "c", "b": "d"])
            }

            @Test("A nil object member deletes the corresponding key")
            func nilMemberDeletes() {
                let target: JSON = ["title": "Goodbye!", "phoneNumber": "+01-123-456-7890"]
                #expect(target.applying(mergePatch: ["phoneNumber": nil]) == ["title": "Goodbye!"])
            }

            @Test("An empty-object patch turns a non-object target into an empty object")
            func emptyPatchOnScalar() {
                #expect(JSON("x").applying(mergePatch: [:]) == [:])
                #expect(JSON([1, 2]).applying(mergePatch: [:]) == [:])
            }

            @Test("An empty-object patch leaves an object target unchanged")
            func emptyPatchOnObject() {
                #expect(JSON(["a": 1]).applying(mergePatch: [:]) == ["a": 1])
            }

            @Test("A non-object patch replaces the target wholesale")
            func nonObjectPatchReplaces() {
                #expect(JSON(["a": 1]).applying(mergePatch: .null) == .null)
                #expect(JSON(["a": 1]).applying(mergePatch: "scalar") == "scalar")
                #expect(JSON(["a": 1]).applying(mergePatch: [1, 2]) == [1, 2])
            }

            @Test("Replacing an object with a scalar and a scalar with an object")
            func typeReplacements() {
                #expect(JSON(["a": ["x": 1]]).applying(mergePatch: ["a": 5]) == ["a": 5])
                #expect(JSON(["a": 5]).applying(mergePatch: ["a": ["x": 1]]) == ["a": ["x": 1]])
            }

            @Test("Arrays are replaced wholesale, never merged element by element")
            func arraysReplacedWholesale() {
                #expect(JSON(["a": [1, 2, 3]]).applying(mergePatch: ["a": [1, 2]]) == ["a": [1, 2]])
            }

            @Test("A null inside an array value is preserved")
            func nullInsideArrayPreserved() {
                #expect(JSON().applying(mergePatch: ["a": [nil]]) == ["a": [nil]])
            }

            @Test("A deeply nested delete removes only the leaf")
            func deepNestedDelete() {
                let target: JSON = ["a": ["b": ["c": 1, "d": 2]]]
                #expect(target.applying(mergePatch: ["a": ["b": ["c": nil]]]) == ["a": ["b": ["d": 2]]])
            }

            @Test("Applying a merge patch is idempotent")
            func idempotent() {
                let target: JSON = ["a": ["b": "c"], "x": 1]
                let patch: JSON = ["a": ["b": "d", "c": nil], "x": nil, "y": 2]
                let once = target.applying(mergePatch: patch)
                #expect(once.applying(mergePatch: patch) == once)
            }
        }

        @Suite("Generation")
        struct Generation {

            @Test("The diff of two equal objects is an empty-object patch")
            func equalObjects() {
                let json: JSON = [
                    "a": 1,
                    "b": [1, 2]
                ]
                #expect(json.mergeDifference(to: ["a": 1, "b": [1, 2]]) == [:])
            }

            @Test("The diff of two equal non-objects is the value itself")
            func equalNonObjects() {
                #expect(JSON(5).mergeDifference(to: 5) == 5)
            }

            @Test("A removed key becomes a null member")
            func removedKey() {
                #expect(JSON(["a": 1, "b": 2]).mergeDifference(to: ["a": 1]) == ["b": nil])
            }

            @Test("A changed nested object recurses and unchanged keys are omitted")
            func changedNested() {
                #expect(JSON(["a": ["x": 1, "y": 2]]).mergeDifference(to: ["a": ["x": 1, "y": 3]]) == ["a": ["y": 3]])
            }

            @Test("A changed array is emitted wholesale")
            func changedArray() {
                #expect(JSON(["a": [1, 2, 3]]).mergeDifference(to: ["a": [1, 99]]) == ["a": [1, 99]])
            }

            static let roundTripCases: [(source: JSON, target: JSON)] = [
                (["a": 1], ["a": 2]),
                (["a": 1], ["a": 1, "b": 2]),
                (["a": 1, "b": 2], ["a": 1]),
                (["a": ["b": 1]], ["a": ["b": 2, "c": 3]]),
                (["a": [1, 2]], ["a": [3]]),
                (["a": 1], ["a": ["x": 1]]),
                ([:], ["a": ["b": ["c": 1]]]),
                ([1, 2], ["a": "b"]),
                ("scalar", ["a": 1]),
                (["a": [nil, 1]], ["a": [2, nil]]),
            ]

            @Test("Round-trips when the target has no object-member nulls", arguments: roundTripCases)
            func roundTrips(_ pair: (source: JSON, target: JSON)) {
                #expect(pair.source.applying(mergePatch: pair.source.mergeDifference(to: pair.target)) == pair.target)
            }

            @Test("A null array element does not break the round trip")
            func nullInArrayRoundTrips() {
                let source: JSON = [:]
                let target: JSON = ["a": [1, nil, 2]]
                #expect(source.applying(mergePatch: source.mergeDifference(to: target)) == target)
            }

            @Test("An object-member null cannot round-trip (RFC 7386 limitation)")
            func objectMemberNullCannotRoundTrip() {
                let source: JSON = ["a": 1]
                let target: JSON = ["a": nil]
                // The generated patch deletes the key rather than setting it to null, so applying it
                // produces an empty object — not the target. This is an inherent RFC 7386 limitation.
                #expect(source.applying(mergePatch: source.mergeDifference(to: target)) == .object([:]))
                #expect(source.applying(mergePatch: source.mergeDifference(to: target)) != target)
            }
        }
    }

}
