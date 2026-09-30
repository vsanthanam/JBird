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
    JSON_INVALID_UNICODE,           /**< Invalid Unicode escape or invalid UTF-8 in string */
    JSON_INVALID_ESCAPE,            /**< Invalid escape sequence in string */
    JSON_OUT_OF_MEMORY,             /**< Memory allocation failed */
    JSON_MAX_DEPTH_EXCEEDED,        /**< Maximum recursion depth exceeded */
    JSON_DUPLICATE_KEY              /**< Duplicate key in object */
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
 * @brief Maximum size (including the terminator) of a string stored inline in a json_string_t
 */
#define SMALL_STRING_SIZE 16

/**
 * @brief Opaque memory arena that owns every value in a parsed document
 */
typedef struct json_memory_arena json_memory_arena_t;

/**
 * @brief A string or object key stored in the arena
 *
 * Strings shorter than SMALL_STRING_SIZE are stored inline; longer strings point into the arena.
 * Use json_string_get to obtain the NUL-terminated bytes regardless of representation.
 */
typedef struct json_string {
    union {
        char *ptr;
        char buf[SMALL_STRING_SIZE];
    } data;
    size_t length;
    bool is_small;
    uint32_t pool_id;
} json_string_t;

typedef json_string_t json_key_t;

/**
 * @brief A parsed JSON value
 *
 * The layout is public so that the accessor functions below can be inlined by callers,
 * including Swift. Treat the fields as read-only; values are created and freed by the parser.
 */
typedef struct json_value {
    json_type_t type;
    json_memory_arena_t *arena;
    union {
        bool boolean;
        int64_t integer;
        double number;
        json_string_t string;
        struct {
            struct json_value **elements;
            size_t count;
            size_t capacity;
        } array;
        struct {
            json_key_t *keys;
            struct json_value **values;
            size_t count;
            size_t capacity;
        } object;
    } data;
} json_value_t;

/**
 * @brief Get the NUL-terminated bytes of an arena string
 *
 * @param str The arena string
 * @return A pointer to the string bytes, or NULL if str is NULL
 */
static inline const char *json_string_get(const json_string_t *str) {
    if (!str)
        return NULL;
    return str->is_small ? str->data.buf : str->data.ptr;
}

/**
 * @brief Parse JSON data into a value structure
 *
 * @param data The UTF-8 encoded JSON data to parse
 * @param length The length of the data in bytes
 * @param out_value Pointer to store the resulting parsed value
 * @param allow_bom Whether to allow BOM (Byte Order Mark) at the beginning of the data
 * @param require_minified Whether to require the JSON to be minified (no whitespace)
 * @param strict_keys Whether to enforce strict key rules (no duplicate keys, etc.)
 * @param validate_utf8 Whether to reject strings and keys that contain byte sequences that are not valid UTF-8
 * @param max_depth Maximum recursion depth (0 for unlimited)
 * @return Error code indicating success or failure
 */
json_error_t json_parse(const uint8_t *data, size_t length, json_value_t **out_value, bool allow_bom, bool require_minified, bool strict_keys, bool validate_utf8, size_t max_depth);

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
static inline json_type_t json_get_type(const json_value_t *value) {
    return value ? value->type : JSON_NULL;
}

/**
 * @brief Get the boolean value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_BOOLEAN)
 * @return The boolean value
 */
static inline bool json_get_boolean(const json_value_t *value) {
    return (value && value->type == JSON_BOOLEAN) ? value->data.boolean : false;
}

/**
 * @brief Get the integer value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_NUMBER_INT)
 * @return The integer value
 */
static inline int64_t json_get_int(const json_value_t *value) {
    if (!value)
        return 0;

    if (value->type == JSON_NUMBER_INT) {
        return value->data.integer;
    } else if (value->type == JSON_NUMBER_DOUBLE) {
        return (int64_t)value->data.number;
    }

    return 0;
}

/**
 * @brief Get the double value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_NUMBER_DOUBLE)
 * @return The double value
 */
static inline double json_get_double(const json_value_t *value) {
    if (!value)
        return 0.0;

    if (value->type == JSON_NUMBER_DOUBLE) {
        return value->data.number;
    } else if (value->type == JSON_NUMBER_INT) {
        return (double)value->data.integer;
    }

    return 0.0;
}

/**
 * @brief Get the string value from a JSON value
 *
 * @param value The JSON value (must be of type JSON_STRING)
 * @return The string value
 */
static inline const char *json_get_string(const json_value_t *value) {
    if (!value || value->type != JSON_STRING)
        return NULL;
    return json_string_get(&value->data.string);
}

/**
 * @brief Get the length in bytes of a JSON string value
 *
 * @param value The JSON value (must be of type JSON_STRING)
 * @return The number of UTF-8 bytes in the string, not including the terminator
 */
static inline size_t json_get_string_length(const json_value_t *value) {
    if (!value || value->type != JSON_STRING)
        return 0;
    return value->data.string.length;
}

/**
 * @brief Get the size of a JSON array
 *
 * @param array The JSON value (must be of type JSON_ARRAY)
 * @return The number of elements in the array
 */
static inline size_t json_get_array_size(const json_value_t *array) {
    return (array && array->type == JSON_ARRAY) ? array->data.array.count : 0;
}

/**
 * @brief Get an element from a JSON array by index
 *
 * @param array The JSON value (must be of type JSON_ARRAY)
 * @param index The index of the element to retrieve
 * @return The JSON value at the specified index
 */
static inline json_value_t *json_get_array_element(const json_value_t *array, size_t index) {
    if (!array || array->type != JSON_ARRAY || index >= array->data.array.count) {
        return NULL;
    }
    return array->data.array.elements[index];
}

/**
 * @brief Get the number of key-value pairs in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @return The number of key-value pairs
 */
static inline size_t json_get_object_size(const json_value_t *object) {
    return (object && object->type == JSON_OBJECT) ? object->data.object.count : 0;
}

/**
 * @brief Get the key at a specific index in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the key to retrieve
 * @return The key string at the specified index
 */
static inline const char *json_get_object_key(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }
    return json_string_get(&object->data.object.keys[index]);
}

/**
 * @brief Get the length in bytes of the key at a specific index in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the key
 * @return The number of UTF-8 bytes in the key, not including the terminator
 */
static inline size_t json_get_object_key_length(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return 0;
    }
    return object->data.object.keys[index].length;
}

/**
 * @brief Get the interned identifier of the key at a specific index in a JSON object
 *
 * Every distinct key string in a parsed document is assigned a dense identifier in the range
 * `[0, json_get_key_count(root))`. Two keys with the same identifier are byte-for-byte equal.
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the key
 * @return The identifier of the key
 */
static inline uint32_t json_get_object_key_id(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return 0;
    }
    return object->data.object.keys[index].pool_id;
}

/**
 * @brief Get the number of distinct object keys in the parsed document
 *
 * @param value Any JSON value from the document
 * @return The number of distinct keys, which bounds the identifiers returned by `json_get_object_key_id`
 */
size_t json_get_key_count(const json_value_t *value);

/**
 * @brief Get the value at a specific index in a JSON object
 *
 * @param object The JSON value (must be of type JSON_OBJECT)
 * @param index The index of the value to retrieve
 * @return The JSON value at the specified index
 */
static inline json_value_t *json_get_object_value(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }
    return object->data.object.values[index];
}

#endif /* JBirdParser_h */
