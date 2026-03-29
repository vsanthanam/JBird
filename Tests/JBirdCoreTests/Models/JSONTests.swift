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

struct JSONTests {

    @Test
    func `Empty Init`() {
        let json = JSON()
        #expect(json == .object([:]))
    }

    @Test
    func `JSON Count`() throws {
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

    @Test
    func `Unboxed JSON`() {
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

    struct ValueCheckingTests {

        @Test
        func `Null Value Check`() {
            let nullValue: JSON = .null
            #expect(nullValue.isNull)
            #expect(!nullValue.isBool)
            #expect(!nullValue.isNumber)
            #expect(!nullValue.isString)
            #expect(!nullValue.isObject)
            #expect(!nullValue.isArray)
        }

        @Test
        func `Bool Value Check`() {
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

        @Test
        func `Number Value Check`() {
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

        @Test
        func `String Value Check`() {
            let stringValue: JSON = "Hello, World!"
            #expect(!stringValue.isNull)
            #expect(!stringValue.isBool)
            #expect(!stringValue.isNumber)
            #expect(stringValue.isString)
            #expect(!stringValue.isObject)
            #expect(!stringValue.isArray)
        }

        @Test
        func `Array Value Check`() {
            let arrayValue: JSON = [1, 2, 3]
            #expect(!arrayValue.isNull)
            #expect(!arrayValue.isBool)
            #expect(!arrayValue.isNumber)
            #expect(!arrayValue.isString)
            #expect(!arrayValue.isObject)
            #expect(arrayValue.isArray)
        }

        @Test
        func `Object Value Check`() {
            let objectValue: JSON = ["key": "value"]
            #expect(!objectValue.isNull)
            #expect(!objectValue.isBool)
            #expect(!objectValue.isNumber)
            #expect(!objectValue.isString)
            #expect(objectValue.isObject)
            #expect(!objectValue.isArray)
        }
    }

    struct EnumValueAccessTests {

        @Test
        func `Object value access`() throws {
            let jsonObject = JSON.object(["foo": "bar"])
            let nonObjectJson = JSON.string("foo")
            let object = try jsonObject.objectValue
            #expect(object == ["foo": "bar"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try nonObjectJson.objectValue
            }
        }

        @Test
        func `Array value access`() throws {
            let jsonArray = JSON.array(["foo", "bar"])
            let nonArrayJson = JSON.string("foo")
            let array = try jsonArray.arrayValue
            #expect(array == ["foo", "bar"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                _ = try nonArrayJson.arrayValue
            }
        }

        @Test
        func `String value access`() throws {
            let jsonString = JSON.string("foo")
            let nonStringJson = JSON.object(["foo": "bar"])
            let string = try jsonString.stringValue
            #expect(string == "foo")
            #expect(throws: JSON.OperationError.illegalStringConversion) {
                _ = try nonStringJson.stringValue
            }
        }

        @Test
        func `Number value access`() throws {
            let jsonNumber = JSON.number(123)
            let nonNumberJson = JSON.string("foo")
            let number = try jsonNumber.numberValue
            #expect(number == .init(123))
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonNumberJson.numberValue
            }
        }

        @Test
        func `Bool value access`() throws {
            let jsonBool = JSON.bool(false)
            let nonBoolJson = JSON.string("foo")
            let bool = try jsonBool.boolValue
            #expect(bool == false)
            #expect(throws: JSON.OperationError.illegalBoolConversion) {
                _ = try nonBoolJson.boolValue
            }
        }

    }

    struct SubtypeHelperTests {

        @Test
        func `Bool access tests`() throws {
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

        @Test
        func `Integer access tests`() throws {
            let jsonInt = JSON.number(123)
            let nonIntJson = JSON.string("foo")
            let int = try jsonInt.numberValue.convert(into: Int.self)
            #expect(int == 123)
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonIntJson.numberValue
            }
        }

        @Test
        func `Floating point access tests`() throws {
            let jsonDouble = JSON.number(123.456)
            let nonDoubleJson = JSON.string("foo")
            let double = try jsonDouble.numberValue.convert(into: Double.self)
            #expect(double == 123.456)
            #expect(throws: JSON.OperationError.illegalNumberConversion) {
                _ = try nonDoubleJson.numberValue
            }
        }

    }

    struct LiteralExpressionTests {

        @Test
        func `Literal null`() {
            let literal: JSON = nil
            let standard = JSON.null
            #expect(literal == standard)
        }

        @Test
        func `Literal true`() {
            let literal: JSON = true
            let standard = JSON.bool(true)
            #expect(literal == standard)
        }

        @Test
        func `Literal false`() {
            let literal: JSON = false
            let standard = JSON.bool(false)
            #expect(literal == standard)
        }

        @Test
        func `Literal int`() {
            let literal: JSON = 123
            let standard = JSON.number(123)
            #expect(literal == standard)
        }

        @Test
        func `Literal double`() {
            let literal: JSON = 123.456
            let standard = JSON.number(123.456)
            #expect(literal == standard)
        }

        @Test
        func `Literal string`() {
            let literal: JSON = "foo"
            let standard = JSON.string("foo")
            #expect(literal == standard)
        }

        @Test
        func `Literal array`() {
            let literal: JSON = ["foo", "bar"]
            let standard = JSON.array(["foo", "bar"])
            #expect(literal == standard)
        }

        @Test
        func `Literal object`() {
            let literal: JSON = ["foo": "bar"]
            let standard = JSON.object(["foo": "bar"])
            #expect(literal == standard)
        }

    }

    struct InitializerTests {

        @Test
        func `Initialize from String`() throws {
            let jsonString = "{\"foo\":\"bar\"}"
            let json = try JSON(jsonString: jsonString)
            #expect(json == ["foo": "bar"])
        }
    }

    @Test
    func `Subcript Tests`() throws {
        let json: JSON = [
            "foo": [1, 2, 3]
        ]

        #expect(try json["foo"][1] == 2)
        #expect(try json[.key("foo")][.index(1)] == 2)
    }

    struct IntrospectionTests {

        @Test
        func `Value at path tests`() throws {
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

        @Test
        @available(*, deprecated)
        func `Value at path tests (deprecated)`() throws {
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

        @Test
        func `Value at path tests (parameter packs)`() throws {
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

        @Test
        func `Value for key tests`() throws {
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

        @Test
        func `Value at index tests`() throws {
            let json: JSON = [1, "bar", true]

            #expect(try json.value(atIndex: 0) == 1)
            #expect(try json.value(atIndex: 1) == "bar")
            #expect(try json.value(atIndex: 2) == true)
            #expect(throws: JSON.OperationError.indexOutOfBounds(3)) {
                _ = try json.value(atIndex: 3)
            }
        }

        @Test
        func `Value for subscript tests`() throws {
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

        @Test
        func `Contains value tests`() {
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

    struct MutationTests {

        @Test
        func `Set value for key tests`() throws {
            var json: JSON = ["foo": "bar"]

            try json.setValue("baz", forKey: "qux")
            #expect(json == ["foo": "bar", "qux": "baz"])

            var nonObjectJson: JSON = "string"
            #expect(throws: JSON.OperationError.invalidSubscript(JSON.Subscript("key"))) {
                try nonObjectJson.setValue("value", forKey: "key")
            }

        }

        @Test
        func `Set value at index tests`() throws {
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

        @Test
        func `Set value for subscript tests`() throws {
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

        @Test
        func `Array append and insert`() throws {
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

        @Test
        func `Remove value tests`() throws {
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
        @Suite(.serialized)
        struct WritingTests {

            init() {
                try? FileManager.default.removeItem(atPath: testURL.path())
            }

            let testURL = FileManager.default.temporaryDirectory.appending(path: "test.json", directoryHint: .notDirectory)

            @available(macOS 13.0, macCatalyst 16.0, *)
            @Test
            func `Write to disk without previous content`() async throws {
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
            @Test
            func `Write to disk with previous content`() async throws {
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

            @Test
            func `Write to disk overwriting previous content`() async throws {
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

    struct SerializationTests {

        @Test
        func `Serialize JSON`() throws {
            let json: JSON = ["foo": "bar"]
            let data = try json.serialize()
            let expected = Data([
                0x7B, 0x22, 0x66, 0x6F, 0x6F, 0x22, 0x3A,
                0x22, 0x62, 0x61, 0x72, 0x22, 0x7D
            ])
            #expect(data == expected)
        }

        @Test
        func `Stringify JSON`() throws {
            let json: JSON = ["foo": "bar"]
            let str = try json.stringify()
            let expected = #"""
            {"foo":"bar"}
            """#
            #expect(str == expected)
        }

    }

    @Test
    func `First and Last Array`() throws {
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

    @Test
    func `Count Array`() throws {
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

    struct AllSatisfyTests {

        @Test
        func `all satisfy array`() throws {
            let array: JSON = ["a", "b", "c", "d"]
            let object: JSON = ["foo": "bar"]
            try #expect(array.allSatisfy { (element: JSON) in element.isString } == true)
            try #expect(array.allSatisfy { (element: JSON) in element.isNumber } == false)
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.allSatisfy { (element: JSON) in true }
            }
        }

        @Test
        func `all satisfy object`() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            try #expect(object.allSatisfy { key, _ in key.count == 3 } == true)
            try #expect(object.allSatisfy { key, value in key.count == 3 && value.isString } == false)
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.allSatisfy { _, _ in true }
            }
        }

    }

    @Test
    func `Object Keys and Values`() throws {
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

    struct MapTests {

        @Test
        func `Array Map Tests`() throws {
            let array: JSON = ["a", "b", "c", "d"]
            let object: JSON = ["foo": "bar"]
            let mapped = try array.map { try $0.stringValue.uppercased() }
            #expect(mapped == ["A", "B", "C", "D"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                _ = try object.map { try $0.stringValue.uppercased() }
            }
        }

        @Test
        func `Object Map Tests`() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.map { key, _ in key.uppercased() }
            #expect(mapped == ["FOO", "BAZ"] || mapped == ["BAZ", "FOO"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.map { key, _ in key.uppercased() }
            }
        }

        @Test
        func `Map Values Tests`() throws {
            let object: JSON = ["foo": "bar", "baz": 42]
            let array: JSON = ["a", "b", "c", "d"]
            let mapped = try object.mapValues(\.isNumber)
            #expect(mapped == ["foo": false, "baz": true])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                _ = try array.mapValues(\.isNumber)
            }
        }

        @Test
        func `Map Values Into JSON Tests`() throws {
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

    struct CompactMapTests {

        @Test
        func `array compact map tests`() throws {
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

        @Test
        func `Object Compact Map Tests`() throws {
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

        @Test
        func `compact map values tests`() throws {
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

    struct ReduceTests {

        @Test
        func `Array Reduce`() throws {
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

        @Test
        func `Array Reduce Into`() throws {
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

        @Test
        func `Object Reduce`() throws {
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

        @Test
        func `Object Reduce Into`() throws {
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

    struct ForEachTests {

        @Test
        func `Array For Each`() throws {
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

        @Test
        func `Object For Each`() throws {
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

    @Test
    func `Array Index Swap`() throws {
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

    @Test
    func `Object Merging`() throws {
        var object1: JSON = ["foo": "bar"]
        let object2: JSON = ["baz": "qux", "qux": "corge"]
        try object1.merge(object2)
        #expect(object1 == ["foo": "bar", "baz": "qux", "qux": "corge"])
        let object3: JSON = ["pay": "load"]
        let object4 = try object1.merging(object3)
        #expect(object4 == ["foo": "bar", "baz": "qux", "qux": "corge", "pay": "load"])
    }

    struct FilteringTests {

        @Test
        func `Array Filtering`() throws {
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let filteredArray = try array.filter { element in try element.stringValue.hasPrefix("q") }
            #expect(filteredArray == ["qux", "qux"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.filter { element in try element.stringValue.hasPrefix("q") }
            }
        }

        @Test
        func `Object Filtering`() throws {
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filter { key, _ in key != "qux" }
            #expect(filteredObject == ["foo": "bar", "baz": "qux"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test
        func `Object Key Filtering`() throws {
            let object: JSON = ["foo": "bar", "baz": "qux", "qux": "corge"]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filterKeys { key in key.starts(with: "q") }
            #expect(filteredObject == ["qux": "corge"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test
        func `Object Value Filtering`() throws {
            let object: JSON = ["foo": "bar", "baz": 2.0, "qux": 1]
            let array: JSON = ["foo", "baz", "qux", "qux"]
            let filteredObject = try object.filterValues(\.isString)
            #expect(filteredObject == ["foo": "bar"])
            #expect(throws: JSON.OperationError.illegalObjectConversion) {
                try array.filter { key, _ in key != "qux" }
            }
        }

        @Test
        func `Array Filter Nils Filtering`() throws {
            let array: JSON = ["foo", "bar", nil, "baz", nil]
            let object: JSON = ["foo": "bar", "baz": 2.0, "qux": 1]
            let filteredArray = try array.filterNils()
            #expect(filteredArray == ["foo", "bar", "baz"])
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try object.filterNils()
            }
        }
    }

    @Test
    func `Null JSON Description`() {
        let json = JSON.null
        #expect(json.description == "null")
    }

}
