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
    case literal(Literal)
    case object([String: JSON])
    case array([JSON])
    case number(Number)
    case string(String)
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
        "founded_apple": .literal(.true),
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

- ``init(_:)-(JSONEncodable)``

### Subtypes

- ``Literal``
- ``Number``

### Decoding JSON values into Swift types

- ``literalValue``
- ``boolValue``
- ``numberValue``
- ``intValue``
- ``doubleValue``
- ``stringValue``
- ``arrayValue``
- ``objectValue``
- ``untyped``
- ``decode(into:)``

### Inspecting JSON values

- ``count``
- ``isEmpty``
- ``isBool``
- ``isNull``
- ``isLiteral``
- ``isObject``
- ``isArray``
- ``isNumber``
- ``isInt``
- ``isDouble``
- ``isString``

### Subscripting

- ``value(forSubscript:)-(JSON.Subscript)``
- ``value(forSubscript:)-(JSONSubscriptConvertible)``
- ``value(atPath:)-([JSON.Subscript])``
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

### Working with JSON objects

- ``keys``
- ``values``
- ``value(forKey:)``
- ``containsValue(forKey:)``
- ``setValue(_:forKey:)``
- ``removeValue(forKey:)``
- ``merge(_:uniquingKeysWith:)``
- ``merging(_:uniquingKeysWith:)``
- ``filter(_:)-(([String:JSON].Element)->Bool)``
- ``allSatisfy(_:)-(([String:JSON].Element)->Bool)``
- ``map(_:)-(([String:JSON].Element)->T)``
- ``mapValues(_:)``
- ``compactMap(_:)-(([String:JSON].Element)->ElementOfResult?)``
- ``compactMapValues(_:)``
- ``reduce(into:_:)-(_,(Result,[String:JSON].Element)->Void)``
- ``reduce(_:_:)-(_,(Result,[String:JSON].Element)->Result)``
- ``forEach(_:)-(([String:JSON].Element)->Void)``

### Working with JSON arrays

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
- ``compactMap(_:)-((JSON)->ElementOfResult?)``
- ``reduce(into:_:)-(_,(Result,JSON)->Void)``
- ``reduce(_:_:)-(_,(Result,JSON)->Result)``
- ``forEach(_:)-((JSON)->Void)``

### Deserialization

- ``init(_:)-(Data)``
- ``init(jsonString:)``
- ``value(for:options:)-(Data,_)``
- ``value(for:options:)-(String,_)``
- ``deserialize(_:options:)-(Data,_)``
- ``deserialize(_:options:)-(String,_)``
- ``DeserializationOptions``
- ``withRecursionDepthLimit(_:operation:)-8riei``
- ``withRecursionDepthLimit(_:operation:)-9bvap``
- ``withInputSizeLimit(_:operation:)-2sm2h``
- ``withInputSizeLimit(_:operation:)-5f6en``
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
