# ``JSON/Literal``

## Overview

The `Literal` enum represents one of the three JSON literal values defined in [RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259): `true`, `false`, or `null`. It provides a type-safe way to work with these fundamental JSON values in Swift.

JSON literals are used to represent boolean values and null values in JSON documents. The `Literal` enum makes these values explicit and type-safe, preventing runtime type errors when working with JSON data.

### Creating JSON Literals

You can create JSON literals using Swift's literal syntax:

```swift
let trueValue: JSON.Literal = true
let falseValue: JSON.Literal = false
let nullValue: JSON.Literal = nil
```

Or explicitly using the enum cases:

```swift
let trueValue = JSON.Literal.true
let falseValue = JSON.Literal.false
let nullValue = JSON.Literal.null
```

### Working with Boolean Values

The `Literal` type provides properties to safely extract boolean values and check the literal type:

```swift
let literal: JSON.Literal = true

// Check if the literal is a boolean
if literal.isBool {
    // Extract the boolean value
    let boolValue = try literal.boolValue // true
}

// Check if the literal is null
if literal.isNull {
    print("The value is null")
}
```

## Topics

### Cases

- ``true``
- ``false``
- ``null``

### Initializers

- ``init(_:)``

### Decoding JSON literal values into Swift types

- ``unboxed()``
- ``convert(into:)``

### Inspecting JOSN literal values

- ``boolValue``
- ``isBool``
- ``isNull``

### Literal Expression Support

- ``BooleanLiteralType``
- ``init(booleanLiteral:)``
- ``init(nilLiteral:)``
