// Apply a `JSON.Patch` to a document, guard it with a test, compute a diff, and serialize it.

// snippet.hide
import JBirdCore

let json: JSON = [
    "users": [
        [
            "name": "Alice",
            "active": true
        ],
        [
            "name": "Bob",
            "active": false
        ]
    ]
]

let patch = try JSON.Patch()
    .replace(at: "/users/1/active", with: true)
    .add("admin", to: "/users/0/role")
    .remove(at: "/users/1/name")

// snippet.show
// snippet.apply
var document = json
try document.apply(patch)

let updated = try json.applying(patch)   // `json` is left unchanged
// snippet.end

// snippet.test
let guarded = try JSON.Patch()
    .test(for: "Alice", at: "/users/0/name")
    .replace(at: "/users/0/name", with: "Alice Smith")

// Throws `PatchError.patchTestFailed` (and changes nothing) if the
// name is no longer "Alice".
try document.apply(guarded)
// snippet.end

// snippet.hide
let source = json
let target = updated

// snippet.show
// snippet.diff
let difference = source.difference(to: target)
let roundTrips = try source.applying(difference) == target   // true
// snippet.end

// snippet.serialize
let rename = try JSON.Patch()
    .replace(at: "/users/0/name", with: "Alice Smith")

let representation = rename.jsonValue
// [
//   {
//     "op": "replace",
//     "path": "/users/0/name",
//     "value": "Alice Smith"
//   }
// ]

let restored = try JSON.Patch(json: representation)
// snippet.end

// snippet.hide
print(try document.stringify())
print(roundTrips, restored == rename)
