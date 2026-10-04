// Apply a `JSON.Patch` to a `JSON` value.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.apply
var json: JSON = [
    "foo": [["a", "b"]],
    "bar": true,
    "baz": 24
]
let patch = try JSON.Patch()
    .add(["x", "y"], to: "/foo/-")
    .remove(at: "/bar")
    .replace(at: "/baz", with: 42)
try json.apply(patch)

// JSON value has been updated to the following:
// {
//   "foo": [["a", "b"], ["x", "y"]],
//   "baz": 42
// }
// snippet.end

// snippet.hide
print(try json.stringify())
