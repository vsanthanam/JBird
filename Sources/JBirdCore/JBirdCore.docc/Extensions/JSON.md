# ``JSON``

## Overview

The `JSON` enum is a powerful, type-safe representation of JSON values in Swift. It provides a comprehensive API for creating, manipulating, and converting JSON data while maintaining type safety and offering intuitive Swift-like syntax.

A [legal JSON value](https://datatracker.ietf.org/doc/html/rfc8259) must be one of the following:

- An array: A comma separated list of other legal JSON values, enclosed with square brackets
- An object: A comma separated list of string keys and their JSON value members, enclosed with curly brackets
- A number: A numeric value represented in base 10 using decimal digits.
- A string: A character sequence enclosed with quotation marks.
- One of three legal literal values: `true`, `false`, or `null`

Because of these rules, an enumeration with associated types is an ideal way to model JSON objects in Swift:

```swift
enum JSON {
    case bool(Bool)
    case object([String: JSON])
    case array([JSON])
    case number(Number)
    case string(String)
    case null
}
```

### Creating typed JSON values in Swift

Given the following JSON:

```json
{
    "first_name": "Steve",
    "last_name": "Jobs",
    "founded_apple": true,
    "patent_count": 317
}
```

You could use the enumeration to model the same data like this:

```swift
let steve = JSON.object(
    [
        "first_name": .string("Steve"),
        "last_name": .string("Jobs"),
        "founded_apple": .bool(true),
        "patent_count": .number(.int(317))
    ]
)
```

#### Swift Literal Expressions

The enumeration is very explicit, but can lead to code that is both more cumbersome to write and more difficult to read when compared to standard JSON syntax.
To avoid these issues, you can initialize `JSON` using Swift literals:

```swift
let steve: JSON = [
    "first_name": "Steve",
    "last_name": "Jobs",
    "founded_apple": true,
    "patent_count": 317
]
```

## Topics

### Initializers

- ``init()``
- ``init(_:)-(JSONConvertible)``
- ``init(_:)-(Data)``
- ``init(jsonString:)``

### Subtypes

- ``Number``
- ``Object``
- ``Array``

### Converting JSON values into Swift types

- ``unboxed()``
- ``convert(into:)``

### Inspecting JSON values

- ``boolValue``
- ``isBool``
- ``numberValue``
- ``isNumber``
- ``stringValue``
- ``isString``
- ``arrayValue``
- ``isArray``
- ``objectValue``
- ``isObject``
- ``isNull``
- ``count``
- ``isEmpty``
- ``containsNonConformingFloatingPointValues``

### Subscripting

- ``value(forSubscript:)-(JSON.Subscript)``
- ``value(forSubscript:)-(JSONSubscriptConvertible)``
- ``value(atPath:)-(JSON.Subscript...)``
- ``value(atPath:)-(PathComponent)``
- ``containsValue(forSubscript:)-(JSON.Subscript)``
- ``containsValue(forSubscript:)-(JSONSubscriptConvertible)``
- ``setValue(_:forSubscript:)-(_,JSON.Subscript)``
- ``setValue(_:forSubscript:)-(_,JSONSubscriptConvertible)``
- ``removeValue(forSubscript:)-(JSON.Subscript)``
- ``removeValue(forSubscript:)-(JSONSubscriptConvertible)``
- ``subscript(_:)-(JSON.Subscript...)``
- ``subscript(_:)-(PathComponent)``
- ``subscript(_:as:)-(JSON.Subscript...,_)``
- ``subscript(_:as:)-(PathComponent,_)``

### Working with JSON objects and arrays

- ``keys``
- ``values``
- ``value(forKey:)``
- ``containsValue(forKey:)``
- ``setValue(_:forKey:)``
- ``removeValue(forKey:)``
- ``merge(_:uniquingKeysWith:)``
- ``merging(_:uniquingKeysWith:)``
- ``filter(_:)-((JSON.Object.Element)->Bool)``
- ``filterKeys(_:)``
- ``filterValues(_:)``
- ``allSatisfy(_:)-((JSON.Object.Element)->Bool)``
- ``map(_:)-((JSON.Object.Element)->T)``
- ``mapValues(_:)-((JSON)->T)``
- ``mapValues(_:)-((JSON)->JSON)``
- ``compactMap(_:)-((JSON.Object.Element)->ElementOfResult?)``
- ``compactMapValues(_:)``
- ``reduce(into:_:)-(_,(Result,JSON.Object.Element)->Void)``
- ``reduce(_:_:)-(_,(Result,JSON.Object.Element)->Result)``
- ``forEach(_:)-((JSON.Object.Element)->Void)``
- ``first``
- ``last``
- ``value(atIndex:)``
- ``containsValue(atIndex:)``
- ``setValue(_:atIndex:)``
- ``removeValue(atIndex:)``
- ``insert(_:at:)``
- ``swapAt(_:_:)``
- ``append(_:)``
- ``append(contentsOf:)-(JSON)``
- ``append(contentsOf:)-(Collection<JSON>)``
- ``appending(_:)``
- ``appending(contentsOf:)-(JSON)``
- ``appending(contentsOf:)-(Collection<JSON>)``
- ``filter(_:)-((JSON)->Bool)``
- ``allSatisfy(_:)-((JSON)->Bool)``
- ``map(_:)-((JSON)->T)``
- ``map(_:)-((JSON)->JSON)``
- ``compactMap(_:)-((JSON)->ElementOfResult?)``
- ``reduce(into:_:)-(_,(Result,JSON)->Void)``
- ``reduce(_:_:)-(_,(Result,JSON)->Result)``
- ``forEach(_:)-((JSON)->Void)``
- ``filterNils()``

### Deserialization

- ``init(_:)-(Data)``
- ``init(jsonString:)``
- ``value(for:options:)-(Data,_)``
- ``value(for:options:)-(String,_)``
- ``deserialize(_:options:)-(Data,_)``
- ``deserialize(_:options:)-(String,_)``
- ``DeserializationOptions``
- ``withRecursionDepthLimit(_:operation:)``
- ``withRecursionDepthLimit(_:isolation:operation:)``
- ``withInputSizeLimit(_:operation:)``
- ``withInputSizeLimit(_:isolation:operation:)``
- ``defaultRecursionDepthLimit``
- ``defaultInputSizeLimit``

### Serialization

- ``serialize()``
- ``stringify()``
- ``data(from:options:)``
- ``string(from:options:)``
- ``serialize(_:options:)``
- ``stringify(_:options:)``
- ``SerializationOptions``

### Literal Expression Support

- ``BooleanLiteralType``
- ``init(booleanLiteral:)``
- ``IntegerLiteralType``
- ``init(integerLiteral:)``
- ``FloatLiteralType``
- ``init(floatLiteral:)``
- ``StringLiteralType``
- ``init(stringLiteral:)``
- ``ArrayLiteralElement``
- ``init(arrayLiteral:)``
- ``Key``
- ``Value``
- ``init(dictionaryLiteral:)``
- ``init(nilLiteral:)``
