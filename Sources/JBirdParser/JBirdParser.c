// JBird
// Parser.c
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

#include "JBirdParser.h"
#include <ctype.h>
#include <float.h>
#include <math.h>
#include <stdint.h>
#include <string.h>

#if defined(__SSE2__) || defined(__x86_64__) || defined(_M_X64) || defined(_M_AMD64)
#include <emmintrin.h>
#define JBird_USE_SSE2 1
#elif defined(__aarch64__) || defined(__ARM_NEON)
#include <arm_neon.h>
#define JBird_USE_NEON 1
#endif

#define JSON_ARENA_SMALL_BLOCK_SIZE (64 * 1024)
#define JSON_ARENA_STANDARD_BLOCK_SIZE (256 * 1024)
#define JSON_ARENA_LARGE_BLOCK_SIZE (1024 * 1024)

#define JSON_SMALL_JSON_THRESHOLD (128 * 1024)
#define JSON_STANDARD_JSON_THRESHOLD (1024 * 1024)

#define SMALL_STRING_SIZE 16
#define STRING_POOL_INITIAL_SIZE 64
#define STRING_POOL_INITIAL_BUCKETS 128

typedef enum {
    CHAR_CLASS_NONE = 0,
    CHAR_CLASS_DIGIT = 1,
    CHAR_CLASS_WHITESPACE = 2,
    CHAR_CLASS_QUOTE = 3,
    CHAR_CLASS_BACKSLASH = 4,
    CHAR_CLASS_LBRACE = 5,
    CHAR_CLASS_RBRACE = 6,
    CHAR_CLASS_LBRACKET = 7,
    CHAR_CLASS_RBRACKET = 8,
    CHAR_CLASS_COLON = 9,
    CHAR_CLASS_COMMA = 10,
    CHAR_CLASS_TRUE_START = 11,
    CHAR_CLASS_FALSE_START = 12,
    CHAR_CLASS_NULL_START = 13,
    CHAR_CLASS_MINUS = 14,
    CHAR_CLASS_PLUS = 15,
    CHAR_CLASS_DOT = 16,
    CHAR_CLASS_E = 17,
    CHAR_CLASS_CONTROL = 18
} char_class_t;

static const uint8_t char_class[256] = {
    [0x00] = CHAR_CLASS_CONTROL,
    [0x01] = CHAR_CLASS_CONTROL,
    [0x02] = CHAR_CLASS_CONTROL,
    [0x03] = CHAR_CLASS_CONTROL,
    [0x04] = CHAR_CLASS_CONTROL,
    [0x05] = CHAR_CLASS_CONTROL,
    [0x06] = CHAR_CLASS_CONTROL,
    [0x07] = CHAR_CLASS_CONTROL,
    [0x08] = CHAR_CLASS_CONTROL,
    [0x0B] = CHAR_CLASS_CONTROL,
    [0x0C] = CHAR_CLASS_CONTROL,
    [0x0E] = CHAR_CLASS_CONTROL,
    [0x0F] = CHAR_CLASS_CONTROL,
    [0x10] = CHAR_CLASS_CONTROL,
    [0x11] = CHAR_CLASS_CONTROL,
    [0x12] = CHAR_CLASS_CONTROL,
    [0x13] = CHAR_CLASS_CONTROL,
    [0x14] = CHAR_CLASS_CONTROL,
    [0x15] = CHAR_CLASS_CONTROL,
    [0x16] = CHAR_CLASS_CONTROL,
    [0x17] = CHAR_CLASS_CONTROL,
    [0x18] = CHAR_CLASS_CONTROL,
    [0x19] = CHAR_CLASS_CONTROL,
    [0x1A] = CHAR_CLASS_CONTROL,
    [0x1B] = CHAR_CLASS_CONTROL,
    [0x1C] = CHAR_CLASS_CONTROL,
    [0x1D] = CHAR_CLASS_CONTROL,
    [0x1E] = CHAR_CLASS_CONTROL,
    [0x1F] = CHAR_CLASS_CONTROL,

    [' '] = CHAR_CLASS_WHITESPACE,
    ['\t'] = CHAR_CLASS_WHITESPACE,
    ['\n'] = CHAR_CLASS_WHITESPACE,
    ['\r'] = CHAR_CLASS_WHITESPACE,

    ['"'] = CHAR_CLASS_QUOTE,
    ['\\'] = CHAR_CLASS_BACKSLASH,
    ['{'] = CHAR_CLASS_LBRACE,
    ['}'] = CHAR_CLASS_RBRACE,
    ['['] = CHAR_CLASS_LBRACKET,
    [']'] = CHAR_CLASS_RBRACKET,
    [':'] = CHAR_CLASS_COLON,
    [','] = CHAR_CLASS_COMMA,

    ['0'] = CHAR_CLASS_DIGIT,
    ['1'] = CHAR_CLASS_DIGIT,
    ['2'] = CHAR_CLASS_DIGIT,
    ['3'] = CHAR_CLASS_DIGIT,
    ['4'] = CHAR_CLASS_DIGIT,
    ['5'] = CHAR_CLASS_DIGIT,
    ['6'] = CHAR_CLASS_DIGIT,
    ['7'] = CHAR_CLASS_DIGIT,
    ['8'] = CHAR_CLASS_DIGIT,
    ['9'] = CHAR_CLASS_DIGIT,
    ['-'] = CHAR_CLASS_MINUS,
    ['+'] = CHAR_CLASS_PLUS,
    ['.'] = CHAR_CLASS_DOT,
    ['e'] = CHAR_CLASS_E,
    ['E'] = CHAR_CLASS_E,

    ['t'] = CHAR_CLASS_TRUE_START,
    ['f'] = CHAR_CLASS_FALSE_START,
    ['n'] = CHAR_CLASS_NULL_START,
};

static inline bool is_digit(uint8_t c) {
    return char_class[c] == CHAR_CLASS_DIGIT;
}

static inline bool is_whitespace(uint8_t c) {
    return char_class[c] == CHAR_CLASS_WHITESPACE;
}

struct json_memory_arena;

typedef struct json_memory_arena json_memory_arena_t;

typedef struct string_pool_entry {
    const char *str;
    size_t len;
    uint32_t hash;
    struct string_pool_entry *next;
} string_pool_entry_t;

