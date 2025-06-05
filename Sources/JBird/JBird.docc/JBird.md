# ``JBird``

A blazing fast, type-safe library for working with JSON in Swift

## Overview

JBird provides a modern, Swift-first approach to JSON processing that eliminates the verbosity and type-casting chains common with Foundation's `JSONSerialization`. Built on a high-performance C11 parsing core, JBird offers both speed and safety through a comprehensive type system that represents JSON values as Swift enums.

The library is designed around the central `JSON` enum which safely represents all JSON value types: objects, arrays, strings, numbers, booleans, and null. This approach provides compile-time safety while maintaining runtime performance, making JSON manipulation both safer and more ergonomic.

### Features

JBird has a number of features that you might want to exclude from your project. You can include them all in your project by importing the `JBird` module, or you can import individual features such as `JBirdCore` or `JBirdBuilders` individually if you are environment with binary size or build time constraints. See <doc:Setup> for more information on how to setup JBird in your Swift projects.

#### Type safe JSON in Swift

JBird's ``/JBirdCore/JSON`` enum eliminates unsafe type casting by representing each JSON value type explicitly. The enum conforms to Swift's `ExpressibleBy*Literal` protocols, allowing natural JSON construction using Swift's literal syntax. Each JSON value type is statically known, preventing runtime type errors and providing compile-time safety.

```swift
// Create JSON values using Swift literals
let nullValue: JSON = nil

let boolValue: JSON = true

let intValue: JSON = 42

let doubleValue: JSON = 3.14159

let stringValue: JSON = "Hello, world!"

// Create complex structures with literal syntax
let arrayValue: JSON = [1, "mixed", true, nil]

let objectValue: JSON = [
    "name": "Alice",
    "age": 30,
    "isActive": true,
    "scores": [95, 87, 92],
    "metadata": nil
]

// Type-safe access with throwing properties
let name = try objectValue["name"].stringValue

let age = try objectValue["age"].intValue

let isActive = try objectValue["isActive"].boolValue
```

For more information, see the ``/JBirdCore`` API reference, and the ``/JBirdCore/JSON`` symbol reference.

##### Declarative JSON composition with result builders

Create JSON structures using Swift's result builder syntax with `ArrayBuilder` and `ObjectBuilder`. Build arrays and objects declaratively without manual dictionary or array construction. The `=>` operator provides clean key-value pair syntax for objects, while array builders support mixed-type elements naturally.

```swift
// Build JSON arrays declaratively
let jsonArray = JSON {
    "first item"
    42
    true
    ["nested": "object"]
}

// Build JSON objects with the => operator
let jsonObject = JSON {
    "name" => "John Doe"
    "age" => 30
    "isActive" => true
    "preferences" => JSON {
        "theme" => "dark"
        "notifications" => true
    }
    "tags" => JSON {
        "swift"
        "json"
        "performance"
    }
}
```

For more information, see the ``/JBirdBuilders`` API reference.

#### Encoding and decoding JSON values to and from other Swift types

JBird provides seamless conversion between `JSON` values and native Swift types through the `JSONCodable` protocol system. Built-in conformances cover all standard Swift types, while custom types can easily adopt the protocols for automatic conversion.

```swift
// Built-in type conversions
let json: JSON = [
    "name": "Alice",
    "age": 25,
    "scores": [
        95,
        87,
        92
    ]
]

let name: String = try json["name"].decode(into: String.self)

let age: Int = try json["age"].decode() // You can omit the type argument if it can be inferred from the call site.

let scores = Array<UInt64>(json: try json["scores"]) // You can also call the initializer of the decodable type directly.
```

You can also convert JSON values into custom Swift types that conform to the `JSONCodable` protocol.
This allows for automatic encoding and decoding of complex data structures without manual serialization logic.

```swift
struct User: JSONCodable {

    let name: String
    let age: Int
    let scores: [Int]

    // MARK: - JSONEnodable
    
    func encodeToJSON() throws -> JSON {
        return [
            "name": JSON(name),
            "age": JSON(age),
            "scores": JSON(scores)
        ]
    }

    // MARK: - JSONDecodable
    
    init(json: JSON) throws {
        self.name = try json["name"].decode()
        self.age = try json["age"].decode()
        self.scores = try json["scores"].decode()
    }

}

let user = try json.decode(into: User.self)
let backToJSON = JSON(user)
```

For more information see <doc:/JBirdCore/EncodeDecode>

##### Using macros to easily implement `JSONCodable` conformance

The `@JSONCodable` macro automatically generates encoding and decoding implementations for Swift types. Use `@JSONKey` to customize property names, `@OmitIfNil` to exclude nil values during encoding, and support for snake_case conversion. The macro system eliminates boilerplate while providing full control over the JSON representation.

```swift
@JSONCodable
struct User {

    let id: String

    @JSONKey("full_name") let name: String

    @JSONKey(.snakeCase) let firstName: String

    @OmitIfNil var nickname: String?

    let isActive: Bool

}

// Automatic encoding/decoding generated by macro
let user = User(id: "123", name: "John Doe", firstName: "John", nickname: nil, isActive: true)
let json = JSON(user) // you can also call `encodeToJSON()` to get the same result.
let decoded = try User(json: json) // Could also be written as `json.decode(into: User.self)`, or even just `json.decode()` if the type can be inferred.
```

For more information, see the ``/JBirdMacros`` API reference.

## Topics

### Articles

- <doc:WhyJBird>
- <doc:Setup>

### API Reference

- ``/JBirdCore``
- ``/JBirdBuilders``
- ``/JBirdMacros``
