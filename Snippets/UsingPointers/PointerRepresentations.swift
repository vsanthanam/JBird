// Escape reference tokens, switch between the textual representations of a `JSON.Pointer`, and compose pointers.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.escaping
let data: JSON = ["a/b": ["c~d": 42]]

// "/" in a key is written as "~1", "~" is written as "~0"
let pointer = try JSON.Pointer("/a~1b/c~0d")
print(pointer.tokens)                      // ["a/b", "c~d"]
print(try data.value(atPointer: pointer))  // 42

// Building from raw tokens needs no manual escaping
let same = JSON.Pointer(tokens: ["a/b", "c~d"])
print(same.string)                         // "/a~1b/c~0d"
// snippet.end

// snippet.textual
let namePointer = try JSON.Pointer("/users/0/name")
print(namePointer.string)       // "/users/0/name"
print(namePointer.uriFragment)  // "#/users/0/name"
// snippet.end

// snippet.parsing-forms
let stringForm = try JSON.Pointer("/a b/c")       // string form
let fragmentForm = try JSON.Pointer("#/a%20b/c")  // URI fragment form
print(stringForm == fragmentForm)                 // true — both yield tokens ["a b", "c"]
// snippet.end

// snippet.composing
let users = try JSON.Pointer("/users")
let firstName = users.appending("0", "name")  // "/users/0/name"
// snippet.end

// snippet.hide
print(firstName.string)