typedef struct {
    string_pool_entry_t **buckets;
    size_t bucket_count;
    size_t entry_count;
    json_memory_arena_t *arena;
} string_pool_t;

static inline uint32_t hash_string(const char *str, size_t len) {
    uint32_t hash = 2166136261u;
    const uint8_t *bytes = (const uint8_t *)str;

    while (len >= 4) {
        hash = (hash ^ bytes[0]) * 16777619u;
        hash = (hash ^ bytes[1]) * 16777619u;
        hash = (hash ^ bytes[2]) * 16777619u;
        hash = (hash ^ bytes[3]) * 16777619u;
        bytes += 4;
        len -= 4;
    }

    while (len > 0) {
        hash = (hash ^ *bytes++) * 16777619u;
        len--;
    }

    return hash;
}

typedef struct json_memory_block {
    char *memory;
    size_t size;
    size_t used;
    struct json_memory_block *next;
} json_memory_block_t;

typedef struct json_memory_arena {
    json_memory_block_t *head;
    json_memory_block_t *current;
    size_t total_size;
    size_t block_size;
    string_pool_t string_pool;
} json_memory_arena_t;

typedef struct json_string {
    union {
        char *ptr;
        char buf[SMALL_STRING_SIZE];
    } data;
    size_t length;
    bool is_small;
} json_string_t;

typedef json_string_t json_key_t;

struct json_value {
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
};

typedef struct {
    const uint8_t *input;
    size_t length;
    size_t index;
    char *temp_buffer;
    size_t temp_size;
    size_t temp_capacity;
    json_memory_arena_t *arena;
    bool require_minified;
    bool strict_keys;
    size_t max_depth;
    size_t current_depth;
} json_parser_t;

static json_memory_block_t *json_arena_add_block(json_memory_arena_t *arena, size_t min_size);

static void *json_arena_alloc(json_memory_arena_t *arena, size_t size);

static bool try_parse_simple_string(json_parser_t *parser, const char **out_str, size_t *out_len);

static void json_string_pool_init(string_pool_t *pool, json_memory_arena_t *arena) {
    pool->bucket_count = STRING_POOL_INITIAL_BUCKETS;
    pool->entry_count = 0;
    pool->arena = arena;
    pool->buckets = (string_pool_entry_t **)json_arena_alloc(arena, pool->bucket_count * sizeof(string_pool_entry_t *));
    if (pool->buckets) {
        memset(pool->buckets, 0, pool->bucket_count * sizeof(string_pool_entry_t *));
    }
}

static bool json_string_pool_resize(string_pool_t *pool, json_memory_arena_t *arena) {
    size_t old_bucket_count = pool->bucket_count;
    string_pool_entry_t **old_buckets = pool->buckets;

    size_t new_bucket_count = old_bucket_count * 2;
    string_pool_entry_t **new_buckets = (string_pool_entry_t **)json_arena_alloc(arena, new_bucket_count * sizeof(string_pool_entry_t *));

    if (!new_buckets) {
        return false;
    }

    memset(new_buckets, 0, new_bucket_count * sizeof(string_pool_entry_t *));

    for (size_t i = 0; i < old_bucket_count; i++) {
        string_pool_entry_t *entry = old_buckets[i];
        while (entry) {
            string_pool_entry_t *next = entry->next;

            size_t new_bucket_idx = entry->hash & (new_bucket_count - 1);
            entry->next = new_buckets[new_bucket_idx];
            new_buckets[new_bucket_idx] = entry;

            entry = next;
        }
    }

    pool->buckets = new_buckets;
    pool->bucket_count = new_bucket_count;

    return true;
}

static const char *json_string_pool_get_or_add(string_pool_t *pool, const char *str, size_t len, json_memory_arena_t *arena) {
    if (!pool->buckets) {
        return NULL;
    }

    uint32_t hash = hash_string(str, len);
    size_t bucket_idx = hash & (pool->bucket_count - 1); // Assumes power of 2

    string_pool_entry_t *entry = pool->buckets[bucket_idx];
    while (entry) {
        if (entry->hash == hash && entry->len == len && memcmp(entry->str, str, len) == 0) {
            return entry->str; // Found existing string
        }
        entry = entry->next;
    }

    string_pool_entry_t *new_entry = (string_pool_entry_t *)json_arena_alloc(arena, sizeof(string_pool_entry_t));
    if (!new_entry)
        return NULL;
    char *new_str = (char *)json_arena_alloc(arena, len + 1);
    if (!new_str)
        return NULL;

    memcpy(new_str, str, len);
    new_str[len] = '\0';

    new_entry->str = new_str;
    new_entry->len = len;
    new_entry->hash = hash;
    new_entry->next = pool->buckets[bucket_idx];
    pool->buckets[bucket_idx] = new_entry;

    pool->entry_count++;

    if (pool->entry_count > (pool->bucket_count * 3) / 4) {
        json_string_pool_resize(pool, arena);
    }

    return new_str;
}

json_memory_arena_t *json_arena_init(size_t input_size) {
    json_memory_arena_t *arena = (json_memory_arena_t *)malloc(sizeof(json_memory_arena_t));
    if (!arena)
        return NULL;

    arena->head = NULL;
    arena->current = NULL;
    arena->total_size = 0;

    if (input_size <= JSON_SMALL_JSON_THRESHOLD) {
        arena->block_size = JSON_ARENA_SMALL_BLOCK_SIZE;
    } else if (input_size <= JSON_STANDARD_JSON_THRESHOLD) {
        arena->block_size = JSON_ARENA_STANDARD_BLOCK_SIZE;
    } else {
        arena->block_size = JSON_ARENA_LARGE_BLOCK_SIZE;
    }

    arena->string_pool.buckets = NULL;
    arena->string_pool.bucket_count = 0;
    arena->string_pool.entry_count = 0;
    arena->string_pool.arena = arena;

    if (!json_arena_add_block(arena, 0)) {
        free(arena);
        return NULL;
    }

    json_string_pool_init(&arena->string_pool, arena);

    return arena;
}

