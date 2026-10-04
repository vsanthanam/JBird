// Inspect the size of a JSON array or object with `count` and `isEmpty`.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.count
let object: JSON = ["foo": 1, "bar": 2]
let array: JSON = ["foo", "bar", "baz"]
let boolValue: JSON = false

let objectCount = try object.count  // 2
let arrayCount = try array.count    // 3

do {
    _ = try boolValue.count
} catch {
    // Not an array or an object, so `count` throws
}
// snippet.end

// snippet.is-empty
let emptyArray: JSON = []
let mixedArray: JSON = [1, 2, "three"]
let emptyObject: JSON = [:]
let pairs: JSON = ["Foo": "Bar"]
let nonCollection: JSON = true

print(try emptyArray.isEmpty)   // true
print(try mixedArray.isEmpty)   // false
print(try emptyObject.isEmpty)  // true
print(try pairs.isEmpty)        // false

do {
    _ = try nonCollection.isEmpty
} catch {
    // Not an array or an object, so `isEmpty` throws
}
// snippet.end

// snippet.hide
print(objectCount, arrayCount)
