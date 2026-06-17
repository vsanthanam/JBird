# JSON Conversion

Move between typed JSON values and your own Swift types.

## Overview

The ``JSON`` value type is ideal for traversing and manipulating arbitrary documents, but most applications eventually need to exchange data with concrete Swift types. JBird bridges the two with a small family of protocols, so you can turn a Swift value into ``JSON`` and reconstruct it again without reaching for `JSONSerialization` or hand-written casting.

### The conversion protocols

Three protocols describe how a type relates to ``JSON``:

- ``JSONConvertible`` — a type can produce a ``JSON`` value through its `jsonValue` property.
- ``JSONInitializable`` — a type can be created from a ``JSON`` value through its throwing `init(json:)` initializer.
- ``JSONRepresentable`` — a convenience alias for types that are both ``JSONConvertible`` and ``JSONInitializable``, and can therefore round-trip in either direction.

Many standard library and Foundation types — including `Bool`, `String`, the integer and floating-point types, `Array`, `Dictionary`, `URL`, and `UUID` — already conform, so they work with the APIs below out of the box.

### Encoding a Swift value into JSON

A ``JSONConvertible`` value exposes its `jsonValue`, and ``JSON`` provides a matching initializer:

```swift
let tags = ["admin", "editor"]
let json = JSON(tags)        // .array(["admin", "editor"])
let same = tags.jsonValue    // equivalent
```

### Decoding JSON into a Swift value

To go the other way, call ``JSON/convert(into:)`` on a ``JSON`` value, or invoke a ``JSONInitializable`` type's `init(json:)` directly. Both throw a ``JSON/OperationError`` when the value cannot be represented as the requested type:

```swift
let json: JSON = ["count": 3]
let count = try json["count"].convert(into: Int.self)   // 3
let alsoCount = try Int(json: json["count"])            // 3
```

### Conforming your own types

Implement the protocol requirements to make a custom type participate in conversion:

```swift
struct User: JSONRepresentable {

    let name: String
    let age: Int

    var jsonValue: JSON {
        ["name": name, "age": age]
    }

    init(json: JSON) throws {
        name = try json["name"].stringValue
        age = try json["age"].convert(into: Int.self)
    }
}

let user = User(name: "Alice", age: 30)
let encoded = user.jsonValue
let decoded = try User(json: encoded)
```

Writing this conformance by hand is mechanical, so JBird also offers a `@JSONRepresentable` macro (in the `JBirdMacros` product) that synthesizes both requirements from a type's stored properties. See the macro's documentation for details.

### Choosing between conversion and `Codable`

The conversion protocols operate directly on the ``JSON`` model and are the right tool when you are already working with ``JSON`` values. When you need to interoperate with the standard `Encodable` and `Decodable` protocols instead, use the `JSON.Encoder` and `JSON.Decoder` types from the `JBirdCodableSupport` product, which provide a drop-in alternative to Foundation's `JSONEncoder` and `JSONDecoder`.
