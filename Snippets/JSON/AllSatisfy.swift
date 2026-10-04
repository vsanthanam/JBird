// Check whether every element of a JSON array, or every key-value pair of a JSON object, satisfies a predicate.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.array
let strings: JSON = ["foo", "bar", "baz"]
let mixed: JSON = [24, 12, nil]

let allStrings = try strings.allSatisfy { value in
    value.isString
}  // true

let allNumbers = try mixed.allSatisfy { value in
    value.isNumber
}  // false
// snippet.end

// snippet.object
let flags: JSON = ["foo": true, "bar": false, "qux": true]
let counts: JSON = ["foo": 12, "bar": 24, "qux": nil]

let allFlags = try flags.allSatisfy { key, value in
    key.count == 3 && value.isBool
}  // true

let allCounts = try counts.allSatisfy { key, value in
    key.count == 3 && value.isNumber
}  // false
// snippet.end

// snippet.hide
print(allStrings, allNumbers, allFlags, allCounts)