static json_memory_block_t *json_arena_add_block(json_memory_arena_t *arena, size_t min_size) {

    size_t block_size = arena->block_size;

    if (min_size > block_size) {
        block_size = min_size;
    }

    json_memory_block_t *block = (json_memory_block_t *)malloc(sizeof(json_memory_block_t));
    if (!block)
        return NULL;

    block->memory = (char *)malloc(block_size);
    if (!block->memory) {
        free(block);
        return NULL;
    }

    block->size = block_size;
    block->used = 0;
    block->next = NULL;

    if (!arena->head) {
        arena->head = block;
    } else if (arena->current) {
        arena->current->next = block;
    } else {
        arena->head->next = block;
    }

    arena->current = block;
    arena->total_size += block_size;

    return block;
}

static void *json_arena_alloc(json_memory_arena_t *arena, size_t size) {
    size = (size + 7) & ~7;

    if (!arena->current || (arena->current->size - arena->current->used) < size) {
        if (!json_arena_add_block(arena, size)) {
            return NULL;
        }
    }

    void *ptr = arena->current->memory + arena->current->used;
    arena->current->used += size;

    return ptr;
}

void json_arena_free(json_memory_arena_t *arena) {
    if (!arena)
        return;

    json_memory_block_t *block = arena->head;
    while (block) {
        json_memory_block_t *next = block->next;
        free(block->memory);
        free(block);
        block = next;
    }

    free(arena);
}

static void json_string_init(json_string_t *str, const char *text, size_t len, json_memory_arena_t *arena) {
    if (!str)
        return;

    str->length = len;

    if (len < SMALL_STRING_SIZE) {
        str->is_small = true;
        if (text && len > 0) {
            memcpy(str->data.buf, text, len);
        }
        str->data.buf[len] = '\0';
    } else {
        str->is_small = false;

        str->data.ptr = (char *)json_arena_alloc(arena, len + 1);
        if (str->data.ptr && text && len > 0) {
            memcpy(str->data.ptr, text, len);
            str->data.ptr[len] = '\0';
        }
    }
}

static const char *json_string_get(const json_string_t *str) {
    if (!str)
        return NULL;
    return str->is_small ? str->data.buf : str->data.ptr;
}

static bool json_scan_simple_string(json_parser_t *parser, const char **str_start, size_t *str_len) {
    size_t start_index = parser->index;
    size_t length = 0;

    while (parser->index < parser->length) {
        uint8_t c = parser->input[parser->index];

        if (char_class[c] == CHAR_CLASS_QUOTE) {
            *str_start = (const char *)(parser->input + start_index);
            *str_len = length;
            parser->index++;
            return true;
        } else if (char_class[c] == CHAR_CLASS_BACKSLASH || c < 0x20) {
            parser->index = start_index;
            return false;
        } else {
            parser->index++;
            length++;
        }
    }

    parser->index = start_index;
    return false;
}

static json_value_t *json_create_value_from_arena(json_memory_arena_t *arena) {
    if (!arena)
        return NULL;

    json_value_t *value = (json_value_t *)json_arena_alloc(arena, sizeof(json_value_t));
    if (value) {
        memset(value, 0, sizeof(json_value_t));
        value->arena = arena;
    }
    return value;
}

void json_free(json_value_t *value) {
    if (!value)
        return;

    if (value->arena) {
        json_arena_free(value->arena);
    }
}

static json_value_t *json_create_null(json_memory_arena_t *arena) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NULL;
    }
    return value;
}

static json_value_t *json_create_boolean(json_memory_arena_t *arena, bool b) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_BOOLEAN;
        value->data.boolean = b;
    }
    return value;
}

static json_value_t *json_create_int(json_memory_arena_t *arena, int64_t i) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NUMBER_INT;
        value->data.integer = i;
    }
    return value;
}

static json_value_t *json_create_double(json_memory_arena_t *arena, double d) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (value) {
        value->type = JSON_NUMBER_DOUBLE;
        value->data.number = d;
    }
    return value;
}

static json_value_t *json_create_string(json_memory_arena_t *arena, const char *str, size_t len) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (!value)
        return NULL;

    value->type = JSON_STRING;
    json_string_init(&value->data.string, str, len, arena);

    return value;
}

static json_value_t *json_create_array(json_memory_arena_t *arena) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (!value)
        return NULL;

    value->type = JSON_ARRAY;
    value->data.array.count = 0;
    value->data.array.capacity = 8;

    value->data.array.elements = (struct json_value **)json_arena_alloc(arena,
                                                                        value->data.array.capacity * sizeof(struct json_value *));

    if (!value->data.array.elements) {
        return NULL;
    }

    return value;
}

static json_value_t *json_create_object(json_memory_arena_t *arena) {
    json_value_t *value = json_create_value_from_arena(arena);
    if (!value)
        return NULL;

    value->type = JSON_OBJECT;
    value->data.object.count = 0;
    value->data.object.capacity = 8;

    value->data.object.keys = (json_key_t *)json_arena_alloc(arena,
                                                             value->data.object.capacity * sizeof(json_key_t));

    value->data.object.values = (struct json_value **)json_arena_alloc(arena,
                                                                       value->data.object.capacity * sizeof(struct json_value *));

    if (!value->data.object.keys || !value->data.object.values) {
        return NULL;
    }

    return value;
}

static json_error_t json_array_push(json_value_t *array, json_value_t *element, json_memory_arena_t *arena) {
    if (array->type != JSON_ARRAY)
        return JSON_INVALID_JSON;

    if (array->data.array.count >= array->data.array.capacity) {
        size_t new_capacity = array->data.array.capacity * 2;

        struct json_value **new_elements = (struct json_value **)json_arena_alloc(arena,
                                                                                  new_capacity * sizeof(struct json_value *));
        if (!new_elements)
            return JSON_OUT_OF_MEMORY;

        memcpy(new_elements, array->data.array.elements,
               array->data.array.count * sizeof(struct json_value *));

        array->data.array.elements = new_elements;
        array->data.array.capacity = new_capacity;
    }

    array->data.array.elements[array->data.array.count++] = element;
    return JSON_NO_ERROR;
}

static void json_parser_init(json_parser_t *parser, const uint8_t *input, size_t length, bool require_minified, bool strict_keys, size_t max_depth) {
    parser->input = input;
    parser->length = length;
    parser->index = 0;
    parser->temp_buffer = NULL;
    parser->temp_size = 0;
    parser->temp_capacity = 0;
    parser->arena = json_arena_init(length);
    parser->require_minified = require_minified;
    parser->strict_keys = strict_keys;
    parser->max_depth = max_depth;
    parser->current_depth = 0;
}

