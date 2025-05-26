// JBird
// Parser.h
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

#ifndef JBirdParser_h
#define JBirdParser_h

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/**
 * @brief Error codes for JSON parsing operations
 */
typedef enum {
    JSON_NO_ERROR = 0,              /**< No error occurred */
    JSON_UNEXPECTED_END_OF_INPUT,   /**< Unexpected end of input while parsing */
    JSON_INVALID_JSON,              /**< Input is not valid JSON */
    JSON_INVALID_CHARACTER,         /**< Invalid character encountered */
    JSON_EXPECTED_COLON,            /**< Expected a colon */
    JSON_EXPECTED_COMMA_OR_BRACE,   /**< Expected a comma or a closing brace */
    JSON_EXPECTED_COMMA_OR_BRACKET, /**< Expected a comma or a closing bracket */
    JSON_INVALID_LITERAL,           /**< Invalid literal (null, true, false) */
    JSON_INVALID_NUMBER,            /**< Invalid number format */
    JSON_INVALID_STRING,            /**< Invalid string format */
    JSON_MISSING_OBJECT_KEY,        /**< Object is missing a key */
    JSON_INVALID_UNICODE,           /**< Invalid Unicode character in string */
    JSON_INVALID_ESCAPE,            /**< Invalid escape sequence in string */
    JSON_OUT_OF_MEMORY,             /**< Memory allocation failed */
    JSON_MAX_DEPTH_EXCEEDED         /**< Maximum recursion depth exceeded */
} json_error_t;

/**
 * @brief Types of JSON values
 */
typedef enum {
    JSON_NULL,          /**< JSON null value */
    JSON_BOOLEAN,       /**< JSON boolean value (true/false) */
    JSON_NUMBER_INT,    /**< JSON integer number */
    JSON_NUMBER_DOUBLE, /**< JSON floating-point number */
    JSON_STRING,        /**< JSON string */
    JSON_ARRAY,         /**< JSON array */
    JSON_OBJECT         /**< JSON object */
} json_type_t;

/**
 * @brief Opaque structure representing a JSON value
 */
typedef struct json_value json_value_t;

/**
 * @brief Parse JSON data into a value structure
 *
 * @param data The UTF-8 encoded JSON data to parse
 * @param length The length of the data in bytes
 * @param out_value Pointer to store the resulting parsed value
 * @param allow_bom Whether to allow BOM (Byte Order Mark) at the beginning of the data
 * @param allow_whitespace Whether to allow insignificant whitespace in the data
 * @param max_depth Maximum recursion depth (0 for unlimited)
 * @return Error code indicating success or failure
 */
json_error_t json_parse(const uint8_t *data, size_t length, json_value_t **out_value, bool allow_bom, bool allow_whitespace, size_t max_depth);

/**
 * @brief Free memory allocated for a JSON value
 *
 * @param value The JSON value to free
 */
void json_free(json_value_t *value);

/**
 * @brief Get the type of a JSON value
 *
 * @param value The JSON value
 * @return The type of the JSON value
 */
json_type_t json_get_type(const json_value_t *value);

/**
 * @brief Get the boolean value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_BOOLEAN)
 * @return The boolean value
 */
bool json_get_boolean(const json_value_t *value);

/**
 * @brief Get the integer value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_NUMBER_INT)
 * @return The integer value
 */
int64_t json_get_int(const json_value_t *value);

/**
 * @brief Get the double value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_NUMBER_DOUBLE)
 * @return The double value
 */
double json_get_double(const json_value_t *value);

/**
 * @brief Get the string value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_STRING)
 * @return The string value
 */
const char *json_get_string(const json_value_t *value);

/**
 * @brief Get the size of a JSON array
 *
 * @param array The JSON value (must be of type JSON_ARRAY)
 * @return The number of elements in the array
 */
size_t json_get_array_size(const json_value_t *array);

/**
 * @brief Get an element from a JSON array by index
 *
 * @param array The JSON value (must be of type JSON_ARRAY)
 * @param index The index of the element to retrieve
 * @return The JSON value at the specified index
 */
json_value_t *json_get_array_element(const json_value_t *array, size_t index);

/**
 * @brief Get the number of key-value pairs in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @return The number of key-value pairs
 */
size_t json_get_object_size(const json_value_t *object);

/**
 * @brief Get the key at a specific index in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the key to retrieve
 * @return The key string at the specified index
 */
const char *json_get_object_key(const json_value_t *object, size_t index);

/**
 * @brief Get the value at a specific index in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the value to retrieve
 * @return The JSON value at the specified index
 */
json_value_t *json_get_object_value(const json_value_t *object, size_t index);

#endif /* JBirdParser_h */
