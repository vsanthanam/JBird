// Drop `null` members and elements while deserializing with `DeserializationOptions`.

// snippet.hide
import Foundation
import JBirdCore

let data = Data(
    """
    {
        "foo": "bar",
        "baz": null,
        "qux": [true, null, false]
    }
    """.utf8
)

// snippet.show
// snippet.omit-null-keys
let withoutNullKeys = try JSON.value(for: data, options: .omitNullKeys)
// ["foo": "bar", "qux": [true, nil, false]]
// Key "baz" is omitted because it has a null value.
// snippet.end

// snippet.omit-null-values
let withoutNulls = try JSON.value(for: data, options: .omitNullValues)
// ["foo": "bar", "qux": [true, false]]
// Key "baz" is omitted because it has a null value, and null values are stripped from the array in key "qux".
// snippet.end

// snippet.hide
print(withoutNullKeys == ["foo": "bar", "qux": [true, nil, false]])
print(withoutNulls == ["foo": "bar", "qux": [true, false]])
