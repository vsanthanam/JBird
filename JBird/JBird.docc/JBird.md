# ``JBird``

A blazing fast, type-safe library for working with JSON in Swift

## Overview

JBird brings type safety to unstructured JSON with an elegant, ergonomic API that dramatically improves developer experience compared to Foundation's JSONSerialization:

The library contains the following core components:
- A type-safe representation of JSON values using the ``JSON`` enum
- APIs for introspecting and mutating typed JSON values
- A powerful subscript API for accessing nested JSON values
- APIs for converting between typed ``JSON`` models and other Swift types, including your own Swift types with ``JSONCodable``
- Swift Macros to automatically generate ``JSONCodable`` conformance for your types (this requires a separate module, see <doc:Macros> for more information.)
- APIs for serializing and deserializing unstructured JSON data such as Swift strings or UTF-8 encoded byte buffers to and from ``JSON`` values

## Topics

### Get Started

- <doc:WhyJBird>
- <doc:Setup>

### Models

- ``JSON``
- ``JSON/Literal``
- ``JSON/Number``

### Subscripting

- ``JSON/Subscript``
- ``JSONSubscriptConvertible``

### Encoding & Decoding

- ``JSONEncodable``
- ``JSONDecodable``
- ``JSONCodable``
- ``JSONLiteralConvertible``
- ``JSONNumberConvertible``

### Result Builders

- ``JSON/ArrayBuilder``
- ``JSON/ObjectBuilder``

### Errors

- ``JSONError``
- ``JSONSerializationError``
- ``JSONDeserializationError``
