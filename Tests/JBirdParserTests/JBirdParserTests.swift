// JBird
// JBirdParserTests.swift
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
import JBirdParser
import Testing

struct JBirdParserTests {

    // MARK: - Basic Parsing Tests

    @Test
    func `Parse null value`() throws {
        let raw = "null"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NULL)

    }

    @Test
    func `Parse true value`() throws {
        let raw = "true"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
    }

    @Test
    func `Parse false value`() throws {
        let raw = "false"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }
        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == false)

    }

    @Test
    func `Parse integer`() throws {
        let raw = "42"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 42)
        #expect(json_get_double(value) == 42.0)

    }

    @Test
    func `Parse negative integer`() throws {
        let raw = "-123"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == -123)

    }

    @Test
    func `Parse zero`() throws {
        let raw = "0"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 0)
    }

    @Test
    func `Parse double`() throws {
        let raw = "3.14159"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 3.14159) < 0.00001)
        #expect(json_get_int(value) == 3)
    }

    @Test
    func `Parse scientific notation`() throws {
        let raw = "1.23e10"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 1.23e10) < 1e6)
    }

    @Test
    func `Parse negative scientific notation`() throws {
        let raw = "-1.5e-3"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - (-1.5e-3)) < 1e-6)

    }

    @Test
    func `Parse simple string`() throws {
        let raw = #"""
        "hello"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == "hello")

    }

    @Test
    func `Parse empty string`() throws {
        let raw = #"""
        ""
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == "")

    }

    @Test
    func `Parse string with escapes`() throws {
        let raw = #"""
        "hello\nworld\t!"    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == "hello\nworld\t!")
    }

    @Test
    func `Parse string with unicode`() throws {
        let raw = #"""
        "\u0048\u0065\u006C\u006C\u006F"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == "Hello")
    }

    @Test
    func `Parse string with surrogate pairs`() throws {
        let raw = #"""
        "\uD83D\uDE00"    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == "😀")
    }

    @Test
    func `Parse empty array`() throws {
        let raw = #"""
        []
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 0)
    }

    @Test
    func `Parse array with elements`() throws {
        let raw = #"""
        [1, 2, 3]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 3)

        let elem0 = json_get_array_element(value, 0)
        #expect(elem0 != nil)
        #expect(json_get_type(elem0) == JSON_NUMBER_INT)
        #expect(json_get_int(elem0) == 1)

        let elem1 = json_get_array_element(value, 1)
        #expect(elem1 != nil)
        #expect(json_get_type(elem1) == JSON_NUMBER_INT)
        #expect(json_get_int(elem1) == 2)

        let elem2 = json_get_array_element(value, 2)
        #expect(elem2 != nil)
        #expect(json_get_type(elem2) == JSON_NUMBER_INT)
        #expect(json_get_int(elem2) == 3)

        let elemOOB = json_get_array_element(value, 3)
        #expect(elemOOB == nil)
    }

    @Test
    func `Parse nested array`() throws {
        let raw = #"""
        [[1, 2], [3, 4]]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 2)

        let subArray0 = json_get_array_element(value, 0)
        #expect(subArray0 != nil)
        #expect(json_get_type(subArray0) == JSON_ARRAY)
        #expect(json_get_array_size(subArray0) == 2)
    }

    @Test
    func `Parse empty object`() throws {
        let raw = #"""
        {}
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 0)
    }

    @Test
    func `Parse object with properties`() throws {
        let raw = #"""
        {"name": "John", "age": 30}    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 2)

        let key0 = json_get_object_key(value, 0)
        #expect(key0 != nil)
        #expect(try String(cString: #require(key0)) == "name")

        let val0 = json_get_object_value(value, 0)
        #expect(val0 != nil)
        #expect(json_get_type(val0) == JSON_STRING)
        #expect(try String(cString: #require(json_get_string(val0))) == "John")

        let key1 = json_get_object_key(value, 1)
        #expect(key1 != nil)
        #expect(try String(cString: #require(key1)) == "age")

        let val1 = json_get_object_value(value, 1)
        #expect(val1 != nil)
        #expect(json_get_type(val1) == JSON_NUMBER_INT)
        #expect(json_get_int(val1) == 30)

        // Test out of bounds
        let keyOOB = json_get_object_key(value, 2)
        #expect(keyOOB == nil)

        let valOOB = json_get_object_value(value, 2)
        #expect(valOOB == nil)

    }

    @Test
    func `Parse complex nested structure`() throws {
        let raw = #"""
        {
            "users": [
                {"name": "Alice", "active": true},
                {"name": "Bob", "active": false}
            ],
            "count": 2,
            "metadata": null
        }
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 3)
    }

    // MARK: - BOM Tests

    @Test
    func `Parse with BOM allowed`() {
        let bom: [UInt8] = [0xEF, 0xBB, 0xBF]
        let jsonString = "true"
        let jsonData = Data(bom + jsonString.utf8)

        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, true, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
    }

    @Test
    func `Parse with BOM not allowed`() {
        let bom: [UInt8] = [0xEF, 0xBB, 0xBF]
        let jsonString = "true"
        let jsonData = Data(bom + jsonString.utf8)

        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }

    @Test
    func `Parse with whitespace allowed`() throws {
        let raw = "  \t\n  true  \r\n  "
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
    }

    @Test
    func `Parse with whitespace not allowed`() throws {
        let raw = #"""
         true 
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, true, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }

    @Test
    func `Parse with depth limit exceeded`() throws {
        let raw = #"""
        [[[[[true]]]]]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 3)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_MAX_DEPTH_EXCEEDED)
        #expect(value == nil)
    }

    @Test
    func `Parse within depth limit`() throws {
        let raw = #"""
        [[true]]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 3)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
    }

    @Test
    func `Parse null input`() {
        var value: OpaquePointer?
        let result = json_parse(nil, 0, &value, true, false, false, 0)

        #expect(result == JSON_INVALID_JSON)
        #expect(value == nil)
    }

    @Test
    func `Parse empty input`() throws {
        let jsonData = try #require("".data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }

    @Test
    func `Parse invalid character`() throws {
        let raw = #"""
        xyz
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }

    @Test
    func `Parse incomplete true`() throws {
        let raw = #"""
        tr
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }

    @Test
    func `Parse incomplete false`() throws {
        let raw = #"""
        fal
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }

    @Test
    func `Parse incomplete null`() throws {
        let raw = #"""
        nul
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }

    @Test
    func `Parse invalid leading zero`() throws {
        let raw = #"""
        01
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_NUMBER)
        #expect(value == nil)
    }

    @Test
    func `Parse invalid just minus`() throws {
        let raw = #"""
        -
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_NUMBER)
        #expect(value == nil)
    }

    @Test
    func `Parse unterminated string`() throws {
        let raw = #"""
        "hello
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }

    @Test
    func `Parse string with invalid escape`() throws {
        let raw = #"""
        "hello\x\"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_ESCAPE)
        #expect(value == nil)
    }

    @Test
    func `Parse string with control character`() {
        let jsonData = Data([0x22, 0x01, 0x22])
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_STRING)
        #expect(value == nil)
    }

    @Test
    func `Parse string with invalid unicode`() throws {
        let raw = #"""
        "\uXXXX"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse string with invalid surrogate pair`() throws {
        let raw = #"""
        "\uD800"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse string with lone low surrogate`() throws {
        let raw = #"""
        "\uDC00"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse unterminated array`() throws {
        let raw = #"""
        [1, 2
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }

    @Test
    func `Parse array with invalid separator`() throws {
        let raw = #"""
        [1; 2]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_EXPECTED_COMMA_OR_BRACKET)
        #expect(value == nil)
    }

    @Test
    func `Parse object missing key`() throws {
        let raw = #"""
        {123: "value"}
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_MISSING_OBJECT_KEY)
        #expect(value == nil)
    }

    @Test
    func `Parse object missing colon`() throws {
        let raw = #"""
        {"key" "value}    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_EXPECTED_COLON)
        #expect(value == nil)
    }

    @Test
    func `Parse object with invalid separator`() throws {
        let raw = #"""
        {"key1": "value1"; "key2": "value2"}    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_EXPECTED_COMMA_OR_BRACE)
        #expect(value == nil)
    }

    @Test
    func `Parse unterminated object`() throws {
        let raw = #"""
        {"key": "value"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }

    @Test
    func `Parse with trailing content`() throws {
        let raw = #"""
        true false
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_JSON)
        #expect(value == nil)
    }

    @Test
    func `Get boolean from non-boolean`() throws {
        let raw = "42"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        #expect(json_get_boolean(value) == false)
    }

    @Test
    func `Get int from null`() throws {
        let raw = "null"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        #expect(json_get_int(value) == 0)
        #expect(json_get_double(value) == 0.0)
    }

    @Test
    func `Get string from non-string`() throws {
        let raw = "42"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        #expect(json_get_string(value) == nil)
    }

    @Test
    func `Get array size from non-array`() throws {
        let raw = "42"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        #expect(json_get_array_size(value) == 0)
    }

    @Test
    func `Get object size from non-object`() throws {
        let raw = "42"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        #expect(json_get_object_size(value) == 0)
    }

    @Test
    func `Get type from null pointer`() {
        #expect(json_get_type(nil) == JSON_NULL)
    }

    @Test
    func `Get boolean from null pointer`() {
        #expect(json_get_boolean(nil) == false)
    }

    @Test
    func `Get int from null pointer`() {
        #expect(json_get_int(nil) == 0)
    }

    @Test
    func `Get double from null pointer`() {
        #expect(json_get_double(nil) == 0.0)
    }

    @Test
    func `Get string from null pointer`() {
        #expect(json_get_string(nil) == nil)
    }

    @Test
    func `Get array size from null pointer`() {
        #expect(json_get_array_size(nil) == 0)
    }

    @Test
    func `Get object size from null pointer`() {
        #expect(json_get_object_size(nil) == 0)
    }

    @Test
    func `Parse large integer`() throws {
        let raw = "9223372036854775807"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 9_223_372_036_854_775_807)
    }

    @Test
    func `Parse negative large integer`() throws {
        let raw = "-9223372036854775808"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        let type = json_get_type(value)
        #expect(type == JSON_NUMBER_INT)
        #expect(json_get_int(value) == -9_223_372_036_854_775_808)
    }

    @Test
    func `Parse number with positive exponent`() throws {
        let raw = #"""
        1e+10
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)

        let type = json_get_type(value)
        #expect(type == JSON_NUMBER_DOUBLE)
        let doubleValue = json_get_double(value)
        #expect(doubleValue == 1e10)
    }

    @Test
    func `Parse number with capital E`() throws {
        let jsonData = try #require("1.5E-2".data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 1.5e-2) < 1e-6)
    }

    // MARK: - Boundary Value Tests

    @Test
    func `Parse INT64_MAX as integer`() throws {
        let raw = "9223372036854775807" // INT64_MAX
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == Int64.max)
    }

    @Test
    func `Parse INT64_MIN as integer`() throws {
        let raw = "-9223372036854775808" // INT64_MIN
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == Int64.min)
    }

    @Test
    func `Parse INT64_MAX + 1 as double`() throws {
        let raw = "9223372036854775808" // INT64_MAX + 1
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(json_get_double(value) == 9_223_372_036_854_775_808.0)
    }

    @Test
    func `Parse INT64_MIN - 1 as double`() throws {
        let raw = "-9223372036854775809" // INT64_MIN - 1
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(json_get_double(value) == -9_223_372_036_854_775_809.0)
    }

    @Test
    func `Parse short number to test fallback path`() throws {
        // This tests the fallback path (< 16 bytes remaining)
        let raw = "123"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 123)
    }

    @Test
    func `Parse long number to test SIMD path`() throws {
        // This tests the SIMD-optimized path (>= 16 bytes remaining)
        let raw = "12345678901234567890" // 20 digits, should overflow to double
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(json_get_double(value) == 12_345_678_901_234_567_890.0)
    }

    @Test
    func `Parse negative long number to test SIMD path`() throws {
        // This tests the SIMD-optimized path with negative overflow
        let raw = "-12345678901234567890" // 20 digits, should overflow to double
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(json_get_double(value) == -12_345_678_901_234_567_890.0)
    }

    @Test
    func `Parse 18-digit number as integer`() throws {
        // 18 digits should still fit in int64 (within safe processing range)
        let raw = "123456789012345678" // 18 digits
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 123_456_789_012_345_678)
    }

    @Test
    func `Parse negative 18-digit number as integer`() throws {
        // 18 digits should still fit in int64 (within safe processing range)
        let raw = "-123456789012345678" // 18 digits
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == -123_456_789_012_345_678)
    }

    @Test
    func `Parse INT64_MAX - 1 as integer`() throws {
        let raw = "9223372036854775806" // INT64_MAX - 1
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == Int64.max - 1)
    }

    @Test
    func `Parse INT64_MIN + 1 as integer`() throws {
        let raw = "-9223372036854775807" // INT64_MIN + 1
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == Int64.min + 1)
    }

    @Test
    func `Parse extremely large positive number`() throws {
        let raw = "999999999999999999999999999999"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        // TODO: Fix precision tests
        #expect(json_get_double(value) > 0)
    }

    @Test
    func `Parse extremely large negative number`() throws {
        let raw = "-999999999999999999999999999999"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        // TODO: Fix precision tests
        #expect(json_get_double(value) < 0)
    }

    @Test
    func `Parse long string`() throws {
        let longString = String(repeating: "a", count: 1000)
        let raw = "\"" + longString + "\""
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        #expect(try String(cString: #require(str)) == longString)
    }

    @Test
    func `Parse string with all escape sequences`() throws {
        let raw = #"""
        "\"\/\b\f\n\r\t"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)

        let str = json_get_string(value)
        #expect(str != nil)
        let expectedString = "\"" + "/" + "\u{08}\u{0C}\n\r\t"
        #expect(try String(cString: #require(str)) == expectedString)

        json_free(value)
    }

    @Test
    func `Parse large array`() throws {
        let elements = Array(1...100).map(String.init).joined(separator: ", ")
        let raw = "[" + elements + "]"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 100)

        let first = json_get_array_element(value, 0)
        #expect(first != nil)
        #expect(json_get_int(first) == 1)

        let last = json_get_array_element(value, 99)
        #expect(last != nil)
        #expect(json_get_int(last) == 100)
    }

    @Test
    func `Parse large object`() throws {
        let properties = (1...50).map { "\"key\($0)\": \($0)" }.joined(separator: ", ")
        let raw = "{" + properties + "}"
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 50)

        let firstKey = json_get_object_key(value, 0)
        #expect(firstKey != nil)
        #expect(try String(cString: #require(firstKey)) == "key1")

        let firstValue = json_get_object_value(value, 0)
        #expect(firstValue != nil)
        #expect(json_get_int(firstValue) == 1)
    }

    @Test
    func `Free null value`() {
        json_free(nil)
    }

    @Test
    func `Parse mixed array types`() throws {
        let raw = #"""
        [null, true, false, 42, 3.14, "hello", [], {}]
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 8)

        #expect(json_get_type(json_get_array_element(value, 0)) == JSON_NULL)
        #expect(json_get_type(json_get_array_element(value, 1)) == JSON_BOOLEAN)
        #expect(json_get_type(json_get_array_element(value, 2)) == JSON_BOOLEAN)
        #expect(json_get_type(json_get_array_element(value, 3)) == JSON_NUMBER_INT)
        #expect(json_get_type(json_get_array_element(value, 4)) == JSON_NUMBER_DOUBLE)
        #expect(json_get_type(json_get_array_element(value, 5)) == JSON_STRING)
        #expect(json_get_type(json_get_array_element(value, 6)) == JSON_ARRAY)
        #expect(json_get_type(json_get_array_element(value, 7)) == JSON_OBJECT)
    }

    @Test
    func `Parse object with complex keys`() throws {
        let raw = #"""
        {"key with spaces": 1, "key\nwith\tescapes": 2, "key\u0041": 3}    
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 3)

        let key0 = json_get_object_key(value, 0)
        #expect(key0 != nil)
        #expect(try String(cString: #require(key0)) == "key with spaces")

        let key1 = json_get_object_key(value, 1)
        #expect(key1 != nil)
        #expect(try String(cString: #require(key1)) == "key\nwith\tescapes")

        let key2 = json_get_object_key(value, 2)
        #expect(key2 != nil)
        #expect(try String(cString: #require(key2)) == "keyA")
    }

    @Test(

        arguments: [("0", 0), ("-0", 0), ("123", 123), ("-456", -456)]
    )
    func `Parse number edge cases`(jsonString: String, expected: Int) throws {
        let jsonData = try #require(jsonString.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == expected)
    }

    @Test
    func `Parse incomplete unicode escape`() throws {
        let raw = #"""
        "\u12"
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse high surrogate without low surrogate`() throws {
        let raw = #"""
        "\uD800\u0041
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse high surrogate with invalid low surrogate`() throws {
        let raw = #"""
        "\uD800\uD801
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }

    @Test
    func `Parse object with duplicate keys`() throws {
        let raw = #"""
        {"foo":true,"foo":true}
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, true, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_DUPLICATE_KEY)
        #expect(value == nil)
    }

    @Test
    func `Parse object with duplicate keys allowed`() throws {
        let raw = #"""
        {"foo":true,"foo":false}
        """#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)

        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 2)

        let key0 = try #require(json_get_object_key(value, 0))
        #expect(String(cString: key0) == "foo")
        let value0 = try #require(json_get_object_value(value, 0))
        #expect(json_get_type(value0) == JSON_BOOLEAN)
        #expect(json_get_boolean(value0) == true)

        let key1 = try #require(json_get_object_key(value, 1))
        #expect(String(cString: key1) == "foo")
        let value1 = try #require(json_get_object_value(value, 1))
        #expect(json_get_type(value1) == JSON_BOOLEAN)
        #expect(json_get_boolean(value1) == false)
    }
}
