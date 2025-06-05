# ``JBird``

A blazing fast, type-safe library for working with JSON in Swift

## Overview

JBird provides a modern, Swift-first approach to JSON processing that eliminates the verbosity and type-casting chains common with Foundation's `JSONSerialization`. Built on a high-performance C11 parsing core, JBird offers both speed and safety through a comprehensive type system that represents JSON values as Swift enums.

The library is designed around the central `JSON` enum which safely represents all JSON value types: objects, arrays, strings, numbers, booleans, and null. This approach provides compile-time safety while maintaining runtime performance, making JSON manipulation both safer and more ergonomic.

### Features

JBird has a number of features that you might want to exclude from your project. You can include them all in your project by importing the `JBird` module, or you can import individual features such as `JBirdCore` or `JBirdBuilders` individually if you are environment with binary size or build time constraints. See <doc:Setup> for more information on how to setup JBird in your Swift projects.

#### Type safe JSON in Swift

JBird's ``/JBirdCore/JSON`` enum eliminates unsafe type casting by representing each JSON value type explicitly. The enum conforms to Swift's `ExpressibleBy*Literal` protocols, allowing natural JSON construction using Swift's literal syntax. Each JSON value type is statically known, preventing runtime type errors and providing compile-time safety.

For more information, see the ``/JBirdCore`` API reference, and the ``/JBirdCore/JSON`` symbol reference.

##### Declarative JSON composition with result builders

Create JSON structures using Swift's result builder syntax with `ArrayBuilder` and `ObjectBuilder`. Build arrays and objects declaratively without manual dictionary or array construction. The `=>` operator provides clean key-value pair syntax for objects, while array builders support mixed-type elements naturally.

For more information, see the ``/JBirdBuilders`` API reference.

#### Encoding and decoding JSON values to and from other Swift types

JBird provides seamless conversion between `JSON` values and native Swift types through the `JSONCodable` protocol system. Built-in conformances cover all standard Swift types, while custom types can easily adopt the protocols for automatic conversion.

For more information, see <doc:/JBirdCore/EncodeDecode>

##### Using macros to easily implement `JSONCodable` conformance

The `@JSONCodable` macro automatically generates encoding and decoding implementations for Swift types. Use `@JSONKey` to customize property names, `@OmitIfNil` to exclude nil values during encoding, and support for snake_case conversion. The macro system eliminates boilerplate while providing full control over the JSON representation.

For more information, see the ``/JBirdMacros`` API reference.

## Topics

### Articles

- <doc:WhyJBird>
- <doc:Setup>

### API Reference

- ``/JBirdCore``
- ``/JBirdBuilders``
- ``/JBirdMacros``
