// AFL++ Fuzzing Harness for JBirdParser

#ifndef ACCESSOR_ITERATION_LIMIT
#define ACCESSOR_ITERATION_LIMIT 100
#endif

#include "JBirdParser.h"
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#ifdef __AFL_FUZZ_TESTCASE_LEN
#include <unistd.h>
__AFL_FUZZ_INIT();
#endif

int main(int argc, char *argv[]) {
#ifdef __AFL_FUZZ_TESTCASE_LEN
    __AFL_INIT();

    unsigned char *buf = __AFL_FUZZ_TESTCASE_BUF;

    while (__AFL_LOOP(10000)) {
        int len = __AFL_FUZZ_TESTCASE_LEN;

        json_value_t *value = NULL;

        json_error_t err = json_parse(buf, len, &value, true, false, false, 100);

        if (err == JSON_NO_ERROR && value != NULL) {
            json_type_t type = json_get_type(value);

            switch (type) {
            case JSON_BOOLEAN:
                json_get_boolean(value);
                break;
            case JSON_NUMBER_INT:
                json_get_int(value);
                break;
            case JSON_NUMBER_DOUBLE:
                json_get_double(value);
                break;
            case JSON_STRING:
                json_get_string(value);
                break;
            case JSON_ARRAY: {
                size_t size = json_get_array_size(value);
                for (size_t i = 0; i < size && i < ACCESSOR_ITERATION_LIMIT; i++) {
                    json_get_array_element(value, i);
                }
                break;
            }
            case JSON_OBJECT: {
                size_t size = json_get_object_size(value);
                for (size_t i = 0; i < size && i < ACCESSOR_ITERATION_LIMIT; i++) {
                    json_get_object_key(value, i);
                    json_get_object_value(value, i);
                }
                break;
            }
            default:
                break;
            }

            json_free(value);
        }

        value = NULL;
        err = json_parse(buf, len, &value, false, false, true, 50);
        if (err == JSON_NO_ERROR && value != NULL) {
            json_free(value);
        }

        value = NULL;
        err = json_parse(buf, len, &value, false, true, false, 100);
        if (err == JSON_NO_ERROR && value != NULL) {
            json_free(value);
        }
    }

    return 0;

#else
    unsigned char *buf = NULL;
    size_t len = 0;
    size_t capacity = 4096;

    buf = malloc(capacity);
    if (!buf)
        return 1;

    size_t bytes_read;
    while ((bytes_read = fread(buf + len, 1, capacity - len, stdin)) > 0) {
        len += bytes_read;
        if (len == capacity) {
            capacity *= 2;
            unsigned char *new_buf = realloc(buf, capacity);
            if (!new_buf) {
                free(buf);
                return 1;
            }
            buf = new_buf;
        }
    }

    json_value_t *value = NULL;
    json_error_t err = json_parse(buf, len, &value, true, false, false, 100);

    if (err == JSON_NO_ERROR) {
        printf("Parse successful, type: %d\n", json_get_type(value));
        json_free(value);
    } else {
        printf("Parse error: %d\n", err);
    }

    free(buf);
    return 0;
#endif
}