static void json_parser_cleanup(json_parser_t *parser) {
    free(parser->temp_buffer);
    parser->temp_buffer = NULL;
}

static json_error_t json_temp_buffer_ensure_capacity(json_parser_t *parser, size_t needed) {
    if (parser->temp_size + needed > parser->temp_capacity) {
        size_t new_capacity = parser->temp_capacity;
        if (new_capacity == 0) {
            new_capacity = 128;
        }

        while (parser->temp_size + needed > new_capacity) {
            new_capacity *= 2;
        }

        char *new_buffer = (char *)realloc(parser->temp_buffer, new_capacity);
        if (!new_buffer)
            return JSON_OUT_OF_MEMORY;

        parser->temp_buffer = new_buffer;
        parser->temp_capacity = new_capacity;
    }

    return JSON_NO_ERROR;
}

static json_error_t json_temp_buffer_append(json_parser_t *parser, const char *data, size_t length) {
    json_error_t err = json_temp_buffer_ensure_capacity(parser, length);
    if (err != JSON_NO_ERROR)
        return err;

    memcpy(parser->temp_buffer + parser->temp_size, data, length);
    parser->temp_size += length;

    return JSON_NO_ERROR;
}

static json_error_t json_temp_buffer_append_byte(json_parser_t *parser, char byte) {
    return json_temp_buffer_append(parser, &byte, 1);
}

static void json_temp_buffer_clear(json_parser_t *parser) {
    parser->temp_size = 0;
}

json_type_t json_get_type(const json_value_t *value) {
    return value ? value->type : JSON_NULL;
}

bool json_get_boolean(const json_value_t *value) {
    return (value && value->type == JSON_BOOLEAN) ? value->data.boolean : false;
}

int64_t json_get_int(const json_value_t *value) {
    if (!value)
        return 0;

    if (value->type == JSON_NUMBER_INT) {
        return value->data.integer;
    } else if (value->type == JSON_NUMBER_DOUBLE) {
        return (int64_t)value->data.number;
    }

    return 0;
}

double json_get_double(const json_value_t *value) {
    if (!value)
        return 0.0;

    if (value->type == JSON_NUMBER_DOUBLE) {
        return value->data.number;
    } else if (value->type == JSON_NUMBER_INT) {
        return (double)value->data.integer;
    }

    return 0.0;
}

const char *json_get_string(const json_value_t *value) {
    if (!value || value->type != JSON_STRING)
        return NULL;
    return json_string_get(&value->data.string);
}

size_t json_get_array_size(const json_value_t *array) {
    return (array && array->type == JSON_ARRAY) ? array->data.array.count : 0;
}

json_value_t *json_get_array_element(const json_value_t *array, size_t index) {
    if (!array || array->type != JSON_ARRAY || index >= array->data.array.count) {
        return NULL;
    }
    return array->data.array.elements[index];
}

static const char *json_get_object_key_internal(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }

    return json_string_get(&object->data.object.keys[index]);
}

size_t json_get_object_size(const json_value_t *object) {
    return (object && object->type == JSON_OBJECT) ? object->data.object.count : 0;
}

const char *json_get_object_key(const json_value_t *object, size_t index) {
    return json_get_object_key_internal(object, index);
}

json_value_t *json_get_object_value(const json_value_t *object, size_t index) {
    if (!object || object->type != JSON_OBJECT || index >= object->data.object.count) {
        return NULL;
    }
    return object->data.object.values[index];
}

static bool json_has_more(json_parser_t *parser) {
    return parser->index < parser->length;
}

static uint8_t json_peek(json_parser_t *parser) {
    if (parser->index >= parser->length) {
        return 0;
    }
    return parser->input[parser->index];
}

static uint8_t json_next(json_parser_t *parser) {
    if (parser->index >= parser->length) {
        return 0;
    }
    return parser->input[parser->index++];
}

static inline void json_consume_whitespace(json_parser_t *parser) {
    if (parser->require_minified) {
        return;
    }

    const uint8_t *input = parser->input;
    size_t length = parser->length;
    size_t index = parser->index;

    while (index < length) {
        uint8_t c = input[index];

        if (is_whitespace(c)) {
            index++;
        } else {
            break;
        }
    }

    parser->index = index;
}

static void json_parse_bom(json_parser_t *parser) {
    if (parser->length >= 3 &&
        parser->input[0] == 0xEF &&
        parser->input[1] == 0xBB &&
        parser->input[2] == 0xBF) {
        parser->index = 3;
    }
}

static json_error_t json_expect(json_parser_t *parser, uint8_t expected) {
    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }

    uint8_t c = json_next(parser);
    if (c != expected) {
        return JSON_INVALID_CHARACTER;
    }

    return JSON_NO_ERROR;
}

static json_error_t json_parse_hex(json_parser_t *parser, uint16_t *out_value) {
    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }

    uint8_t c = json_next(parser);
    uint16_t value = 0;

    if (c >= '0' && c <= '9') {
        value = c - '0';
    } else if (c >= 'a' && c <= 'f') {
        value = 10 + (c - 'a');
    } else if (c >= 'A' && c <= 'F') {
        value = 10 + (c - 'A');
    } else {
        return JSON_INVALID_UNICODE;
    }

    *out_value = value;
    return JSON_NO_ERROR;
}

static json_error_t json_parse_hex_sequence(json_parser_t *parser, uint16_t *out_value) {
    uint16_t h1, h2, h3, h4;
    json_error_t err;

    if ((err = json_parse_hex(parser, &h1)) != JSON_NO_ERROR)
        return err;
    if ((err = json_parse_hex(parser, &h2)) != JSON_NO_ERROR)
        return err;
    if ((err = json_parse_hex(parser, &h3)) != JSON_NO_ERROR)
        return err;
    if ((err = json_parse_hex(parser, &h4)) != JSON_NO_ERROR)
        return err;

    *out_value = (h1 << 12) | (h2 << 8) | (h3 << 4) | h4;
    return JSON_NO_ERROR;
}

