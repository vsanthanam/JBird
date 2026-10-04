// Build a `JSON.Patch` with the chaining builder methods or with an array literal.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.builder
let patch = try JSON.Patch()
    .replace(at: "/users/1/active", with: true)
    .add("admin", to: "/users/0/role")
    .remove(at: "/users/1/name")
// snippet.end

// snippet.pointer-overload
let role = try JSON.Pointer("/users/0/role")
let addRole = JSON.Patch().add("admin", to: role)
// snippet.end

// snippet.array-literal
let literal: JSON.Patch = [
    .replace(path: try JSON.Pointer("/users/1/active"), value: true),
    .remove(path: try JSON.Pointer("/users/1/name"))
]
// snippet.end

// snippet.hide
print(patch.operations.count, addRole.operations.count, literal.operations.count)
