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
//   "foo": [["a", "b"], ["x", "y"],
//   "baz": 42
// }
```
 
## Topics

### Creating a Patch

- ``init(operations:)``
- ``init(from:to:)``

### Builder Methods

- ``add(_:to:)-(_,JSON.Pointer)``
- ``add(_:to:)-(_,StringProtocol)``
- ``remove(at:)-(JSON.Pointer)``
- ``remove(at:)-(StringProtocol)``
- ``replace(at:with:)-(JSON.Pointer,_)``
- ``replace(at:with:)-(StringProtocol,_)``
- ``move(from:to:)-(JSON.Pointer,JSON.Pointer)``
- ``move(from:to:)-(StringProtocol,StringProtocol)``
- ``copy(from:to:)-(JSON.Pointer,JSON.Pointer)``
- ``copy(from:to:)-(StringProtocol,StringProtocol)``
- ``test(for:at:)-(_,JSON.Pointer)``
- ``test(for:at:)-(_,StringProtocol)``

### Manipulating Patches

- ``appending(_:)``
- ``append(_:)``
- ``appending(contentsOf:)-(Collection<JSON.Patch.Operation>)``
- ``append(contentsOf:)-(Collection<JSON.Patch.Operation>)``
- ``appending(contentsOf:)-(JSON.Patch)``
- ``append(contentsOf:)-(JSON.Patch)``

### Inspecting a Patch

- ``operations``
- ``isEmpty``

### Array Literal Support

- ``ArrayLiteralElement``
- ``init(arrayLiteral:)``