static json_error_t json_add_codepoint(json_parser_t *parser, uint32_t codepoint) {
    json_error_t err;

    if (codepoint <= 0x7F) {
        err = json_temp_buffer_append_byte(parser, (char)codepoint);
    } else if (codepoint <= 0x7FF) {
        err = json_temp_buffer_append_byte(parser, (char)(0xC0 | (codepoint >> 6)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else if (codepoint <= 0xFFFF) {
        err = json_temp_buffer_append_byte(parser, (char)(0xE0 | (codepoint >> 12)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 6) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else if (codepoint <= 0x10FFFF) {
        err = json_temp_buffer_append_byte(parser, (char)(0xF0 | (codepoint >> 18)));
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 12) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | ((codepoint >> 6) & 0x3F)));
        }
        if (err == JSON_NO_ERROR) {
            err = json_temp_buffer_append_byte(parser, (char)(0x80 | (codepoint & 0x3F)));
        }
    } else {
        return JSON_INVALID_UNICODE;
    }

    return err;
}

static json_error_t json_parse_string_into_temp_buffer(json_parser_t *parser) {
    json_error_t err;
    size_t estimate_size = 128;
    size_t remaining = parser->length - parser->index;
    if (remaining > 1)
        estimate_size = (remaining < 1024) ? remaining : 1024;

    err = json_temp_buffer_ensure_capacity(parser, estimate_size);
    if (err != JSON_NO_ERROR)
        return err;
    json_temp_buffer_clear(parser);

    bool escape_mode = false;
    while (json_has_more(parser)) {
        uint8_t c = json_next(parser);

        if (escape_mode) {
            escape_mode = false;
            switch (c) {
            case '"':
            case '\\':
            case '/':
                err = json_temp_buffer_append_byte(parser, c);
                break;
            case 'b':
                err = json_temp_buffer_append_byte(parser, '\b');
                break;
            case 'f':
                err = json_temp_buffer_append_byte(parser, '\f');
                break;
            case 'n':
                err = json_temp_buffer_append_byte(parser, '\n');
                break;
            case 'r':
                err = json_temp_buffer_append_byte(parser, '\r');
                break;
            case 't':
                err = json_temp_buffer_append_byte(parser, '\t');
                break;
            case 'u': {
                uint16_t code_unit1, code_unit2;
                err = json_parse_hex_sequence(parser, &code_unit1);
                if (err != JSON_NO_ERROR)
                    return err;

                if (code_unit1 >= 0xD800 && code_unit1 <= 0xDBFF) {
                    if (!(json_has_more(parser) && json_next(parser) == '\\' &&
                          json_has_more(parser) && json_next(parser) == 'u'))
                        return JSON_INVALID_UNICODE;
                    err = json_parse_hex_sequence(parser, &code_unit2);
                    if (err != JSON_NO_ERROR)
                        return err;
                    if (code_unit2 < 0xDC00 || code_unit2 > 0xDFFF)
                        return JSON_INVALID_UNICODE;
                    uint32_t codepoint = 0x10000 + (((code_unit1 & 0x3FF) << 10) | (code_unit2 & 0x3FF));
                    err = json_add_codepoint(parser, codepoint);
                } else if (code_unit1 >= 0xDC00 && code_unit1 <= 0xDFFF) { // Low surrogate without high
                    return JSON_INVALID_UNICODE;
                } else { // BMP
                    err = json_add_codepoint(parser, code_unit1);
                }
                break;
            }
            default:
                return JSON_INVALID_ESCAPE;
            }
            if (err != JSON_NO_ERROR)
                return err;
        } else if (c == '"') {
            return JSON_NO_ERROR;
        } else if (c == '\\') {
            escape_mode = true;
        } else if (c < 0x20) {
            return JSON_INVALID_STRING;
        } else {
            err = json_temp_buffer_append_byte(parser, c);
            if (err != JSON_NO_ERROR)
                return err;
        }
    }
    return JSON_UNEXPECTED_END_OF_INPUT;
}

static json_error_t json_parse_number(json_parser_t *parser, json_value_t **out_value) {

    const size_t start_index = parser->index;
    bool is_negative = false;
    bool is_double = false;
    double double_value = 0.0;
    int64_t int_value = 0;
    bool integer_overflow = false;

    if (json_peek(parser) == '-') {
        is_negative = true;
        json_next(parser);
    }

    if (!json_has_more(parser))
        return JSON_INVALID_NUMBER;
    uint8_t c = json_peek(parser);
    if (!is_digit(c))
        return JSON_INVALID_NUMBER;

    if (c == '0') {
        json_next(parser);
        if (json_has_more(parser) && is_digit(json_peek(parser))) {
            return JSON_INVALID_NUMBER;
        }
    } else {
        size_t remaining_bytes = parser->length - parser->index;

        if (remaining_bytes >= 16) {
            size_t digit_run_length = 0;

#if defined(JBird_USE_SSE2)
            // Constants for SSE2
            const __m128i nine = _mm_set1_epi8('9');
            const __m128i zero_char = _mm_set1_epi8('0');

            while (parser->index + digit_run_length + 16 <= parser->length) {
                __m128i input = _mm_loadu_si128((const __m128i *)(parser->input + parser->index + digit_run_length));

                __m128i gt_or_eq_zero = _mm_cmpgt_epi8(input, _mm_sub_epi8(zero_char, _mm_set1_epi8(1)));
                __m128i lt_or_eq_nine = _mm_cmplt_epi8(input, _mm_add_epi8(nine, _mm_set1_epi8(1)));
                __m128i is_digit_vec = _mm_and_si128(gt_or_eq_zero, lt_or_eq_nine);

                uint16_t mask = _mm_movemask_epi8(is_digit_vec);

                if (mask != 0xFFFF) {
                    unsigned int trailing_zeros = __builtin_ctz(~mask);
                    digit_run_length += trailing_zeros;
                    break;
                }

                digit_run_length += 16;
            }
#elif defined(JBird_USE_NEON)
            // Constants for NEON
            const uint8x16_t zero_char = vdupq_n_u8('0');
            const uint8x16_t nine = vdupq_n_u8('9');

            while (parser->index + digit_run_length + 16 <= parser->length) {
                uint8x16_t input = vld1q_u8(parser->input + parser->index + digit_run_length);

                uint8x16_t gt_or_eq_zero = vcgeq_u8(input, zero_char);
                uint8x16_t lt_or_eq_nine = vcleq_u8(input, nine);
                uint8x16_t is_digit_vec = vandq_u8(gt_or_eq_zero, lt_or_eq_nine);

                uint64_t high = vgetq_lane_u64(vreinterpretq_u64_u8(is_digit_vec), 1);
                uint64_t low = vgetq_lane_u64(vreinterpretq_u64_u8(is_digit_vec), 0);

                if (high != 0xFFFFFFFFFFFFFFFF || low != 0xFFFFFFFFFFFFFFFF) {
                    uint8_t bytes[16];
                    vst1q_u8(bytes, is_digit_vec);
                    int i;
                    for (i = 0; i < 16; i++) {
                        if (bytes[i] == 0)
                            break;
                    }
                    digit_run_length += i;
                    break;
                }

                digit_run_length += 16;
            }
#else
            size_t i = 0;
            while (parser->index + digit_run_length < parser->length &&
                   is_digit(parser->input[parser->index + digit_run_length])) {
                digit_run_length++;
            }
#endif

            if (digit_run_length > 0) {
                const size_t safe_int_digits = 18;

                size_t digits_to_process = digit_run_length;
                if (!integer_overflow && digits_to_process > safe_int_digits) {
                    digits_to_process = safe_int_digits;
                }

                for (size_t i = 0; i < digits_to_process; i++) {
                    uint8_t digit = parser->input[parser->index++] - '0';

                    if (!integer_overflow) {
                        int_value = int_value * 10 + digit;
                    } else {
                        double_value = double_value * 10.0 + (double)digit;
                    }
                }

                if (!integer_overflow && digit_run_length > digits_to_process) {
                    integer_overflow = true;
                    double_value = (double)int_value;
                    is_double = true;

                    for (size_t i = digits_to_process; i < digit_run_length; i++) {
                        uint8_t digit = parser->input[parser->index++] - '0';
                        double_value = double_value * 10.0 + (double)digit;
                    }
                }
            }

            while (json_has_more(parser) && is_digit(json_peek(parser))) {
                uint8_t digit = json_next(parser) - '0';

                if (!integer_overflow) {
                    // Check for overflow considering the sign
                    int64_t limit = is_negative ? -(INT64_MIN / 10) : (INT64_MAX / 10);
                    int64_t last_digit_limit = is_negative ? -(INT64_MIN % 10) : (INT64_MAX % 10);

                    if (int_value > limit || (int_value == limit && digit > last_digit_limit)) {
                        integer_overflow = true;
                        double_value = (double)int_value;
                        is_double = true;
                    }
                }

                if (!integer_overflow) {
                    int_value = int_value * 10 + digit;
                } else {
                    double_value = double_value * 10.0 + (double)digit;
                }
            }
        } else {
            while (json_has_more(parser) && is_digit(json_peek(parser))) {
                uint8_t digit = json_next(parser) - '0';

                if (!integer_overflow) {
                    // Check for overflow considering the sign
                    int64_t limit = is_negative ? -(INT64_MIN / 10) : (INT64_MAX / 10);
                    int64_t last_digit_limit = is_negative ? -(INT64_MIN % 10) : (INT64_MAX % 10);

                    if (int_value > limit || (int_value == limit && digit > last_digit_limit)) {
                        integer_overflow = true;
                        double_value = (double)int_value;
                        is_double = true;
                    }
                    if (!integer_overflow) {
                        int_value = int_value * 10 + digit;
                    } else {
                        double_value = double_value * 10.0 + (double)digit;
                    }
                } else {
                    double_value = double_value * 10.0 + (double)digit;
                }
            }
        }
    }

    if (integer_overflow) {
        is_double = true;
    }

    if (json_has_more(parser) && json_peek(parser) == '.') {
        is_double = true;
        json_next(parser);

        if (!json_has_more(parser) || !is_digit(json_peek(parser))) {
            return JSON_INVALID_NUMBER;
        }

        if (!integer_overflow) {
            double_value = (double)int_value;
        }

        double fraction = 0.0;
        double divisor = 1.0;
        while (json_has_more(parser) && is_digit(json_peek(parser))) {
            uint8_t digit = json_next(parser) - '0';
            divisor *= 10.0;
            fraction += (double)digit / divisor;
        }
        double_value += fraction;
    }

    if (json_has_more(parser) && (json_peek(parser) == 'e' || json_peek(parser) == 'E')) {
        json_next(parser);

        bool exp_negative = false;
        if (json_has_more(parser) && (json_peek(parser) == '+' || json_peek(parser) == '-')) {
            exp_negative = (json_next(parser) == '-');
        }

        if (!json_has_more(parser) || !is_digit(json_peek(parser))) {
            return JSON_INVALID_NUMBER;
        }

        if (!integer_overflow && !is_double) {
            double_value = (double)int_value;
        }
        is_double = true;

        int exp_value = 0;
        while (json_has_more(parser) && is_digit(json_peek(parser))) {
            uint8_t digit = json_next(parser) - '0';
            if (exp_value <= 308) {
                exp_value = exp_value * 10 + digit;
            }
        }

        if (exp_value > 0) {
            double scale = pow(10.0, (double)exp_value);
            if (exp_negative) {
                double_value /= scale;
            } else {
                double_value *= scale;
            }
        }
    }

    if (parser->index == start_index + (is_negative ? 1 : 0)) {
        return JSON_INVALID_NUMBER;
    }

    if (is_double) {
        *out_value = json_create_double(parser->arena, is_negative ? -double_value : double_value);
    } else {
        *out_value = json_create_int(parser->arena, is_negative ? -int_value : int_value);
    }

    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}
static json_error_t json_parse_value(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_array(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_object(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_true(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_false(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_null(json_parser_t *parser, json_value_t **out_value);

static json_error_t json_parse_value(json_parser_t *parser, json_value_t **out_value) {
    json_consume_whitespace(parser);

    if (!json_has_more(parser)) {
        return JSON_UNEXPECTED_END_OF_INPUT;
    }

    if (parser->max_depth > 0 && parser->current_depth >= parser->max_depth) {
        return JSON_MAX_DEPTH_EXCEEDED;
    }

    uint8_t c = json_peek(parser);
    uint8_t char_type = char_class[c];

    if (char_type == CHAR_CLASS_QUOTE) {
        parser->index++;

        const char *str_start;
        size_t str_length;

        if (json_scan_simple_string(parser, &str_start, &str_length)) {
            json_value_t *value = json_create_value_from_arena(parser->arena);
            if (!value)
                return JSON_OUT_OF_MEMORY;

            value->type = JSON_STRING;
            json_string_init(&value->data.string, str_start, str_length, parser->arena);

            *out_value = value;
            return JSON_NO_ERROR;
        }

        json_error_t err = json_parse_string_into_temp_buffer(parser);
        if (err != JSON_NO_ERROR) {
            return err;
        }

        *out_value = json_create_string(parser->arena, parser->temp_buffer, parser->temp_size);

        json_temp_buffer_clear(parser);

        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }

    switch (char_type) {
    case CHAR_CLASS_LBRACE:
        return json_parse_object(parser, out_value);

    case CHAR_CLASS_LBRACKET:
        return json_parse_array(parser, out_value);

    case CHAR_CLASS_TRUE_START:
        return json_parse_true(parser, out_value);

    case CHAR_CLASS_FALSE_START:
        return json_parse_false(parser, out_value);

    case CHAR_CLASS_NULL_START:
        return json_parse_null(parser, out_value);

    case CHAR_CLASS_MINUS:
    case CHAR_CLASS_DIGIT:
        return json_parse_number(parser, out_value);

    default:
        return JSON_INVALID_CHARACTER;
    }
}

static json_error_t json_parse_array(json_parser_t *parser, json_value_t **out_value) {
    json_error_t err = json_expect(parser, '[');
    if (err != JSON_NO_ERROR) {
        return err;
    }

    parser->current_depth++;

    json_value_t *array = json_create_array(parser->arena);
    if (!array) {
        return JSON_OUT_OF_MEMORY;
    }

    json_consume_whitespace(parser);

    if (json_has_more(parser) && json_peek(parser) == ']') {
        json_next(parser);
        parser->current_depth--;
        *out_value = array;
        return JSON_NO_ERROR;
    }

    while (1) {
        json_value_t *element = NULL;
        err = json_parse_value(parser, &element);
        if (err != JSON_NO_ERROR) {
            parser->current_depth--;
            return err;
        }

        err = json_array_push(array, element, parser->arena);
        if (err != JSON_NO_ERROR) {
            parser->current_depth--;
            return err;
        }

        json_consume_whitespace(parser);

        if (!json_has_more(parser)) {
            parser->current_depth--;
            return JSON_UNEXPECTED_END_OF_INPUT;
        }

        uint8_t c = json_next(parser);
        if (c == ']') {
            break;
        } else if (c == ',') {
            json_consume_whitespace(parser);
            continue;
        } else {
            parser->current_depth--;
            return JSON_EXPECTED_COMMA_OR_BRACKET;
        }
    }

    parser->current_depth--;
    *out_value = array;
    return JSON_NO_ERROR;
}

static json_error_t json_parse_object(json_parser_t *parser, json_value_t **out_value) {

    json_error_t err = json_expect(parser, '{');
    if (err != JSON_NO_ERROR)
        return err;

    parser->current_depth++;

    json_value_t *object = json_create_object(parser->arena);
    if (!object) {
        parser->current_depth--;
        return JSON_OUT_OF_MEMORY;
    }

    json_consume_whitespace(parser);

    if (json_has_more(parser) && json_peek(parser) == '}') {
        json_next(parser);
        parser->current_depth--;
        *out_value = object;
        return JSON_NO_ERROR;
    }

    while (1) {
        json_consume_whitespace(parser);
        if (!json_has_more(parser) || json_peek(parser) != '"') {
            parser->current_depth--;
            return JSON_MISSING_OBJECT_KEY;
        }

        const char *key;
        size_t key_len;
        if (try_parse_simple_string(parser, &key, &key_len)) {
            const char *interned_key = json_string_pool_get_or_add(&parser->arena->string_pool,
                                                                   key, key_len, parser->arena);
            if (!interned_key) {
                parser->current_depth--;
                return JSON_OUT_OF_MEMORY;
            }

            if (object->data.object.count >= object->data.object.capacity) {
                size_t new_capacity = object->data.object.capacity * 2;
                if (new_capacity == 0)
                    new_capacity = 8;

                json_key_t *new_keys = (json_key_t *)json_arena_alloc(parser->arena, new_capacity * sizeof(json_key_t));
                struct json_value **new_values = (struct json_value **)json_arena_alloc(parser->arena, new_capacity * sizeof(struct json_value *));

                if (!new_keys || !new_values) {
                    parser->current_depth--;
                    return JSON_OUT_OF_MEMORY;
                }

                if (object->data.object.count > 0) {
                    memcpy(new_keys, object->data.object.keys, object->data.object.count * sizeof(json_key_t));
                    memcpy(new_values, object->data.object.values, object->data.object.count * sizeof(struct json_value *));
                }
                object->data.object.keys = new_keys;
                object->data.object.values = new_values;
                object->data.object.capacity = new_capacity;
            }

            // Check for duplicate keys
            if (parser->strict_keys) {
                for (size_t i = 0; i < object->data.object.count; i++) {
                    const char *existing_key = json_string_get(&object->data.object.keys[i]);
                    size_t existing_len = object->data.object.keys[i].length;

                    if (existing_len == key_len &&
                        memcmp(existing_key, interned_key, key_len) == 0) {
                        parser->current_depth--;
                        return JSON_DUPLICATE_KEY;
                    }
                }
            }

            json_string_t *str = &object->data.object.keys[object->data.object.count];
            str->length = key_len;

            if (key_len < SMALL_STRING_SIZE) {
                str->is_small = true;
                memcpy(str->data.buf, interned_key, key_len);
                str->data.buf[key_len] = '\0';
            } else {
                str->is_small = false;
                str->data.ptr = (char *)interned_key;
            }
        } else {
            json_next(parser);
            err = json_parse_string_into_temp_buffer(parser);
            if (err != JSON_NO_ERROR) {
                parser->current_depth--;
                return err;
            }

            const char *interned_key = json_string_pool_get_or_add(&parser->arena->string_pool,
                                                                   parser->temp_buffer, parser->temp_size,
                                                                   parser->arena);
            if (!interned_key) {
                parser->current_depth--;
                return JSON_OUT_OF_MEMORY;
            }

            if (object->data.object.count >= object->data.object.capacity) {
                size_t new_capacity = object->data.object.capacity * 2;
                if (new_capacity == 0)
                    new_capacity = 8;

                json_key_t *new_keys = (json_key_t *)json_arena_alloc(parser->arena, new_capacity * sizeof(json_key_t));
                struct json_value **new_values = (struct json_value **)json_arena_alloc(parser->arena, new_capacity * sizeof(struct json_value *));

                if (!new_keys || !new_values) {
                    parser->current_depth--;
                    return JSON_OUT_OF_MEMORY;
                }

                if (object->data.object.count > 0) {
                    memcpy(new_keys, object->data.object.keys, object->data.object.count * sizeof(json_key_t));
                    memcpy(new_values, object->data.object.values, object->data.object.count * sizeof(struct json_value *));
                }
                object->data.object.keys = new_keys;
                object->data.object.values = new_values;
                object->data.object.capacity = new_capacity;
            }

            if (parser->strict_keys) {
                for (size_t i = 0; i < object->data.object.count; i++) {
                    const char *existing_key = json_string_get(&object->data.object.keys[i]);
                    size_t existing_len = object->data.object.keys[i].length;

                    if (existing_len == parser->temp_size &&
                        memcmp(existing_key, parser->temp_buffer, parser->temp_size) == 0) {
                        parser->current_depth--;
                        return JSON_DUPLICATE_KEY;
                    }
                }
            }

            json_string_t *str = &object->data.object.keys[object->data.object.count];
            str->length = parser->temp_size;

            if (parser->temp_size < SMALL_STRING_SIZE) {
                str->is_small = true;
                memcpy(str->data.buf, interned_key, parser->temp_size);
                str->data.buf[parser->temp_size] = '\0';
            } else {
                str->is_small = false;
                str->data.ptr = (char *)interned_key;
            }

            json_temp_buffer_clear(parser);
        }

        json_consume_whitespace(parser);
        if (!json_has_more(parser) || json_next(parser) != ':') {
            parser->current_depth--;
            return JSON_EXPECTED_COLON;
        }
        json_consume_whitespace(parser);

        json_value_t *value = NULL;
        err = json_parse_value(parser, &value);
        if (err != JSON_NO_ERROR) {
            parser->current_depth--;
            return err;
        }

        object->data.object.values[object->data.object.count] = value;

        object->data.object.count++;

        json_consume_whitespace(parser);

        if (!json_has_more(parser)) {
            parser->current_depth--;
            return JSON_UNEXPECTED_END_OF_INPUT;
        }

        uint8_t c = json_next(parser);
        if (c == '}') {
            break;
        } else if (c == ',') {
            json_consume_whitespace(parser);
            continue;
        } else {
            parser->current_depth--;
            return JSON_EXPECTED_COMMA_OR_BRACE;
        }
    }

    parser->current_depth--;
    *out_value = object;
    return JSON_NO_ERROR;
}

static json_error_t json_parse_true(json_parser_t *parser, json_value_t **out_value) {

    if (parser->length - parser->index >= 4 &&
        memcmp(parser->input + parser->index, "true", 4) == 0) {
        parser->index += 4;
        *out_value = json_create_boolean(parser->arena, true);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }

    if (!json_has_more(parser) || json_next(parser) != 't') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'r') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'u') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'e') {
        return JSON_INVALID_LITERAL;
    }

    *out_value = json_create_boolean(parser->arena, true);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

static json_error_t json_parse_false(json_parser_t *parser, json_value_t **out_value) {

    if (parser->length - parser->index >= 5 &&
        memcmp(parser->input + parser->index, "false", 5) == 0) {
        parser->index += 5;
        *out_value = json_create_boolean(parser->arena, false);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }

    if (!json_has_more(parser) || json_next(parser) != 'f') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'a') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 's') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'e') {
        return JSON_INVALID_LITERAL;
    }

    *out_value = json_create_boolean(parser->arena, false);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

static json_error_t json_parse_null(json_parser_t *parser, json_value_t **out_value) {

    if (parser->length - parser->index >= 4 &&
        memcmp(parser->input + parser->index, "null", 4) == 0) {
        parser->index += 4;
        *out_value = json_create_null(parser->arena);
        return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
    }

    if (!json_has_more(parser) || json_next(parser) != 'n') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'u') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }

    if (!json_has_more(parser) || json_next(parser) != 'l') {
        return JSON_INVALID_LITERAL;
    }

    *out_value = json_create_null(parser->arena);
    return *out_value ? JSON_NO_ERROR : JSON_OUT_OF_MEMORY;
}

