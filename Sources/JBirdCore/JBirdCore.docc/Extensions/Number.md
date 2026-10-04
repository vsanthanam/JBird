# ``JSON/Number``

## Overview

The `Number` ype represents JSON numeric values as defined in [RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259). It provides a type-safe way to work with both integer and floating-point numbers in JSON documents.

JSON numbers are represented in base 10 using decimal digits. The `Number` enum distinguishes between integer and floating-point representations, allowing you to work with numeric values while maintaining type safety and precision.

### Creating JSON Numbers

You can create JSON numbers using Swift's numeric literal syntax:

@Snippet(path: "JBird/Snippets/Number/WorkingWithNumbers", slice: "literals")

You can also initialize numbers from types conforming to ``JSONNumberConvertible``:

@Snippet(path: "JBird/Snippets/Number/WorkingWithNumbers", slice: "convertible")

Most numeric types in the Swift Standard Library already conform to `JSONNumberConvertible`.

### Working with Numeric Values

The `Number` type provides properties to safely extract values and check the number type:

@Snippet(path: "JBird/Snippets/Number/WorkingWithNumbers", slice: "inspecting")

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
