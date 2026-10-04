// Read, test for, replace, and remove the value a `JSON.Pointer` addresses.

// snippet.hide
import JBirdCore

let json: JSON = [
    "users": [
        [
            "name": "Alice",
            "roles": ["admin", "editor"]
        ],
        [
            "name": "Bob",
            "roles": ["View"]
        ]
    ]
]

// snippet.show
// snippet.reading
let name = try json.value(atPointer: JSON.Pointer("/users/0/name"))
// "Alice"
// snippet.end

// snippet.contains
let hasName = try json.containsValue(atPointer: JSON.Pointer("/users/0/name"))   // true
let hasTenthUser = try json.containsValue(atPointer: JSON.Pointer("/users/9"))   // false
// snippet.end

// snippet.set
var document = json
try document.setValue("Alice Smith", atPointer: JSON.Pointer("/users/0/name"))
try document.setValue(false, atPointer: .wholeDocument)  // replaces the entire document
// snippet.end

// snippet.remove
var trimmed = json
try trimmed.removeValue(atPointer: JSON.Pointer("/users/1"))
// "users" now contains only Alice
// snippet.end

// snippet.hide
print(name, hasName, hasTenthUser)
print(try document.stringify())
print(try trimmed.stringify())