static bool try_parse_simple_string(json_parser_t *parser, const char **out_str, size_t *out_len) {
    size_t start_idx = parser->index;
    const uint8_t *input = parser->input;
    size_t length = parser->length;

    if (char_class[input[start_idx]] != CHAR_CLASS_QUOTE)
        return false;
    start_idx++;

    size_t curr_idx = start_idx;
    while (curr_idx < length) {
        uint8_t c = input[curr_idx];

        if (char_class[c] == CHAR_CLASS_QUOTE) {
            *out_str = (const char *)(input + start_idx);
            *out_len = curr_idx - start_idx;
            parser->index = curr_idx + 1;
            return true;
        }

        if (char_class[c] == CHAR_CLASS_BACKSLASH || c < 0x20) {
            return false;
        }

        curr_idx++;
    }

    return false;
}

json_error_t json_parse(const uint8_t *data, size_t length, json_value_t **out_value, bool allow_bom, bool require_minified, bool strict_keys, size_t max_depth) {
    if (!data || !out_value) {
        return JSON_INVALID_JSON;
    }

    *out_value = NULL;

    json_parser_t parser;
    json_parser_init(&parser, data, length, require_minified, strict_keys, max_depth);

    if (!parser.arena) {
        json_parser_cleanup(&parser);
        return JSON_OUT_OF_MEMORY;
    }

    if (allow_bom) {
        json_parse_bom(&parser);
    }

    json_error_t err = json_parse_value(&parser, out_value);

    json_consume_whitespace(&parser);

    if (err == JSON_NO_ERROR && parser.index < parser.length) {
        *out_value = NULL;
        err = JSON_INVALID_JSON;
    }

    free(parser.temp_buffer);
    parser.temp_buffer = NULL;

    if (err != JSON_NO_ERROR) {
        json_arena_free(parser.arena);
        parser.arena = NULL;
        *out_value = NULL;
    }

    return err;
}
