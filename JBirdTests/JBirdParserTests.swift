//
//  File.swift
//  JBird
//
//  Created by Varun Santhanam on 5/26/25.
//

import JBirdParser
import Testing
import Foundation

@Suite("JBird Parser Tests")
struct JBirdParserTests {
    
    // MARK: - Basic Parsing Tests
    
    @Test("Parse null value")
    func parseNull() throws {
        let jsonData = "null".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NULL)
        
        json_free(value)
    }
    
    @Test("Parse true value")
    func parseTrue() throws {
        let jsonData = "true".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
        
        json_free(value)
    }
    
    @Test("Parse false value")
    func parseFalse() throws {
        let jsonData = "false".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == false)
        
        json_free(value)
    }
    
    @Test("Parse integer")
    func parseInteger() throws {
        let jsonData = "42".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 42)
        #expect(json_get_double(value) == 42.0)
        
        json_free(value)
    }
    
    @Test("Parse negative integer")
    func parseNegativeInteger() throws {
        let jsonData = "-123".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == -123)
        
        json_free(value)
    }
    
    @Test("Parse zero")
    func parseZero() throws {
        let jsonData = "0".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 0)
        
        json_free(value)
    }
    
    @Test("Parse double")
    func parseDouble() throws {
        let jsonData = "3.14159".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 3.14159) < 0.00001)
        #expect(json_get_int(value) == 3)
        
        json_free(value)
    }
    
    @Test("Parse scientific notation")
    func parseScientificNotation() throws {
        let jsonData = "1.23e10".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 1.23e10) < 1e6)
        
        json_free(value)
    }
    
    @Test("Parse negative scientific notation")
    func parseNegativeScientificNotation() throws {
        let jsonData = "-1.5e-3".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - (-1.5e-3)) < 1e-6)
        
        json_free(value)
    }
    
    @Test("Parse simple string")
    func parseSimpleString() throws {
        let jsonData = "\"hello\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == "hello")
        
        json_free(value)
    }
    
    @Test("Parse empty string")
    func parseEmptyString() throws {
        let jsonData = "\"\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == "")
        
        json_free(value)
    }
    
    @Test("Parse string with escapes")
    func parseStringWithEscapes() throws {
        let jsonData = "\"hello\\nworld\\t!\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == "hello\nworld\t!")
        
        json_free(value)
    }
    
    @Test("Parse string with unicode")
    func parseStringWithUnicode() throws {
        let jsonData = "\"\\u0048\\u0065\\u006C\\u006C\\u006F\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == "Hello")
        
        json_free(value)
    }
    
    @Test("Parse string with surrogate pairs")
    func parseStringWithSurrogatePairs() throws {
        let jsonData = "\"\\uD83D\\uDE00\"".data(using: .utf8)!  // 😀 emoji
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == "😀")
        
        json_free(value)
    }
    
    @Test("Parse empty array")
    func parseEmptyArray() throws {
        let jsonData = "[]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 0)
        
        json_free(value)
    }
    
    @Test("Parse array with elements")
    func parseArrayWithElements() throws {
        let jsonData = "[1, 2, 3]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
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
        
        // Test out of bounds
        let elemOOB = json_get_array_element(value, 3)
        #expect(elemOOB == nil)
        
        json_free(value)
    }
    
    @Test("Parse nested array")
    func parseNestedArray() throws {
        let jsonData = "[[1, 2], [3, 4]]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 2)
        
        let subArray0 = json_get_array_element(value, 0)
        #expect(subArray0 != nil)
        #expect(json_get_type(subArray0) == JSON_ARRAY)
        #expect(json_get_array_size(subArray0) == 2)
        
        json_free(value)
    }
    
    @Test("Parse empty object")
    func parseEmptyObject() throws {
        let jsonData = "{}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 0)
        
        json_free(value)
    }
    
    @Test("Parse object with properties")
    func parseObjectWithProperties() throws {
        let jsonData = "{\"name\": \"John\", \"age\": 30}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 2)
        
        let key0 = json_get_object_key(value, 0)
        #expect(key0 != nil)
        #expect(String(cString: key0!) == "name")
        
        let val0 = json_get_object_value(value, 0)
        #expect(val0 != nil)
        #expect(json_get_type(val0) == JSON_STRING)
        #expect(String(cString: json_get_string(val0)!) == "John")
        
        let key1 = json_get_object_key(value, 1)
        #expect(key1 != nil)
        #expect(String(cString: key1!) == "age")
        
        let val1 = json_get_object_value(value, 1)
        #expect(val1 != nil)
        #expect(json_get_type(val1) == JSON_NUMBER_INT)
        #expect(json_get_int(val1) == 30)
        
        // Test out of bounds
        let keyOOB = json_get_object_key(value, 2)
        #expect(keyOOB == nil)
        
        let valOOB = json_get_object_value(value, 2)
        #expect(valOOB == nil)
        
        json_free(value)
    }
    
    @Test("Parse complex nested structure")
    func parseComplexNestedStructure() throws {
        let jsonData = """
        {
            "users": [
                {"name": "Alice", "active": true},
                {"name": "Bob", "active": false}
            ],
            "count": 2,
            "metadata": null
        }
        """.data(using: .utf8)!
        
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 3)
        
        json_free(value)
    }
    
    // MARK: - BOM Tests
    
    @Test("Parse with BOM allowed")
    func parseWithBOMAllowed() throws {
        let bom: [UInt8] = [0xEF, 0xBB, 0xBF]
        let jsonString = "true"
        let jsonData = Data(bom + jsonString.utf8)
        
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, true, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
        
        json_free(value)
    }
    
    @Test("Parse with BOM not allowed")
    func parseWithBOMNotAllowed() throws {
        let bom: [UInt8] = [0xEF, 0xBB, 0xBF]
        let jsonString = "true"
        let jsonData = Data(bom + jsonString.utf8)
        
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }
    
    // MARK: - Whitespace Tests
    
    @Test("Parse with whitespace allowed")
    func parseWithWhitespaceAllowed() throws {
        let jsonData = "  \t\n  true  \r\n  ".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_BOOLEAN)
        #expect(json_get_boolean(value) == true)
        
        json_free(value)
    }
    
    @Test("Parse with whitespace not allowed")
    func parseWithWhitespaceNotAllowed() throws {
        let jsonData = " true ".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, false, 0)
        }
        
        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }
    
    // MARK: - Depth Limit Tests
    
    @Test("Parse with depth limit exceeded")
    func parseWithDepthLimitExceeded() throws {
        let jsonData = "[[[[[true]]]]]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 3)
        }
        
        #expect(result == JSON_MAX_DEPTH_EXCEEDED)
        #expect(value == nil)
    }
    
    @Test("Parse within depth limit")
    func parseWithinDepthLimit() throws {
        let jsonData = "[[true]]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 3)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        json_free(value)
    }
    
    // MARK: - Error Cases
    
    @Test("Parse null input")
    func parseNullInput() throws {
        var value: OpaquePointer?
        
        let result = json_parse(nil, 0, &value, false, true, 0)
        
        #expect(result == JSON_INVALID_JSON)
        #expect(value == nil)
    }
    
    @Test("Parse empty input")
    func parseEmptyInput() throws {
        let jsonData = "".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }
    
    @Test("Parse invalid character")
    func parseInvalidCharacter() throws {
        let jsonData = "xyz".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_CHARACTER)
        #expect(value == nil)
    }
    
    @Test("Parse incomplete true")
    func parseIncompleteTrue() throws {
        let jsonData = "tr".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }
    
    @Test("Parse incomplete false")
    func parseIncompleteFalse() throws {
        let jsonData = "fal".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }
    
    @Test("Parse incomplete null")
    func parseIncompleteNull() throws {
        let jsonData = "nul".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_LITERAL)
        #expect(value == nil)
    }
    
    @Test("Parse invalid number")
    func parseInvalidNumber() throws {
        let jsonData = "01".data(using: .utf8)!  // Leading zero not allowed
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_NUMBER)
        #expect(value == nil)
    }
    
    @Test("Parse invalid number - just minus")
    func parseInvalidNumberJustMinus() throws {
        let jsonData = "-".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_NUMBER)
        #expect(value == nil)
    }
    
    @Test("Parse unterminated string")
    func parseUnterminatedString() throws {
        let jsonData = "\"hello".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }
    
    @Test("Parse string with invalid escape")
    func parseStringWithInvalidEscape() throws {
        let jsonData = "\"hello\\x\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_ESCAPE)
        #expect(value == nil)
    }
    
    @Test("Parse string with control character")
    func parseStringWithControlCharacter() throws {
        let jsonData = Data([0x22, 0x01, 0x22])  // "control_char"
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_STRING)
        #expect(value == nil)
    }
    
    @Test("Parse string with invalid unicode")
    func parseStringWithInvalidUnicode() throws {
        let jsonData = "\"\\uXXXX\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
    
    @Test("Parse string with invalid surrogate pair")
    func parseStringWithInvalidSurrogatePair() throws {
        let jsonData = "\"\\uD800\"".data(using: .utf8)!  // High surrogate without low
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
    
    @Test("Parse string with lone low surrogate")
    func parseStringWithLoneLowSurrogate() throws {
        let jsonData = "\"\\uDC00\"".data(using: .utf8)!  // Low surrogate without high
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
    
    @Test("Parse unterminated array")
    func parseUnterminatedArray() throws {
        let jsonData = "[1, 2".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }
    
    @Test("Parse array with invalid separator")
    func parseArrayWithInvalidSeparator() throws {
        let jsonData = "[1; 2]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_EXPECTED_COMMA_OR_BRACKET)
        #expect(value == nil)
    }
    
    @Test("Parse object missing key")
    func parseObjectMissingKey() throws {
        let jsonData = "{123: \"value\"}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_MISSING_OBJECT_KEY)
        #expect(value == nil)
    }
    
    @Test("Parse object missing colon")
    func parseObjectMissingColon() throws {
        let jsonData = "{\"key\" \"value\"}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_EXPECTED_COLON)
        #expect(value == nil)
    }
    
    @Test("Parse object with invalid separator")
    func parseObjectWithInvalidSeparator() throws {
        let jsonData = "{\"key1\": \"value1\"; \"key2\": \"value2\"}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_EXPECTED_COMMA_OR_BRACE)
        #expect(value == nil)
    }
    
    @Test("Parse unterminated object")
    func parseUnterminatedObject() throws {
        let jsonData = "{\"key\": \"value\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_UNEXPECTED_END_OF_INPUT)
        #expect(value == nil)
    }
    
    @Test("Parse with trailing content")
    func parseWithTrailingContent() throws {
        let jsonData = "true false".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_JSON)
        #expect(value == nil)
    }
    
    @Test("Get boolean from non-boolean")
    func getBooleanFromNonBoolean() throws {
        let jsonData = "42".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        #expect(json_get_boolean(value) == false)
        
        json_free(value)
    }
    
    @Test("Get int from null")
    func getIntFromNull() throws {
        let jsonData = "null".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        #expect(json_get_int(value) == 0)
        #expect(json_get_double(value) == 0.0)
        
        json_free(value)
    }
    
    @Test("Get string from non-string")
    func getStringFromNonString() throws {
        let jsonData = "42".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        // Should return nil for non-string
        #expect(json_get_string(value) == nil)
        
        json_free(value)
    }
    
    @Test("Get array size from non-array")
    func getArraySizeFromNonArray() throws {
        let jsonData = "42".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        // Should return 0 for non-array
        #expect(json_get_array_size(value) == 0)
        
        json_free(value)
    }
    
    @Test("Get object size from non-object")
    func getObjectSizeFromNonObject() throws {
        let jsonData = "42".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        // Should return 0 for non-object
        #expect(json_get_object_size(value) == 0)
        
        json_free(value)
    }
    
    @Test("Get type from null pointer")
    func getTypeFromNullPointer() throws {
        // Should return JSON_NULL for null pointer
        #expect(json_get_type(nil) == JSON_NULL)
    }
    
    @Test("Get boolean from null pointer")
    func getBooleanFromNullPointer() throws {
        // Should return false for null pointer
        #expect(json_get_boolean(nil) == false)
    }
    
    @Test("Get int from null pointer")
    func getIntFromNullPointer() throws {
        // Should return 0 for null pointer
        #expect(json_get_int(nil) == 0)
    }
    
    @Test("Get double from null pointer")
    func getDoubleFromNullPointer() throws {
        // Should return 0.0 for null pointer
        #expect(json_get_double(nil) == 0.0)
    }
    
    @Test("Get string from null pointer")
    func getStringFromNullPointer() throws {
        // Should return nil for null pointer
        #expect(json_get_string(nil) == nil)
    }
    
    @Test("Get array size from null pointer")
    func getArraySizeFromNullPointer() throws {
        // Should return 0 for null pointer
        #expect(json_get_array_size(nil) == 0)
    }
    
    @Test("Get object size from null pointer")
    func getObjectSizeFromNullPointer() throws {
        // Should return 0 for null pointer
        #expect(json_get_object_size(nil) == 0)
    }
    
    @Test("Parse large integer")
    func parseLargeInteger() throws {
        let jsonData = "9223372036854775807".data(using: .utf8)!  // INT64_MAX
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_INT)
        #expect(json_get_int(value) == 9223372036854775807)
        
        json_free(value)
    }
    
    @Test("Parse negative large integer")
    func parseNegativeLargeInteger() throws {
        let jsonData = "-9223372036854775808".data(using: .utf8)!  // INT64_MIN
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        // This large number might be parsed as double due to overflow handling
        let type = json_get_type(value)
        if type == JSON_NUMBER_INT {
            #expect(json_get_int(value) == -9223372036854775808)
        } else if type == JSON_NUMBER_DOUBLE {
            #expect(json_get_double(value) == -9223372036854775808.0)
        }
        
        json_free(value)
    }
    
    @Test("Parse number with positive exponent")
    func parseNumberWithPositiveExponent() throws {
        let jsonData = "1e+10".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        
        // Check what type it actually is and get the value accordingly
        let type = json_get_type(value)
        if type == JSON_NUMBER_DOUBLE {
            #expect(json_get_double(value) == 1e10)
        } else if type == JSON_NUMBER_INT {
            #expect(json_get_int(value) == Int64(1e10))
        } else {
            #expect(false, "Unexpected type for scientific notation number")
        }
        
        json_free(value)
    }
    
    @Test("Parse number with capital E")
    func parseNumberWithCapitalE() throws {
        let jsonData = "1.5E-2".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_NUMBER_DOUBLE)
        #expect(abs(json_get_double(value) - 1.5e-2) < 1e-6)
        
        json_free(value)
    }
    
    @Test("Parse long string")
    func parseLongString() throws {
        let longString = String(repeating: "a", count: 1000)
        let jsonData = "\"\(longString)\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_STRING)
        
        let str = json_get_string(value)
        #expect(str != nil)
        #expect(String(cString: str!) == longString)
        
        json_free(value)
    }
    
