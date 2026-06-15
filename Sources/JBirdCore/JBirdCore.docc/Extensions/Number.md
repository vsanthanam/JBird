# ``JSON/Number``

## Overview

The `Number` ype represents JSON numeric values as defined in [RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259). It provides a type-safe way to work with both integer and floating-point numbers in JSON documents.

JSON numbers are represented in base 10 using decimal digits. The `Number` enum distinguishes between integer and floating-point representations, allowing you to work with numeric values while maintaining type safety and precision.

### Creating JSON Numbers

You can create JSON numbers using Swift's numeric literal syntax:

```swift
let intValue: JSON.Number = 42
let doubleValue: JSON.Number = 3.14
```

You can also initialize numbers from types conforming to ``JSONNumberConvertible``:

```swift
let fromInt = JSON.Number(42)
let fromDouble = JSON.Number(3.14)
```

Most numeric types in the Swift Standard Library already conform to `JSONNumberConvertible`.

### Working with Numeric Values

The `Number` type provides properties to safely extract values and check the number type:

```swift
let number: JSON.Number = 42

// Check if the number is an integer
if number.isInteger {
    // Extract the integer value
    let intValue = try number.convert(into: Int.self) // 42
}

// Check if the number is a double
if number.isFloatingPoint {
    // Extract the double value
    let doubleValue = try number.convert(into: Double.self) // 3.14
}
```

## Topics

### Initializers

- ``init(_:)``

### Decoding JSON number values into Swift types

- ``unboxed()``
- ``convert(into:)``

### Inspecting JSON number values

- ``isInteger``
- ``isFloatingPoint``
- ``isNonConformingFloatingPointValue``

### Literal Expression Support

- ``IntegerLiteralType``
- ``init(integerLiteral:)``
- ``FloatLiteralType``
- ``init(floatLiteral:)``
