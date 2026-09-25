// JBird
// JBirdParserTests.swift
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
import JBirdParser
import Testing

@Suite("JBird Parser Tests")
struct JBirdParserTests {

    // MARK: - Basic Parsing Tests

    @Test("Parse null value")
    func parseNull() throws {
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

    @Test("Parse true value")
    func parseTrue() throws {
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

    @Test("Parse false value")
    func parseFalse() throws {
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

    @Test("Parse integer")
    func parseInteger() throws {
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

    @Test("Parse negative integer")
    func parseNegativeInteger() throws {
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

    @Test("Parse zero")
    func parseZero() throws {
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

    @Test("Parse double")
    func parseDouble() throws {
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

    @Test("Parse scientific notation")
    func parseScientificNotation() throws {
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

    @Test("Parse negative scientific notation")
    func parseNegativeScientificNotation() throws {
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

    @Test("Parse simple string")
    func parseSimpleString() throws {
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

    @Test("Parse empty string")
    func parseEmptyString() throws {
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

    @Test("Parse string with escapes")
    func parseStringWithEscapes() throws {
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

    @Test("Parse string with unicode")
    func parseStringWithUnicode() throws {
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

    @Test("Parse string with surrogate pairs")
    func parseStringWithSurrogatePairs() throws {
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

    @Test("Parse empty array")
    func parseEmptyArray() throws {
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

    @Test("Parse array with elements")
    func parseArrayWithElements() throws {
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

    @Test("Parse nested array")
    func parseNestedArray() throws {
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

    @Test("Parse empty object")
    func parseEmptyObject() throws {
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

    @Test("Parse object with properties")
    func parseObjectWithProperties() throws {
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

    @Test("Parse complex nested structure")
    func parseComplexNestedStructure() throws {
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

    @Test("Parse with BOM allowed")
    func parseWithBOMAllowed() {
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

    @Test("Parse with BOM not allowed")
    func parseWithBOMNotAllowed() {
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

    @Test("Parse with whitespace allowed")
    func parseWithWhitespaceAllowed() throws {
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

    @Test("Parse with whitespace not allowed")
    func parseWithWhitespaceNotAllowed() throws {
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

    @Test("Parse with depth limit exceeded")
    func parseWithDepthLimitExceeded() throws {
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

    @Test("Parse within depth limit")
    func parseWithinDepthLimit() throws {
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

    @Test("Parse null input")
    func parseNullInput() {
        var value: OpaquePointer?
        let result = json_parse(nil, 0, &value, true, false, false, 0)

        #expect(result == JSON_INVALID_JSON)
        #expect(value == nil)
    }

    @Test("Parse empty input")
    func parseEmptyInput() throws {
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

    @Test("Parse invalid character")
    func parseInvalidCharacter() throws {
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

    @Test("Parse incomplete true")
    func parseIncompleteTrue() throws {
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

    @Test("Parse incomplete false")
    func parseIncompleteFalse() throws {
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

    @Test("Parse incomplete null")
    func parseIncompleteNull() throws {
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

    @Test("Parse invalid leading zero")
    func parseInvalidNumber() throws {
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

    @Test("Parse invalid just minus")
    func parseInvalidNumberJustMinus() throws {
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

    @Test("Parse unterminated string")
    func parseUnterminatedString() throws {
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

    @Test("Parse string with invalid escape")
    func parseStringWithInvalidEscape() throws {
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

    @Test("Parse string with control character")
    func parseStringWithControlCharacter() {
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

    @Test("Parse string with invalid unicode")
    func parseStringWithInvalidUnicode() throws {
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

    @Test("Parse string with invalid surrogate pair")
    func parseStringWithInvalidSurrogatePair() throws {
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

    @Test("Parse string with lone low surrogate")
    func parseStringWithLoneLowSurrogate() throws {
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

    @Test("Parse unterminated array")
    func parseUnterminatedArray() throws {
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

    @Test("Parse array with invalid separator")
    func parseArrayWithInvalidSeparator() throws {
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

    @Test("Parse object missing key")
    func parseObjectMissingKey() throws {
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

    @Test("Parse object missing colon")
    func parseObjectMissingColon() throws {
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

    @Test("Parse object with invalid separator")
    func parseObjectWithInvalidSeparator() throws {
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

    @Test("Parse unterminated object")
    func parseUnterminatedObject() throws {
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

    @Test("Parse with trailing content")
    func parseWithTrailingContent() throws {
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

    @Test("Get boolean from non-boolean")
    func getBooleanFromNonBoolean() throws {
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

    @Test("Get int from null")
    func getIntFromNull() throws {
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

    @Test("Get string from non-string")
    func getStringFromNonString() throws {
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

    @Test("Get array size from non-array")
    func getArraySizeFromNonArray() throws {
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

    @Test("Get object size from non-object")
    func getObjectSizeFromNonObject() throws {
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

    @Test("Get type from null pointer")
    func getTypeFromNullPointer() {
        #expect(json_get_type(nil) == JSON_NULL)
    }

    @Test("Get boolean from null pointer")
    func getBooleanFromNullPointer() {
        #expect(json_get_boolean(nil) == false)
    }

    @Test("Get int from null pointer")
    func getIntFromNullPointer() {
        #expect(json_get_int(nil) == 0)
    }

    @Test("Get double from null pointer")
    func getDoubleFromNullPointer() {
        #expect(json_get_double(nil) == 0.0)
    }

    @Test("Get string from null pointer")
    func getStringFromNullPointer() {
        #expect(json_get_string(nil) == nil)
    }

    @Test("Get array size from null pointer")
    func getArraySizeFromNullPointer() {
        #expect(json_get_array_size(nil) == 0)
    }

    @Test("Get object size from null pointer")
    func getObjectSizeFromNullPointer() {
        #expect(json_get_object_size(nil) == 0)
    }

    @Test("Parse large integer")
    func parseLargeInteger() throws {
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

    @Test("Parse negative large integer")
    func parseNegativeLargeInteger() throws {
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

    @Test("Parse number with positive exponent")
    func parseNumberWithPositiveExponent() throws {
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

    @Test("Parse number with capital E")
    func parseNumberWithCapitalE() throws {
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

    @Test("Parse INT64_MAX as integer")
    func parseInt64MaxAsInteger() throws {
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

    @Test("Parse INT64_MIN as integer")
    func parseInt64MinAsInteger() throws {
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

    @Test("Parse INT64_MAX + 1 as double")
    func parseInt64MaxPlusOneAsDouble() throws {
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

    @Test("Parse INT64_MIN - 1 as double")
    func parseInt64MinMinusOneAsDouble() throws {
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

    @Test("Parse short number to test fallback path")
    func parseShortNumberFallbackPath() throws {
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

    @Test("Parse long number to test SIMD path")
    func parseLongNumberSIMDPath() throws {
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

    @Test("Parse negative long number to test SIMD path")
    func parseNegativeLongNumberSIMDPath() throws {
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

    @Test("Parse 18-digit number as integer")
    func parse18DigitNumberAsInteger() throws {
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

    @Test("Parse negative 18-digit number as integer")
    func parseNegative18DigitNumberAsInteger() throws {
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

    @Test("Parse INT64_MAX - 1 as integer")
    func parseInt64MaxMinusOneAsInteger() throws {
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

    @Test("Parse INT64_MIN + 1 as integer")
    func parseInt64MinPlusOneAsInteger() throws {
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

    @Test("Parse extremely large positive number")
    func parseExtremelyLargePositiveNumber() throws {
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

    @Test("Parse extremely large negative number")
    func parseExtremelyLargeNegativeNumber() throws {
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

    @Test("Parse long string")
    func parseLongString() throws {
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

    @Test("Parse string with all escape sequences")
    func parseStringWithAllEscapeSequences() throws {
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

    @Test("Parse large array")
    func parseLargeArray() throws {
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

    @Test("Parse large object")
    func parseLargeObject() throws {
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

    @Test("Free null value")
    func freeNullValue() {
        json_free(nil)
    }

    @Test("Parse mixed array types")
    func parseMixedArrayTypes() throws {
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

    @Test("Parse object with complex keys")
    func parseObjectWithComplexKeys() throws {
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
        "Parse number edge cases",
        arguments: [("0", 0), ("-0", 0), ("123", 123), ("-456", -456)]
    )
    func parseNumberEdgeCases(jsonString: String, expected: Int) throws {
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

    @Test("Parse incomplete unicode escape")
    func parseIncompleteUnicodeEscape() throws {
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

    @Test("Parse high surrogate without low surrogate")
    func parseHighSurrogateWithoutLowSurrogate() throws {
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

    @Test("Parse high surrogate with invalid low surrogate")
    func parseHighSurrogateWithInvalidLowSurrogate() throws {
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

    @Test("Parse object with duplicate keys")
    func parseObjectWithDuplicateKeys() throws {
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

    @Test("Parse object with duplicate keys allowed")
    func parseObjectWithDuplicateKeysAllowed() throws {
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

    // MARK: - Length and Key Identifier Tests

    @Test("String and key lengths")
    func stringAndKeyLengths() throws {
        let raw = #"{"short":"a\u0000b","a_much_longer_key_than_sixteen":"","esc\"aped":"xyz"}"#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        #expect(json_get_object_size(value) == 3)
        #expect(json_get_object_key_length(value, 0) == 5)
        #expect(json_get_object_key_length(value, 1) == 30)
        #expect(json_get_object_key_length(value, 2) == 8)
        #expect(json_get_string_length(json_get_object_value(value, 0)) == 3)
        #expect(json_get_string_length(json_get_object_value(value, 1)) == 0)
        #expect(json_get_string_length(json_get_object_value(value, 2)) == 3)
    }

    @Test("Key identifiers are shared by equal keys")
    func keyIdentifiers() throws {
        let raw = #"[{"a":1,"b":2},{"b":3,"a":4,"c":5},{"esc\"aped":6,"esc\"aped":7}]"#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        let first = try #require(json_get_array_element(value, 0))
        let second = try #require(json_get_array_element(value, 1))
        let third = try #require(json_get_array_element(value, 2))

        let a = json_get_object_key_id(first, 0)
        let b = json_get_object_key_id(first, 1)
        #expect(a != b)
        #expect(json_get_object_key_id(second, 0) == b)
        #expect(json_get_object_key_id(second, 1) == a)
        let c = json_get_object_key_id(second, 2)
        #expect(c != a && c != b)
        let escaped = json_get_object_key_id(third, 0)
        #expect(json_get_object_key_id(third, 1) == escaped)
        #expect(json_get_key_count(value) == 4)
        #expect(json_get_key_count(first) == 4)
        #expect(Set([a, b, c, escaped]) == Set(0..<4))
    }

    @Test("Length and identifier accessors on mismatched values")
    func lengthAccessorsOnMismatchedValues() throws {
        let raw = #"[42,"x"]"#
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?

        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }

        defer {
            json_free(value)
        }

        #expect(result == JSON_NO_ERROR)
        let number = try #require(json_get_array_element(value, 0))
        let string = try #require(json_get_array_element(value, 1))

        #expect(json_get_string_length(number) == 0)
        #expect(json_get_string_length(nil) == 0)
        #expect(json_get_object_key_length(value, 0) == 0)
        #expect(json_get_object_key_length(nil, 0) == 0)
        #expect(json_get_object_key_id(string, 0) == 0)
        #expect(json_get_object_key_id(nil, 0) == 0)
        #expect(json_get_key_count(value) == 0)
        #expect(json_get_key_count(nil) == 0)
    }

    @Test("Closing quote at every lane position")
    func closingQuoteAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let content = String(repeating: "a", count: length)
            for raw in [#"["\#(content)","padding-padding-padding"]"#, #"["\#(content)"]"#] {
                let (result, value) = try parse(raw)
                defer { json_free(value) }
                #expect(result == JSON_NO_ERROR, "length \(length)")
                let element = try #require(json_get_array_element(value, 0))
                #expect(json_get_string_length(element) == length, "length \(length)")
                #expect(try String(cString: #require(json_get_string(element))) == content, "length \(length)")
            }
        }
    }

    @Test("Escape at every lane position")
    func escapeAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let prefix = String(repeating: "a", count: length)
            let raw = #"["\#(prefix)\n\#(prefix)","padding-padding-padding"]"#
            let (result, value) = try parse(raw)
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
            let element = try #require(json_get_array_element(value, 0))
            #expect(try String(cString: #require(json_get_string(element))) == prefix + "\n" + prefix, "length \(length)")
        }
    }

    @Test("Control byte at every lane position")
    func controlByteAtEveryLanePosition() {
        for length in 0 ..< 40 {
            var bytes = Array(#"[""#.utf8)
            bytes.append(contentsOf: repeatElement(UInt8(ascii: "a"), count: length))
            bytes.append(0x01)
            bytes.append(contentsOf: Array(#"","padding-padding-padding"]"#.utf8))
            var value: OpaquePointer?
            let result = bytes.withUnsafeBufferPointer { buffer in
                json_parse(buffer.baseAddress, buffer.count, &value, true, false, false, 0)
            }
            defer { json_free(value) }
            #expect(result == JSON_INVALID_STRING, "length \(length)")
        }
    }

    @Test("Non-ASCII bytes are not treated as control bytes")
    func nonASCIIBytesAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let content = String(repeating: "a", count: length) + "é🙂" + String(repeating: "b", count: length)
            let raw = #"["\#(content)","padding-padding-padding"]"#
            let (result, value) = try parse(raw)
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
            let element = try #require(json_get_array_element(value, 0))
            #expect(try String(cString: #require(json_get_string(element))) == content, "length \(length)")
        }
    }

    @Test("Object key terminator at every lane position")
    func objectKeyAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let key = String(repeating: "k", count: length)
            for raw in [#"{"\#(key)":1,"padding-padding-padding":2}"#, #"{"\#(key)":1}"#] {
                let (result, value) = try parse(raw)
                defer { json_free(value) }
                #expect(result == JSON_NO_ERROR, "length \(length)")
                #expect(json_get_object_key_length(value, 0) == length, "length \(length)")
                #expect(try String(cString: #require(json_get_object_key(value, 0))) == key, "length \(length)")
            }
            let escaped = #"{"\#(key)\t\#(key)":1,"padding-padding-padding":2}"#
            let (result, value) = try parse(escaped)
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
            #expect(try String(cString: #require(json_get_object_key(value, 0))) == key + "\t" + key, "length \(length)")
        }
    }

    @Test("Unterminated string longer than one chunk")
    func unterminatedLongString() throws {
        let (result, value) = try parse(#"[""# + String(repeating: "a", count: 50))
        defer { json_free(value) }
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
    }

    @Test("Whitespace run of every length between tokens")
    func whitespaceRunAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            for character in [" ", "\t", "\n", "\r"] {
                let run = String(repeating: character, count: length)
                let raw = "[\(run)1,\(run)2\(run)]\(run)"
                let (result, value) = try parse(raw)
                defer { json_free(value) }
                #expect(result == JSON_NO_ERROR, "length \(length) character \(character.debugDescription)")
                #expect(json_get_array_size(value) == 2, "length \(length)")
                #expect(json_get_int(json_get_array_element(value, 0)) == 1, "length \(length)")
                #expect(json_get_int(json_get_array_element(value, 1)) == 2, "length \(length)")
            }
        }
    }

    @Test("Mixed whitespace run of every length")
    func mixedWhitespaceRunAtEveryLanePosition() throws {
        let cycle: [Character] = [" ", "\t", "\n", "\r"]
        for length in 0 ..< 40 {
            let run = String((0 ..< length).map { cycle[$0 % cycle.count] })
            let raw = "{\(run)\"key\"\(run):\(run)true\(run)}"
            let (result, value) = try parse(raw)
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
            #expect(try String(cString: #require(json_get_object_key(value, 0))) == "key", "length \(length)")
            #expect(json_get_boolean(json_get_object_value(value, 0)) == true, "length \(length)")
        }
    }

    @Test("Whitespace run of every length before a string")
    func whitespaceBeforeStringAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let run = String(repeating: " ", count: length)
            let raw = "[\(run)\"padding-padding-padding\"]"
            let (result, value) = try parse(raw)
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
            let element = try #require(json_get_array_element(value, 0))
            #expect(try String(cString: #require(json_get_string(element))) == "padding-padding-padding", "length \(length)")
        }
    }

    @Test("Trailing whitespace of every length at end of input")
    func trailingWhitespaceAtEveryLanePosition() throws {
        for length in 0 ..< 40 {
            let (result, value) = try parse("[1]" + String(repeating: " ", count: length))
            defer { json_free(value) }
            #expect(result == JSON_NO_ERROR, "length \(length)")
        }
    }

    @Test("Invalid whitespace byte at every lane position")
    func invalidWhitespaceByteAtEveryLanePosition() {
        for length in 0 ..< 40 {
            for invalid: UInt8 in [0x0B, 0x0C, 0x00, 0xA0] {
                var bytes = Array("[".utf8)
                bytes.append(contentsOf: repeatElement(UInt8(ascii: " "), count: length))
                bytes.append(invalid)
                bytes.append(contentsOf: repeatElement(UInt8(ascii: " "), count: 20))
                bytes.append(contentsOf: Array("1]".utf8))
                var value: OpaquePointer?
                let result = bytes.withUnsafeBufferPointer { buffer in
                    json_parse(buffer.baseAddress, buffer.count, &value, true, false, false, 0)
                }
                defer { json_free(value) }
                #expect(result != JSON_NO_ERROR, "length \(length) byte \(invalid)")
            }
        }
    }

    @Test("Whitespace longer than one chunk then end of input")
    func unterminatedWhitespace() throws {
        let (result, value) = try parse("[" + String(repeating: " ", count: 50))
        defer { json_free(value) }
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
    }

    private func parse(
        _ raw: String
    ) throws -> (json_error_t, OpaquePointer?) {
        let jsonData = try #require(raw.data(using: .utf8))
        var value: OpaquePointer?
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, false, false, 0)
        }
        return (result, value)
    }

}