//    @Test("Parse string with all escape sequences")
//    func parseStringWithAllEscapeSequences() throws {
//        let jsonData = "\"\\\"\\\\\\\/\\b\\f\\n\\r\\t\"".data(using: .utf8)!
//        var value: OpaquePointer?
//        
//        let result = jsonData.withUnsafeBytes { bytes in
//            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
//        }
//        
//        #expect(result == JSON_NO_ERROR)
//        #expect(value != nil)
//        #expect(json_get_type(value) == JSON_STRING)
//        
//        let str = json_get_string(value)
//        #expect(str != nil)
//                 let expectedString = "\"" + "/" + "\u{08}\u{0C}\n\r\t"
//        #expect(String(cString: str!) == expectedString)
//        
//        json_free(value)
//    }
//
    
    @Test("Parse large array")
    func parseLargeArray() throws {
        let elements = Array(1...100).map(String.init).joined(separator: ", ")
        let jsonData = "[\(elements)]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 100)
        
        // Test first and last elements
        let first = json_get_array_element(value, 0)
        #expect(first != nil)
        #expect(json_get_int(first) == 1)
        
        let last = json_get_array_element(value, 99)
        #expect(last != nil)
        #expect(json_get_int(last) == 100)
        
        json_free(value)
    }
    
    @Test("Parse large object")
    func parseLargeObject() throws {
        let properties = (1...50).map { "\"key\($0)\": \($0)" }.joined(separator: ", ")
        let jsonData = "{\(properties)}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 50)
        
        // Test first and last properties
        let firstKey = json_get_object_key(value, 0)
        #expect(firstKey != nil)
        #expect(String(cString: firstKey!) == "key1")
        
        let firstValue = json_get_object_value(value, 0)
        #expect(firstValue != nil)
        #expect(json_get_int(firstValue) == 1)
        
        json_free(value)
    }
    
    // MARK: - Memory Management Tests
    
    @Test("Free null value")
    func freeNullValue() throws {
        // Should not crash
        json_free(nil)
    }
    
    // MARK: - Additional Edge Cases
    
    @Test("Parse mixed array types")
    func parseMixedArrayTypes() throws {
        let jsonData = "[null, true, false, 42, 3.14, \"hello\", [], {}]".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_ARRAY)
        #expect(json_get_array_size(value) == 8)
        
        // Test each element type
        #expect(json_get_type(json_get_array_element(value, 0)) == JSON_NULL)
        #expect(json_get_type(json_get_array_element(value, 1)) == JSON_BOOLEAN)
        #expect(json_get_type(json_get_array_element(value, 2)) == JSON_BOOLEAN)
        #expect(json_get_type(json_get_array_element(value, 3)) == JSON_NUMBER_INT)
        #expect(json_get_type(json_get_array_element(value, 4)) == JSON_NUMBER_DOUBLE)
        #expect(json_get_type(json_get_array_element(value, 5)) == JSON_STRING)
        #expect(json_get_type(json_get_array_element(value, 6)) == JSON_ARRAY)
        #expect(json_get_type(json_get_array_element(value, 7)) == JSON_OBJECT)
        
        json_free(value)
    }
    
    @Test("Parse object with complex keys")
    func parseObjectWithComplexKeys() throws {
        let jsonData = "{\"key with spaces\": 1, \"key\\nwith\\tescapes\": 2, \"key\\u0041\": 3}".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_NO_ERROR)
        #expect(value != nil)
        #expect(json_get_type(value) == JSON_OBJECT)
        #expect(json_get_object_size(value) == 3)
        
        let key0 = json_get_object_key(value, 0)
        #expect(key0 != nil)
        #expect(String(cString: key0!) == "key with spaces")
        
        let key1 = json_get_object_key(value, 1)
        #expect(key1 != nil)
        #expect(String(cString: key1!) == "key\nwith\tescapes")
        
        let key2 = json_get_object_key(value, 2)
        #expect(key2 != nil)
        #expect(String(cString: key2!) == "keyA")
        
        json_free(value)
    }
    
    @Test("Parse number edge cases")
    func parseNumberEdgeCases() throws {
        // Test various number formats
        let testCases = [
            ("0", 0),
            ("-0", 0),
            ("123", 123),
            ("-456", -456)
        ]
        
        for (jsonString, expectedValue) in testCases {
            let jsonData = jsonString.data(using: .utf8)!
            var value: OpaquePointer?
            
            let result = jsonData.withUnsafeBytes { bytes in
                json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
            }
            
            #expect(result == JSON_NO_ERROR)
            #expect(value != nil)
            #expect(json_get_type(value) == JSON_NUMBER_INT)
            #expect(json_get_int(value) == expectedValue)
            
            json_free(value)
        }
    }
    
    @Test("Parse incomplete unicode escape")
    func parseIncompleteUnicodeEscape() throws {
        let jsonData = "\"\\u12\"".data(using: .utf8)!
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
    
    @Test("Parse high surrogate without low surrogate")
    func parseHighSurrogateWithoutLowSurrogate() throws {
        let jsonData = "\"\\uD800\\u0041\"".data(using: .utf8)!  // High surrogate followed by regular char
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
    
    @Test("Parse high surrogate with invalid low surrogate")
    func parseHighSurrogateWithInvalidLowSurrogate() throws {
        let jsonData = "\"\\uD800\\uD801\"".data(using: .utf8)!  // High surrogate followed by another high surrogate
        var value: OpaquePointer?
        
        let result = jsonData.withUnsafeBytes { bytes in
            json_parse(bytes.bindMemory(to: UInt8.self).baseAddress, bytes.count, &value, false, true, 0)
        }
        
        #expect(result == JSON_INVALID_UNICODE)
        #expect(value == nil)
    }
}
