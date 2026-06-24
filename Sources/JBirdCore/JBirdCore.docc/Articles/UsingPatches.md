# Using JSON Patches

Describe and apply structured edits to a JSON document.

## Overview

A *JSON Patch* is a document that describes a sequence of changes to apply to a JSON value — add this key, remove that element, replace this scalar. JBird models them with the ``JSON/Patch`` type, a faithful implementation of [RFC 6902](https://datatracker.ietf.org/doc/html/rfc6902). A patch is a first-class value you can build, store, transmit, and apply, which makes it ideal for expressing a diff between two documents or for sending a compact update across a network.

Every operation in a patch addresses the location it acts on with a ``JSON/Pointer``, so the two features work hand in hand. See <doc:UsingPointers> for more information.

The examples below all operate on this document:

```json
{
    "users": [
        {
            "name": "Alice",
            "active": true
        },
        {
            "name": "Bob",
            "active": false
        }
    ]
}
```

## Building a patch

A ``JSON/Patch`` is built by chaining operation methods. Each method returns a *new* patch with one operation appended, so a pipeline of calls reads as the edit it describes. The string-based overloads parse their locations as JSON Pointers and therefore throw if a location is malformed:

```swift
let patch = try JSON.Patch()
    .replace(at: "/users/1/active", with: true)
    .add("admin", to: "/users/0/role")
    .remove(at: "/users/1/name")
```

Every builder method also has an overload that takes a ``JSON/Pointer`` directly instead of a string, which is non-throwing and convenient when you already hold pointers:

```swift
let role = try JSON.Pointer("/users/0/role")
let patch = JSON.Patch().add("admin", to: role)
```

A patch is also `ExpressibleByArrayLiteral`, so you can spell one out as a literal list of ``JSON/Patch/Operation`` values when you prefer to be explicit:

```swift
let patch: JSON.Patch = [
    .replace(path: try JSON.Pointer("/users/1/active"), value: true),
    .remove(path: try JSON.Pointer("/users/1/name"))
]
```

## Applying a patch

Apply a patch to a value in place with ``JSON/apply(_:)``, or compute an updated copy without mutating the original using ``JSON/applying(_:)``:

```swift
var document = json
try document.apply(patch)

let updated = try json.applying(patch)   // `json` is left unchanged
```

Application is **atomic**: the operations run in order, and if any one of them fails, an error is thrown and the value is left exactly as it was. A failure throws either a ``JSON/OperationError`` — when a location cannot be resolved — or a ``JSON/PatchError`` when a `test`, `move`, or `remove` operation violates its preconditions.

## The six operations

RFC 6902 defines six operations, each available as both a string-based and a pointer-based builder method:

- **add** (``JSON/Patch/add(_:to:)-(_,StringProtocol)``) — inserts a value. For an object it creates or replaces a key; for an array it inserts before the given index. The special index token `-` appends to the end of an array ([RFC 6902 §4.1](https://datatracker.ietf.org/doc/html/rfc6902#section-4.1)).
- **remove** (``JSON/Patch/remove(at:)-(StringProtocol)``) — deletes the value at a location, shifting later array elements down ([§4.2](https://datatracker.ietf.org/doc/html/rfc6902#section-4.2)).
- **replace** (``JSON/Patch/replace(at:with:)-(StringProtocol,_)``) — overwrites an existing value; the location must already exist ([§4.3](https://datatracker.ietf.org/doc/html/rfc6902#section-4.3)).
- **move** (``JSON/Patch/move(from:to:)-(StringProtocol,StringProtocol)``) — relocates a value; it may not move a value into one of its own descendants ([§4.4](https://datatracker.ietf.org/doc/html/rfc6902#section-4.4)).
- **copy** (``JSON/Patch/copy(from:to:)-(StringProtocol,StringProtocol)``) — duplicates a value to another location ([§4.5](https://datatracker.ietf.org/doc/html/rfc6902#section-4.5)).
- **test** (``JSON/Patch/test(for:at:)-(_,StringProtocol)``) — asserts that a location holds an expected value, aborting the whole patch if it does not ([§4.6](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6)).

A `test` operation makes an edit conditional. Because patches apply atomically, a failed precondition leaves the document untouched — useful for optimistic-concurrency style updates:

```swift
let guarded = try JSON.Patch()
    .test(for: "Alice", at: "/users/0/name")
    .replace(at: "/users/0/name", with: "Alice Smith")

// Throws `PatchError.patchTestFailed` (and changes nothing) if the
// name is no longer "Alice".
try document.apply(guarded)
```

## Computing a diff

You rarely have to write a patch by hand to describe the difference between two documents. ``JSON/difference(to:)`` computes the ``JSON/Patch`` that transforms one value into another; applying that patch to the original reproduces the target:

```swift
let patch = source.difference(to: target)
try source.applying(patch) == target   // true
```

The diff is computed structurally and deterministically — objects are compared key by key in sorted order and arrays are aligned with a longest-common-subsequence diff — so it produces a compact, stable result that contains only `add`, `remove`, and `replace` operations. The equivalent initializer ``JSON/Patch/init(from:to:)`` is available when you prefer to construct the patch directly.

## Serializing a patch

``JSON/Patch`` is `Codable` and ``JSONRepresentable``, so it round-trips through JBird's ``JSON`` model and through any `Encoder`/`Decoder`. Its serialized form is exactly the RFC 6902 array of operation objects, which is what you would send to another service or persist:

```swift
let patch = try JSON.Patch()
    .replace(at: "/users/0/name", with: "Alice Smith")

let representation = patch.jsonValue
// [
//   {
//     "op": "replace",
//     "path": "/users/0/name",
//     "value": "Alice Smith"
//   }
// ]

let restored = try JSON.Patch(json: representation)
```
