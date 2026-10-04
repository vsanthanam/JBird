// Create `JSON` values from Swift literals.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.boolean
let isActive: JSON = true
// snippet.end

// snippet.integer
let count: JSON = 42
// snippet.end

// snippet.float
let ratio: JSON = 4.2
// snippet.end

// snippet.string
let greeting: JSON = "Hello, world!"
// snippet.end

// snippet.array
let tags: JSON = ["foo", "bar", "baz"]
// snippet.end

// snippet.dictionary
let object: JSON = ["key": "value"]
// snippet.end

// snippet.nil
let nothing: JSON = nil
// snippet.end

// snippet.hide
print(isActive, count, ratio, greeting, tags, object, nothing)
