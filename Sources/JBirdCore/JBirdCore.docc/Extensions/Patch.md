# ``JSON/Patch``

## Overview

A `Patch` is the in-memory representation of an [RFC 6902](https://datatracker.ietf.org/doc/html/rfc6902)
JSON Patch document: an ordered list of ``Patch/Operation`` values, each addressing a location in a target
document with a ``JSON/Pointer``.

Build a patch by chaining the operation methods, each of which returns a new patch with the operation
appended.

You can apply a patch to a JSON value using ``JSON/apply(_:)``

```swift
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
//   "foo": [["a", "b], ["x", "y"],
//   "baz: 42
// }
```
 
## Topics

### Creating a Patch

- ``init(operations:)``

### Building a Patch

- ``add(_:to:)-(_,JSON.Pointer)``
- ``add(_:to:)-(_,String)``
- ``remove(at:)-(JSON.Pointer)``
- ``remove(at:)-(String)``
- ``replace(at:with:)-(JSON.Pointer,_)``
- ``replace(at:with:)-(String,_)``
- ``move(from:to:)-(JSON.Pointer,JSON.Pointer)``
- ``move(from:to:)-(String,String)``
- ``copy(from:to:)-(JSON.Pointer,JSON.Pointer)``
- ``copy(from:to:)-(String,String)``
- ``test(for:at:)-(_,JSON.Pointer)``
- ``test(for:at:)-(_,String)``

### Inspecting a Patch

- ``operations``
- ``isEmpty``
