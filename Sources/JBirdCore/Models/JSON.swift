// JBird
// JSON.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation

/// A typed API for working with JSON values in Swift.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public enum JSON: Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByStringInterpolation, ExpressibleByArrayLiteral, ExpressibleByDictionaryLiteral, ExpressibleByNilLiteral, CustomStringConvertible, Codable {

    // MARK: - Initializers

    /// Create an empty JSON object
    public init() {
        self = .object([:])
    }

    /// Create a `JSON` value from a ``JSONConvertible`` type
    ///
    /// - Parameter convertible: An instance of the type to convert to JSON
    public init(
        _ convertible: some JSONConvertible
    ) {
        self = convertible.jsonValue
    }

    /// Create a `JSON` value by deserializing a byte buffer containing UTF-8 encoded JSON string
    ///
    /// For more advanced customization of the deserialization process, use the ``value(for:options:)-(Data,_)`` method, which lets you pass in your own ``DeserializationOptions``.
    /// For asynchronous deserialization with parallelization, use the ``deserialize(_:options:)-(Data,_)`` method.
    ///
    /// - Parameter data: The byte buffer to deserialize
    public init(
        _ data: Data
    ) throws {
        self = try JSON.value(for: data)
    }

    /// Create a `JSON` value by deserializing a Swift string
    ///
    /// For more advanced customization of the deserialization process, use the ``value(for:options:)-(String,_)`` method, which lets you pass in your own ``DeserializationOptions``.
    /// For asynchronous deserialization with parallelization, use the ``deserialize(_:options:)-(String,_)`` method.
    /// - Parameter jsonString: The string to deserialize
    public init(
        jsonString: String
    ) throws {
        self = try JSON.value(for: jsonString)
    }

    // MARK: - API

    /// A null JSON value
    case null

    /// A boolean JSON value
    case bool(Bool)

    /// A JSON object
    ///
    /// See ``JSON/Object`` for more information
    case object(Object)

    /// A JSON array
    ///
    /// See ``JSON/Array`` for more information
    case array(Array)

    /// A JSON number value
    ///
    /// See ``JSON/Number`` for more information
    case number(Number)

    /// A JSON string
    case string(String)

    /// A JSON value representing zero (`0`)
    ///
    /// This is sugar for `JSON.number(.zero)`
    public static let zero: JSON = 0

    /// The number of objects in the JSON array or JSON dictionary.
    ///
    /// This property returns an integer describing the number of values in a JSON array or the number of key-value pairs in a JSON object
    /// It throws an error if the JSON value is not an array or an object.
    ///
    /// ```swift
    /// let object: JSON = ["foo": 1, "bar": 2]
    /// let array: JSON = ["foo", "bar", "baz"]
    /// let boolValue: JSON = false
    ///
    /// let first = try object.count // returns 2
    /// let second = try array.count // returns 3
    /// let result = try boolValue.count // throws an error
    /// ```
    public var count: Int {
        get throws {
            switch self {
            case let .object(object):
                object.count
            case let .array(array):
                array.count
            case .bool, .null, .number, .string:
                throw OperationError.illegalCollectionConversion
            }
        }
    }

    /// Whether or not the JSON array or JSON object is empty.
    ///
    /// This property returns `true` if the JSON is an empty array or an empty object.
    /// It returns `false` if the JSON is an array or object that contains other JSON values
    /// It throws an error if the JSON value is not an array or object
    ///
    /// ```swift
    /// let emptyArray: JSON = []
    /// let array: JSON = [1, 2, "three"]
    /// let emptyObject: JSON = [:]
    /// let object: JSON = ["Foo": "Bar"]
    /// let nonCollection: JSON = true
    ///
    /// let first = try emptyArray.isEmpty // true
    /// let second = try array.isEmpty // false
    /// let third = try emptyObject.isEmpty // true
    /// let fourth = try object.isEmpty // false
    /// let fifth = try nonCollection.isEmpty // throws
    /// ```
    ///
    /// - Throws: An error, if the JSON value is not a JSON array or a JSON object
    public var isEmpty: Bool {
        get throws {
            try count == 0
        }
    }

    /// The JSON value as a boolean.
    ///
    /// This property will throw an error if the JSON value is anything other than a JSON bool
    ///
    /// - Throws: An error, if the JSON value is not a bool
    public var boolValue: Bool {
        get throws {
            switch self {
            case let .bool(bool):
                return bool
            case .null, .array, .number, .object, .string:
                throw OperationError.illegalBoolConversion
            }
        }
    }

    /// The JSON value as an object.
    ///
    /// This property will throw an error if the JSON value is anything other than a JSON object
    ///
    /// - Throws: An error, if the JSON value is not an object
    public var objectValue: Object {
        get throws {
            switch self {
            case let .object(object):
                object
            case .bool, .null, .array, .number, .string:
                throw OperationError.illegalObjectConversion
            }
        }
    }

    /// The JSON value as an array.
    ///
    /// This property will throw an error if the JSON value is anything other than a JSON array
    ///
    /// - Throws: An error, if the JSON value is not an array
    public var arrayValue: Array {
        get throws {
            switch self {
            case let .array(array):
                array
            case .bool, .null, .object, .number, .string:
                throw OperationError.illegalArrayConversion
            }
        }
    }

    /// The JSON value as a number.
    ///
    /// This property will throw an error if the JSON value is anything other than a ``JSON/Number``
    ///
    /// - Throws: An error, if the JSON value is not a number
    public var numberValue: Number {
        get throws {
            switch self {
            case let .number(number):
                number
            case .bool, .null, .object, .array, .string:
                throw OperationError.illegalNumberConversion
            }
        }
    }

    /// The JSON value as a Swift string.
    ///
    /// This property will throw an error if the JSON value is anything other than a JSON string.
    public var stringValue: String {
        get throws {
            switch self {
            case let .string(string):
                string
            case .bool, .null, .object, .array, .number:
                throw OperationError.illegalStringConversion
            }
        }
    }

    /// Whether or not the JSON value is a Boolean.
    ///
    /// This property returns `true` if the JSON value is a boolean. Otherwise, it returns `false`.
    public var isBool: Bool {
        switch self {
        case .bool:
            true
        case .null, .object, .array, .number, .string:
            false
        }
    }

    /// Whether or not the JSON value is a null value.
    ///
    /// This property returns `true` if the JSON value is `null`. Otherwise, it returns `false`.
    public var isNull: Bool {
        switch self {
        case .null:
            true
        case .bool, .object, .array, .number, .string:
            false
        }
    }

    /// Whether or not the JSON value is an object
    ///
    /// This property returns `true` if the JSON value is an object. Otherwise, it returns `false.`
    public var isObject: Bool {
        switch self {
        case .object:
            true
        case .bool, .null, .array, .number, .string:
            false
        }
    }

    /// Whether or not the JSON value is an array
    ///
    /// This property returns `true` if the JSON value is an array. Otherwise, it returns `false`.
    public var isArray: Bool {
        switch self {
        case .array:
            true
        case .bool, .null, .object, .number, .string:
            false
        }
    }

    /// Whether or not the JSON value is a number
    ///
    /// This property returns `true` if the JSON value is a number. Otherwise, it returns `false`.
    public var isNumber: Bool {
        switch self {
        case .number:
            true
        case .bool, .null, .object, .array, .string:
            false
        }
    }

    /// Whether or not the JSON value is a string
    ///
    /// This property returns `true` if the JSON value is a string. Otherwise, it returns `false`.
    public var isString: Bool {
        switch self {
        case .string:
            true
        case .bool, .null, .object, .array, .number:
            false
        }
    }

    /// Whether or not the JSON value contains any non-conforming floating point values, such as `NaN`
    ///
    /// JSON values cannot legally contain non-conforming floating point values.
    /// When serialized these values need to be removed or altered.
    ///
    /// For more information, see ``JSON/SerializationOptions/allowNonConformingFloatingPointValues``.
    public var containsNonConformingFloatingPointValues: Bool {
        switch self {
        case .string, .bool, .null:
            false
        case let .number(number):
            number.isNonConformingFloatingPointValue
        case let .array(array):
            array.contains(where: \.containsNonConformingFloatingPointValues)
        case let .object(object):
            object.values.contains(where: \.containsNonConformingFloatingPointValues)
        }
    }

    /// The untyped representation of the JSON value
    /// - Returns: An `AnyHashable` containing a `String`, `Int`, `Double`, `Bool`, `[AnyHashable]`, `[String: AnyHashable]`, or `NSNull` representing the JSON value.
    public func unboxed() -> AnyHashable {
        switch self {
        case let .bool(bool):
            bool
        case .null:
            NSNull()
        case let .string(string):
            string
        case let .number(number):
            number.unboxed()
        case let .array(array):
            array
                .map { json in
                    json.unboxed()
                }
        case let .object(object):
            object
                .mapValues { json in
                    json.unboxed()
                }
        }
    }

    /// Convert the JSON value into a ``JSONInitializable`` type
    /// - Parameter type: The type to convert into
    /// - Returns: The converted value
    /// - Throws: An error, if the JSON value cannot be converted into the provided type
    public func convert<T>(
        into type: T.Type = T.self
    ) throws -> T where T: JSONInitializable {
        try T(json: self)
    }

    /// Retrieve a value from the JSON object using a specified key
    /// - Parameter key: A string key to use for lookup
    /// - Returns: The JSON value at the specified key
    /// - Throws: An error, if the JSON object does not contain a value for the provided key, or if the JSON value is not an object
    public func value(
        forKey key: String
    ) throws -> JSON {
        try value(forSubscript: .key(key))
    }

    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    /// - Throws: An error, if the JSON object does not contain a value for the provided index, or if the JSON value is not an array
    public func value(
        atIndex index: Int
    ) throws -> JSON {
        try value(forSubscript: .index(index))
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    /// - Throws: An error if the JSON value does not contain a value for the provided subscript, or if the JSON value is incompatible with the provided subscript (e.g. the subscript is a  ``JSON/Subscript/key(_:)`` but the JSON value is an array)
    public func value(
        forSubscript subscript: Subscript
    ) throws -> JSON {
        switch `subscript` {
        case let .key(key):
            guard case let .object(object) = self else {
                throw OperationError.invalidSubscript(`subscript`)
            }
            guard object.keys.contains(key) else {
                throw OperationError.keyNotFound(key)
            }
            return object[key].unsafelyUnwrapped
        case let .index(index):
            guard case let .array(array) = self else {
                throw OperationError.invalidSubscript(`subscript`)
            }
            guard case array.indices = index else {
                throw OperationError.indexOutOfBounds(index)
            }
            return array[index]
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    /// - Throws: An error if the JSON value does not contain a value for the provided subscript, or if the JSON value is incompatible with the provided subscript (e.g. the subscript is a  `String` but the JSON value is an array)
    public func value(
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws -> JSON {
        let `subscript` = Subscript(`subscript`)
        return try value(forSubscript: `subscript`)
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
    /// - Throws: An error, if the JSON value does not contain a value at the provided path, or of the JSON value is incompatible with the provided JSON subscript.
    @available(*, deprecated, renamed: "value(atPath:)", message: "Use pointer based access instead. This method will be removed in a future release.")
    @_disfavoredOverload
    public func value(
        atPath path: [Subscript]
    ) throws -> JSON {
        var json = self
        try path.forEach { component in
            json = try json.value(forSubscript: component)
        }
        return json
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
    /// - Throws: An error, if the JSON value does not contain a value at the provided path, or of the JSON value is incompatible with the provided JSON subscript.
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public func value(
        atPath path: Subscript...
    ) throws -> JSON {
        var json = self
        try path.forEach { component in
            json = try json.value(forSubscript: component)
        }
        return json
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
    /// - Throws: An error, if the JSON value does not contain a value at the provided path, or if the JSON value is incompatible with the provided JSON subscript.
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public func value<each PathComponent>(
        atPath path: repeat each PathComponent
    ) throws -> JSON where repeat each PathComponent: JSONSubscriptConvertible {
        var json = self
        for component in repeat each path {
            let `subscript` = Subscript(component)
            json = try json.value(forSubscript: `subscript`)
        }
        return json
    }

    /// Check whether a JSON object contains a value for the provided key
    /// - Parameter key: The key
    /// - Returns: `true` if the object contains the provided key, `false` if the object does not contain the provided key, or if the JSON value is not an object
    public func containsValue(
        forKey key: String
    ) -> Bool {
        let `subscript` = Subscript.key(key)
        return containsValue(forSubscript: `subscript`)
    }

    /// Check whether a JSON array contains a value for the provided index
    /// - Parameter index: The index
    /// - Returns: `true` if the array contains the provided index, `false` if the object does not contain the provided index, or if the JSON value is not an array
    public func containsValue(
        atIndex index: Int
    ) -> Bool {
        let `subscript` = Subscript.index(index)
        return containsValue(forSubscript: `subscript`)
    }

    /// Check whether a JSON array contains a value for the subscript
    /// - Parameter subscript: The subscript
    /// - Returns: `true` if the value contains the provided subscript, `false` if the object does not contain the provided index, or if the provided subscript is invalid
    public func containsValue(
        forSubscript subscript: Subscript
    ) -> Bool {
        switch (self, `subscript`) {
        case let (.array(array), .index(index)):
            array.indices.contains(index)
        case let (.object(object), .key(key)):
            object.keys.contains(key)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.number, _),
             (.bool, _),
             (.null, _):
            false
        }
    }

    /// Check whether a JSON array contains a value for the subscript
    /// - Parameter subscript: The subscript
    /// - Returns: `true` if the value contains the provided subscript, `false` if the object does not contain the provided index, or if the provided subscript is invalid
    public func containsValue(
        forSubscript subscript: some JSONSubscriptConvertible
    ) -> Bool {
        let `subscript` = Subscript(`subscript`)
        return containsValue(forSubscript: `subscript`)
    }

    /// Set a value in the JSON object using a specified key
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - key: A string key to use for lookup
    /// - Throws: An error, if the JSON value is not an object.
    public mutating func setValue(
        _ value: JSON,
        forKey key: String
    ) throws {
        try setValue(value, forSubscript: .key(key))
    }

    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    /// - Throws: An error, if the JSON object is not an array.
    public mutating func setValue(
        _ value: JSON,
        atIndex index: Int
    ) throws {
        try setValue(value, forSubscript: .index(index))
    }

    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
    /// - Throws: An error, if the JSON value is incompatible with the provided subscript (e.g. the subscript is a  ``JSON/Subscript/key(_:)`` but the JSON value is an array)
    public mutating func setValue(
        _ value: JSON,
        forSubscript subscript: Subscript
    ) throws {
        switch (self, `subscript`) {
        case (var .array(array), let .index(index)):
            guard case array.indices = index else {
                throw OperationError.indexOutOfBounds(index)
            }
            array[index] = value
            self = .array(array)
        case (var .object(object), let .key(key)):
            object[key] = value
            self = .object(object)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.number, _),
             (.bool, _),
             (.null, _):
            throw OperationError.invalidSubscript(`subscript`)
        }
    }

    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
    /// - Throws: An error, if the JSON value is incompatible with the provided subscript (e.g. the subscript is a  `String` but the JSON value is an array)
    public mutating func setValue(
        _ value: JSON,
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws {
        let `subscript` = Subscript(`subscript`)
        try setValue(
            value,
            forSubscript: `subscript`
        )
    }

    /// The first value in a JSON array, or `nil` if the array is empty
    /// - Throws: An error, if the JSON value is not an array.
    public var first: JSON? {
        get throws {
            try arrayValue.first
        }
    }

    /// The last value in a JSON array, or `nil` if the array is empty
    /// - Throws: An error, if the JSON value is not an array.
    public var last: JSON? {
        get throws {
            try arrayValue.last
        }
    }

    /// Create a JSON array by adding a JSON value to this array
    /// - Parameter json: The JSON value to add to this array
    /// - Returns: The new array
    /// - Throws: An error, if the JSON value is not an array.
    public func appending(
        _ json: JSON
    ) throws -> JSON {
        try .array(arrayValue + [json])
    }

    /// Create a JSON array by appending the contents of another JSON array
    /// - Parameter jsonArray: The JSON array to add to this array
    /// - Returns: The new array
    /// - Throws: An error, if the JSON value is not an array, or if the provided value is not a JSON array.
    public func appending(
        contentsOf jsonArray: JSON
    ) throws -> JSON {
        try .array(arrayValue + jsonArray.arrayValue)
    }

    /// Create a JSON array by appending the contents of a collection of JSON values
    /// - Parameter collection: The collection of JSON values to add to this array
    /// - Returns: The new array
    /// - Throws: An error, if the JSON value is not an array.
    public func appending(
        contentsOf collection: some Collection<JSON>
    ) throws -> JSON {
        try .array(arrayValue + Array(collection))
    }

    /// Append a JSON value to this JSON array
    /// - Parameter json: The JSON value to append
    /// - Throws: An error, if the JSON value is not an array.
    public mutating func append(
        _ json: JSON
    ) throws {
        self = try appending(json)
    }

    /// Append the contents of another JSON array to this JSON array
    /// - Parameter jsonArray: The JSON array to append
    /// - Throws: An error, if the JSON value is not an array, or if the provided value is not a JSON array
    public mutating func append(
        contentsOf jsonArray: JSON
    ) throws {
        self = try appending(contentsOf: jsonArray)
    }

    /// Append the contents of a collection of JSON values to this JSON array
    /// - Parameter collection: The collection of JSON values to append
    /// - Throws: An error, if the JSON value is not an array.
    public mutating func append(
        contentsOf collection: some Collection<JSON>
    ) throws {
        self = try appending(contentsOf: collection)
    }

    /// Returns a Boolean value indicating whether every element of a JSON array satisfies a given predicate.
    ///
    /// For example:
    ///
    /// ```swift
    /// let json: JSON = ["foo", "bar", "baz"]
    /// let other: JSON = [24, 12, nil]
    ///
    /// let first = try json.allSatisfy { value in
    ///     return value.isString
    /// }
    ///
    /// let second = try other.allSatisfy { value in
    ///     return value.isNumber
    /// }
    ///
    /// #expect(first == true)
    /// #expect(second == false)
    /// ```
    ///
    /// - Parameter predicate: A closure that takes an element of the JSON array as its argument and returns a Boolean value that indicates whether the passed element satisfies a condition.
    /// - Returns: `true` if the sequence contains only elements that satisfy `predicate`; otherwise, `false`.
    /// - Throws: An error, if the JSON value is not an array.
    public func allSatisfy(
        _ predicate: (JSON) throws -> Bool
    ) throws -> Bool {
        try arrayValue.allSatisfy(predicate)
    }

    /// Returns a Boolean value indicating whether every key-value pair of a JSON object satisfies a given predicate.
    ///
    /// For example:
    ///
    /// ```swift
    /// let json: JSON = ["foo": true, "bar": false, "qux": true]
    /// let other: JSON = ["foo": 12, "bar": 24, "qux": nil]
    ///
    /// let first = try json.allSatisfy { key, value in
    ///     return key.count == 3 && value.isBool
    /// }
    ///
    /// let second = try other.allSatisfy { key, value in
    ///     return key.count == 3 && value.isNumber
    /// }
    ///
    /// #expect(first == true)
    /// #expect(second == false)
    /// ```
    ///
    /// - Parameter predicate: A closure that takes a key-value pair of the JSON object as its argument and returns a Boolean value that indicates whether the passed element satisfies a condition.
    /// - Returns: `true` if the JSON object contains only key-value pairs that satisfy `predicate`; otherwise, `false`.
    /// - Throws: An error, if the JSON value is not an object.
    public func allSatisfy(
        _ predicate: (Object.Element) throws -> Bool
    ) throws -> Bool {
        try objectValue.allSatisfy(predicate)
    }

    /// The keys in a JSON object.
    /// - Throws: An error, if the JSON value is not an object.
    public var keys: Set<String> {
        get throws {
            try .init(objectValue.keys)
        }
    }

    /// The values in a JSON object.
    /// - Throws: An error, if the JSON value is not an object.
    public var values: [JSON] {
        get throws {
            try objectValue.values.map(\.self)
        }
    }

    /// Returns an array containing the results of mapping the given closure over this JSON array's values.
    /// - Parameter transform: A mapping closure. `transform` accepts a JSON value as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: An array containing the transformed elements of this JSON array.
    /// - Throws: An error, if the JSON value is not an array, or if the `transform` closure throws an error.
    public func map<T>(
        _ transform: (JSON) throws -> T
    ) throws -> [T] {
        try arrayValue.map(transform)
    }

    /// Returns a JSON array containing the result of mapping the given closure over the JSON array's values.
    /// - Parameter transform: A mapping closure. `transform` accepts a JSON value as its parameter and returns a transformed value of the same type.
    /// - Returns: A JSON array containing the transformed elements of this JSON array.
    /// - Throws: An error, if the JSON value is not an array, or if the `transform` closure throws an error.
    @_disfavoredOverload
    public func map(
        _ transform: (JSON) throws -> JSON
    ) throws -> JSON {
        let values = try arrayValue.map(transform)
        return .init(values)
    }

    /// Returns an array containing the results of mapping the given closure over this JSON object's key-value pairs.
    /// - Parameter transform: A mapping closure. `transform` accepts a JSON key-value pair as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: An array containing the transformed key-value pairs of this JSON object.
    /// - Throws: An error, if the JSON value is not an object, or if the `transform` closure throws an error.
    public func map<T>(
        _ transform: (Object.Element) throws -> T
    ) throws -> [T] {
        try objectValue.map(transform)
    }

    /// Returns a new dictionary containing the keys of this JSON object with the values transformed by the given closure.
    /// - Parameter transform: A closure that transforms a value. `transform` accepts each JSON value as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: A dictionary containing the keys and transformed JSON values of this JSON object.
    /// - Throws: An error, if the JSON value is not an object, or if the `transform` closure throws an error.
    public func mapValues<T>(
        _ transform: (JSON) throws -> T
    ) throws -> [String: T] {
        try objectValue.mapValues(transform)
    }

    /// Returns a JSON object containing the keys of this JSON object with the values transformed by the given closure
    /// - Parameter transform: A closure that transforms a value. `transform` accepts each JSON value as its parameter and returns a transformed value of the same type.
    /// - Returns: A JSON object containing the keys and the transformed JSON values of this JSON object.
    /// - Throws: An error, if the JSON value is not an object, or if the `transform` closure throws an error.
    @_disfavoredOverload
    public func mapValues(
        _ transform: (JSON) throws -> JSON
    ) throws -> JSON {
        let object = try objectValue
            .map { key, value in
                try (key, transform(value))
            }
            .reduce(into: [String: JSON]()) { prev, pair in
                let (key, value) = pair
                prev[key] = value
            }
        return .init(object)
    }

    /// Returns an array containing the non-`nil` results of calling the given transformation with each element of this JSON array.
    /// - Parameter transform: A closure that accepts an element of this JSON array as its argument and returns an optional value.
    /// - Returns: An array of the non-`nil` results of calling `transform` with each element of the JSON array.
    /// - Throws: An error, if the JSON value is not an array, or if the `transform` closure throws an error.
    public func compactMap<ElementOfResult>(
        _ transform: (JSON) throws -> ElementOfResult?
    ) throws -> [ElementOfResult] {
        try arrayValue.compactMap(transform)
    }

    /// Returns an array containing the non-`nil` results of calling the given transformation with each key-value pair of this JSON object.
    /// - Parameter transform: A closure that accepts a key-value pair of this JSON object as its argument and returns an optional value.
    /// - Returns: An array of the non-`nil` results of calling `transform` with each key-value pair of the JSON object.
    /// - Throws: An error, if the JSON value is not an object, or if the `transform` closure throws an error.
    public func compactMap<ElementOfResult>(
        _ transform: (Object.Element) throws -> ElementOfResult?
    ) throws -> [ElementOfResult] {
        try objectValue.compactMap(transform)
    }

    /// Returns a new dictionary containing only the key-value pairs that have non-`nil` values as the result of transformation by the given closure.
    /// - Parameter transform: A closure that transforms a value. `transform` accepts each value of the JSON object as its parameter and returns an optional transformed value of the same or of a different type.
    /// - Returns: A dictionary containing the keys and non-`nil` transformed values of this dictionary.
    /// - Throws: An error, if the JSON value is not an object, or if the `transform` closure throws an error.
    public func compactMapValues<ElementOfResult>(
        _ transform: (JSON) throws -> ElementOfResult?
    ) throws -> [String: ElementOfResult] {
        try objectValue.compactMapValues(transform)
    }

    /// Returns the result of combining the elements of the JSON array using the given closure.
    /// - Parameters:
    ///   - initialResult: The value to use as the initial accumulating value. `initialResult` is passed to `nextPartialResult` the first time the closure is executed.
    ///   - nextPartialResult: A closure that combines an accumulating value and an element of the sequence into a new accumulating value, to be used in the next call of the `nextPartialResult` closure or returned to the caller.
    /// - Returns: The final accumulated value. If the sequence has no elements, the result is `initialResult`.
    /// - Throws: An error, if the JSON value is not an array, or of the `nextPartialResult` closure throws an error.
    public func reduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, JSON) throws -> Result
    ) throws -> Result {
        try arrayValue.reduce(initialResult, nextPartialResult)
    }

    /// Returns the result of combining the elements of the JSON array using the given closure.
    /// - Parameters:
    ///   - initialResult: The value to use as the initial accumulating value.
    ///   - updateAccumulatingResult: A closure that updates the accumulating value with an element of the sequence.
    /// - Returns: The final accumulated value. If the sequence has no elements, the result is `initialResult`.
    /// - Throws: An error, if the JSON value is not an array, or of the `nextPartialResult` closure throws an error.
    public func reduce<Result>(
        into initialResult: Result,
        _ updateAccumulatingResult: (inout Result, JSON) throws -> Void
    ) throws -> Result {
        try arrayValue.reduce(into: initialResult, updateAccumulatingResult)
    }

    /// Returns the result of combining the elements of the JSON object using the given closure.
    /// - Parameters:
    ///   - initialResult: The value to use as the initial accumulating value. `initialResult` is passed to `nextPartialResult` the first time the closure is executed.
    ///   - nextPartialResult: A closure that combines an accumulating value and an element of the sequence into a new accumulating value, to be used in the next call of the `nextPartialResult` closure or returned to the caller.
    /// - Returns: The final accumulated value. If the sequence has no elements, the result is `initialResult`.
    /// - Throws: An error, if the JSON value is not an object, or of the `nextPartialResult` closure throws an error.
    public func reduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, Object.Element) throws -> Result
    ) throws -> Result {
        try objectValue.reduce(initialResult, nextPartialResult)
    }

    /// Returns the result of combining the elements of the JSON object using the given closure.
    /// - Parameters:
    ///   - initialResult: The value to use as the initial accumulating value.
    ///   - updateAccumulatingResult: A closure that updates the accumulating value with an element of the sequence.
    /// - Returns: The final accumulated value. If the sequence has no elements, the result is `initialResult`.
    /// - Throws: An error, if the JSON value is not an object, or of the `nextPartialResult` closure throws an error.
    public func reduce<Result>(
        into initialResult: Result,
        _ updateAccumulatingResult: (inout Result, Object.Element) throws -> Void
    ) throws -> Result {
        try objectValue.reduce(into: initialResult, updateAccumulatingResult)
    }

    /// Calls the given closure on each element in the JSON array in the same order as a for-in loop.
    /// - Parameter body: The closure to call on each JSON element
    /// - Throws: An error, if the JSON value is not an array, or if the `body` closure throws an error
    public func forEach(
        _ body: (JSON) throws -> Void
    ) throws {
        try arrayValue.forEach(body)
    }

    /// Calls the given closure on each key-value pair in the JSON object in the same order as a for-in loop.
    /// - Parameter body: The closure to call on each JSON key-value pair
    /// - Throws: An error, if the JSON value is not an object, or if the `body` closure throws an error.
    public func forEach(
        _ body: (Object.Element) throws -> Void
    ) throws {
        try objectValue.forEach(body)
    }

    /// Insert a value into a JSON array at a provided index
    /// - Parameters:
    ///   - value: The value to insert
    ///   - index: The index to use to insert the value
    /// - Throws: An error, if the JSON value is not an array, or if the provided index is out of bounds.
    public mutating func insert(
        _ value: JSON,
        at index: some BinaryInteger
    ) throws {
        let index = Int(index)
        var array = try arrayValue
        guard array.indices.contains(index) else {
            throw OperationError.indexOutOfBounds(index)
        }
        array.insert(value, at: index)
        self = .array(array)
    }

    /// Exchanges the values at the specified indices of the JSON array.
    ///
    /// Both parameters must be valid indices of the collection that are not
    /// equal to `endIndex`. Calling `swapAt(_:_:)` with the same index as both
    /// `i` and `j` has no effect.
    ///
    /// - Parameters:
    ///   - i: The index of the first value to swap.
    ///   - j: The index of the second value to swap.
    /// - Throws: An error, if the JSON value is not an array, or if either of the provided indices is out of bounds.
    public mutating func swapAt(
        _ i: some BinaryInteger,
        _ j: some BinaryInteger
    ) throws {
        var array = try arrayValue
        let i = Int(i)
        let j = Int(j)
        guard array.indices.contains(i) else {
            throw OperationError.indexOutOfBounds(i)
        }
        guard array.indices.contains(j) else {
            throw OperationError.indexOutOfBounds(j)
        }
        array.swapAt(i, j)
        self = .array(array)
    }

    /// Remove the value at the provided key from a JSON object
    /// - Parameter key: The key to remove
    public mutating func removeValue(
        forKey key: String
    ) throws {
        let `subscript` = Subscript.key(key)
        try removeValue(forSubscript: `subscript`)
    }

    /// Remove the value at the provided index from a JSON array
    /// - Parameter index: The index to remove
    public mutating func removeValue(
        atIndex index: Int
    ) throws {
        let `subscript` = Subscript.index(index)
        try removeValue(forSubscript: `subscript`)
    }

    /// Remove the value at the provided subscript
    /// - Parameter subscript: The subscript to remove
    public mutating func removeValue(
        forSubscript subscript: Subscript
    ) throws {
        switch (self, `subscript`) {
        case (var .array(array), let .index(index)):
            guard case array.indices = index else {
                throw OperationError.indexOutOfBounds(index)
            }
            array.remove(at: index)
            self = .array(array)
        case (var .object(object), let .key(key)):
            guard object.keys.contains(key) else {
                throw OperationError.keyNotFound(key)
            }
            object.removeValue(forKey: key)
            self = .object(object)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.number, _),
             (.bool, _),
             (.null, _):
            throw OperationError.invalidSubscript(`subscript`)
        }
    }

    /// Merges the given JSON object into this JSON object, using a combining closure to determine the value for any duplicate keys.
    /// - Parameters:
    ///   - other: The JSON object to merge
    ///   - combine: A closure that takes the current and new JSON values for any duplicate keys. The closure returns the desired JSON value for the final JSON object.
    public mutating func merge(
        _ other: JSON,
        uniquingKeysWith combine: (JSON, JSON) throws -> JSON = { lhs, rhs in lhs }
    ) throws {
        self = try merging(other, uniquingKeysWith: combine)
    }

    /// Creates a JSON object by merging the given JSON object into this JSON object, using a combining closure to determine the value for duplicate keys.
    /// - Parameters:
    ///   - other: The JSON object to merge
    ///   - combine: A closure that takes the current and new JSON values for any duplicate keys. The closure returns the desired JSON value for the final JSON object.
    /// - Returns: A new JSON object with the combined keys and values of this JSON object and other.
    public func merging(
        _ other: JSON,
        uniquingKeysWith combine: (JSON, JSON) throws -> JSON = { lhs, rhs in lhs }
    ) throws -> JSON {
        try .object(objectValue.merging(other.objectValue, uniquingKeysWith: combine))
    }

    /// Returns a new JSON object containing the key-value pairs of this object that satisfy the given predicate
    /// - Parameter isIncluded: A closure that takes a key-value pair as its argument and returns a Boolean value indicating whether the pair should be included in the returned JSON object.
    /// - Returns: The filtered JSON object
    public func filter(
        _ isIncluded: (Object.Element) throws -> Bool
    ) throws -> JSON {
        try .object(objectValue.filter(isIncluded))
    }

    /// Returns a new JSON object containing the key-value pairs of this object whose keys satisfy the given predicate
    /// - Parameter isIncluded: A closure that takes a JSON key as its argument and returns a Boolean value indicating whether the key should be included in the returned JSON object.
    /// - Returns: The filtered JSON object
    public func filterKeys(
        _ isIncluded: (Key) throws -> Bool
    ) throws -> JSON {
        try filter { key, _ in
            try isIncluded(key)
        }
    }

    /// Returns a new JSON object containing the key-value pairs of this object whose values satisfy the given predicate
    /// - Parameter isIncluded: A closure that takes a JSON object as its argument and returns a Boolean value indicating whether the value should be included in the returned JSON object.
    /// - Returns: The filtered JSON object
    public func filterValues(
        _ isIncluded: (JSON) throws -> Bool
    ) throws -> JSON {
        try filter { _, value in
            try isIncluded(value)
        }
    }

    /// Returns a new JSON value containing the elements of the array that satisfy the given predicate
    /// - Parameter isIncluded: A closure that takes an element as its argument and returns a Boolean value indicating whether the element should be included in the returned JSON object.
    /// - Returns: The filtered JSON array
    public func filter(
        _ isIncluded: (JSON) throws -> Bool
    ) throws -> JSON {
        try .array(arrayValue.filter(isIncluded))
    }

    /// Remove `null` values from a JSON array
    /// - Returns: A JSON array with no null values
    public func filterNils() throws -> JSON {
        try filter { json in !json.isNull }
    }

    /// Remove the value at the provided subscript
    /// - Parameter subscript: The subscript to remove
    public mutating func removeValue(
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws {
        let `subscript` = Subscript(`subscript`)
        try removeValue(forSubscript: `subscript`)
    }

    /// Serialize the JSON object to a byte buffer
    /// - Returns: The serialized byte buffer
    public func serialize() throws -> Data {
        try JSON.data(from: self)
    }

    /// Produce a string representation of the JSON object
    /// - Returns: The serialized string
    public func stringify() throws -> String {
        try JSON.string(from: self)
    }

    #if canImport(Darwin)
        #if compiler(>=6.2) && hasFeature(NonisolatedNonsendingByDefault)
            /// Write the JSON model to disk
            /// - Parameters:
            ///   - fileURL: The file URL to write to
            ///   - options: Serialization options to use when writing the JSON model to disk
            ///   - shouldOverwrite: Whether or not existing content should be overwritten
            @discardableResult
            @concurrent
            public func write(
                to fileURL: URL,
                options: JSON.SerializationOptions = .default,
                shouldOverwrite: Bool = false
            ) async throws -> Data {
                if FileManager.default.fileExists(atPath: fileURL.path()) {
                    if shouldOverwrite {
                        try FileManager.default.removeItem(at: fileURL)
                        try Task.checkCancellation()
                    } else {
                        throw OperationError.fileExists(fileURL)
                    }
                }

                let data = try await JSON.serialize(
                    self,
                    options: options
                )
                try Task.checkCancellation()
                try data.write(
                    to: fileURL,
                    options: .withoutOverwriting
                )
                try Task.checkCancellation()
                return data
            }
        #else
            /// Write the JSON model to disk
            /// - Parameters:
            ///   - fileURL: The file URL to write to
            ///   - options: Serialization options to use when writing the JSON model to disk
            ///   - shouldOverwrite: Whether or not existing content should be overwritten
            @discardableResult
            public func write(
                to fileURL: URL,
                options: JSON.SerializationOptions = .default,
                shouldOverwrite: Bool = false
            ) async throws -> Data {
                if FileManager.default.fileExists(atPath: fileURL.path()) {
                    if shouldOverwrite {
                        try FileManager.default.removeItem(at: fileURL)
                        try Task.checkCancellation()
                    } else {
                        throw OperationError.fileExists(fileURL)
                    }
                }

                let data = try await JSON.serialize(
                    self,
                    options: options
                )
                try data.write(
                    to: fileURL,
                    options: .withoutOverwriting
                )
                try Task.checkCancellation()
                return data
            }
        #endif
    #else
        /// Write the JSON model to disk
        ///
        /// This method is unavailable on non-Apple platforms
        @available(*, unavailable, message: "File writing is only available on Apple platforms")
        public func write(
            to fileURL: URL,
            options: JSON.SerializationOptions = .default,
            shouldOverwrite: Bool = false
        ) async throws -> Data {
            fatalError("File writing is not supported on non-Apple platforms")
        }
    #endif

    /// Retrieve the value identified by a JSON Pointer.
    /// - Parameter pointer: The pointer identifying the value. A whole-document pointer returns the receiver itself.
    /// - Returns: The value at the pointer
    /// - Throws: An ``OperationError`` if the pointer cannot be resolved
    public func value(
        atPointer pointer: Pointer
    ) throws -> JSON {
        var current = self
        for token in pointer.tokens {
            let `subscript` = try JSON.Pointer.subscript(for: token, in: current)
            current = try current.value(forSubscript: `subscript`)
        }
        return current
    }

    /// Whether a value exists at the given JSON Pointer.
    ///
    /// - Parameter pointer: The pointer to test.
    /// - Returns: `true` if the pointer resolves to a value, otherwise `false`. Never throws.
    public func containsValue(
        atPointer pointer: Pointer
    ) -> Bool {
        (try? value(atPointer: pointer)) != nil
    }

    /// Set the value at the location identified by a JSON Pointer.
    ///
    /// Every container along the pointer must already exist; intermediate containers are not created. For an
    /// object the final token is created if absent or overwritten if present, and for an array the final token
    /// must be an in-bounds index. A whole-document pointer replaces the entire value.
    /// - Parameters:
    ///   - value: The value to set
    ///   - pointer: The pointer identifying the location to set
    /// - Throws: An ``OperationError`` if the location cannot be resolved
    public mutating func setValue(
        _ value: JSON,
        atPointer pointer: Pointer
    ) throws {
        try setValue(
            value,
            tokens: pointer.tokens
        )
    }

    /// Remove the value at the location identified by a JSON Pointer.
    ///
    /// The value must exist. Removing an array element shifts the remaining elements down.
    /// - Parameter pointer: The pointer identifying the value to remove
    /// - Throws: ``OperationError/cannotRemoveWholeDocument`` for a whole-document pointer, or another
    ///   ``OperationError`` if the value cannot be resolved
    public mutating func removeValue(
        atPointer pointer: Pointer
    ) throws {
        try removeValue(tokens: pointer.tokens)
    }

    /// Applies the operations in `patch` to this JSON value, in order.
    ///
    /// The patch is applied atomically: if any operation fails, an error is thrown and this value is
    /// left unchanged.
    /// - Parameter patch: The patch to apply.
    /// - Throws: An ``OperationError`` if any operation cannot be applied.
    public mutating func apply(
        _ patch: Patch
    ) throws {
        self = try applying(patch)
    }

    /// Returns a copy of this JSON value with the operations in `patch` applied, in order.
    ///
    /// The patch is applied atomically: if any operation fails, an error is thrown and no value is
    /// returned.
    /// - Parameter patch: The patch to apply.
    /// - Returns: A new JSON value with the patch applied.
    /// - Throws: An ``OperationError`` if any operation cannot be applied.
    public func applying(
        _ patch: Patch
    ) throws -> JSON {
        var result = self
        for operation in patch.operations {
            try result.apply(operation)
        }
        return result
    }

    /// Returns a patch that transforms this value into another.
    ///
    /// This is the difference between the receiver and `other`, expressed as a ``JSON/Patch``. Applying
    /// the result to the receiver reproduces `other`:
    ///
    /// ```swift
    /// let patch = source.difference(to: target)
    /// try source.applying(patch) == target // true
    /// ```
    ///
    /// See ``JSON/Patch/init(from:to:)`` for the details of how the patch is computed.
    ///
    /// - Parameter other: The value the returned patch transforms this value into.
    /// - Returns: A patch describing the difference between this value and `other`.
    public func difference(
        to other: JSON
    ) -> Patch {
        Patch(from: self, to: other)
    }

    /// Applies a JSON Merge Patch to this value in place.
    ///
    /// A merge patch is itself an ordinary JSON document. Applying it recursively merges its contents into
    /// this value: an object member whose value is `null` removes the corresponding key, any other member
    /// sets or recursively merges that key, and a patch that is not an object replaces this value
    /// wholesale. Arrays are always replaced wholesale — they are never merged element by element.
    ///
    /// Merge patch application can never fail, so this method does not throw.
    ///
    /// See [RFC 7386](https://datatracker.ietf.org/doc/html/rfc7386) for more information.
    ///
    /// - Parameter mergePatch: The merge patch document to apply.
    public mutating func apply(
        mergePatch: JSON
    ) {
        self = JSON.mergePatchApplied(
            to: self,
            mergePatch
        )
    }

    /// Returns a copy of this value with a JSON Merge Patch applied.
    ///
    /// See ``apply(mergePatch:)`` for the merge semantics.
    ///
    /// A merge patch application can never fail, so this method does not throw.
    ///
    /// See [RFC 7386](https://datatracker.ietf.org/doc/html/rfc7386) for more information.
    ///
    /// - Parameter mergePatch: The merge patch document to apply.
    /// - Returns: A new JSON value with the merge patch applied.
    public func applying(
        mergePatch: JSON
    ) -> JSON {
        JSON.mergePatchApplied(
            to: self,
            mergePatch
        )
    }

    /// Returns a JSON Merge Patch that transforms this value into another.
    ///
    /// The returned document is the merge patch describing the difference between this value and `other`.
    /// Applying it to this value reproduces `other`:
    ///
    /// ```swift
    /// let patch = source.mergeDifference(to: target)
    /// source.applying(mergePatch: patch) == target // true (see the limitation below)
    /// ```
    ///
    /// When both values are objects they are compared key by key (a key present only in the receiver
    /// becomes a `null` member to delete it, a key present only in `other` is added, and a key present in
    /// both is diffed recursively); otherwise the patch is `other` itself, replacing the value wholesale.
    /// Arrays are always replaced wholesale rather than merged element by element.
    ///
    /// See [RFC 7386](https://datatracker.ietf.org/doc/html/rfc7386) for more information.
    ///
    /// - Important: A merge patch cannot represent setting an object member to `null`, because `null` means
    ///   "delete this key." The round trip `source.applying(mergePatch: source.mergeDifference(to: target)) == target`
    ///   therefore holds only when `target` contains no `null` reachable as an object member value
    ///   at any depth. (A `null` *inside an array* round-trips fine, since arrays are replaced wholesale.)
    ///   This is an inherent limitation of [the RFC](https://datatracker.ietf.org/doc/html/rfc7386).
    ///
    /// - Parameter other: The value the returned merge patch transforms this value into.
    /// - Returns: A merge patch document describing the difference between this value and `other`.
    public func mergeDifference(
        to other: JSON
    ) -> JSON {
        JSON.mergePatchDifference(
            from: self,
            to: other
        )
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public subscript(
        _ subscript: Subscript...
    ) -> JSON {
        get throws {
            var json = self
            try `subscript`
                .forEach { `subscript` in
                    json = try json.value(forSubscript: `subscript`)
                }
            return json
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public subscript(
        _ subscript: Subscript
    ) -> JSON {
        get throws {
            try value(forSubscript: `subscript`)
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter path: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public subscript<each PathComponent>(
        _ path: repeat each PathComponent
    ) -> JSON where repeat each PathComponent: JSONSubscriptConvertible {
        get throws {
            var json = self
            for component in repeat each path {
                json = try json.value(forSubscript: component)
            }
            return json
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public subscript<S>(
        _ subscript: S
    ) -> JSON where S: JSONSubscriptConvertible {
        get throws {
            try value(forSubscript: `subscript`)
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to convert into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @_disfavoredOverload
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public subscript<T>(
        _ subscript: Subscript...,
        as type: T.Type = T.self
    ) -> T where T: JSONInitializable {
        get throws {
            var json = self
            try `subscript`.forEach { `subscript` in
                json = try json[`subscript`]
            }
            return try json.convert(into: type)
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to convert into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @_disfavoredOverload
    public subscript<T>(
        _ subscript: Subscript,
        as type: T.Type = T.self
    ) -> T where T: JSONInitializable {
        get throws {
            try value(forSubscript: `subscript`).convert()
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to convert into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @_disfavoredOverload
    @available(*, deprecated, message: "Use pointer based access instead. This method will be removed in a future release.")
    public subscript<each PathComponent, T>(
        _ subscript: repeat each PathComponent,
        as type: T.Type = T.self
    ) -> T where repeat each PathComponent: JSONSubscriptConvertible, T: JSONInitializable {
        get throws {
            var json = self
            for component in repeat each `subscript` {
                json = try json[component]
            }
            return try json.convert(into: type)
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to convert into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @_disfavoredOverload
    public subscript<S, T>(
        _ subscript: S,
        as type: T.Type = T.self
    ) -> T where S: JSONSubscriptConvertible, T: JSONInitializable {
        get throws {
            try self[`subscript`].convert()
        }
    }

    /// Retrieve a value from the JSON value using a JSON Pointer
    /// - Parameter pointer: The pointer identifying the value
    /// - Returns: The value at the pointer
    /// - Throws: An ``OperationError`` if the pointer cannot be resolved
    public subscript(
        _ pointer: Pointer
    ) -> JSON {
        get throws {
            try value(atPointer: pointer)
        }
    }

    /// Retrieve a value from the JSON value using a JSON Pointer, converted into the inferred type
    /// - Parameters:
    ///   - pointer: The pointer identifying the value
    ///   - type: The type to convert into. This type can be inferred from the callsite.
    /// - Returns: The value at the pointer, converted to the inferred ``JSONInitializable`` type
    /// - Throws: An ``OperationError`` if the pointer cannot be resolved or the value cannot be converted
    @_disfavoredOverload
    public subscript<T>(
        _ pointer: Pointer,
        as type: T.Type = T.self
    ) -> T where T: JSONInitializable {
        get throws {
            try self[pointer].convert()
        }
    }

    // MARK: - ExpressibleByBooleanLiteral

    /// A type that represents a Boolean literal.
    public typealias BooleanLiteralType = Bool

    /// Create an instance initialized to the given Boolean value.
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use a Boolean literal. Instead, create a new `JSON` instance by using one of the Boolean literals `true` or `false`. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = true
    /// ```
    ///
    /// In this example, the assignment to the `myJSON` constant calls this Boolean literal initializer behind the scenes.
    ///
    /// - Parameter value: The value of the new instance.
    public init(
        booleanLiteral value: BooleanLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByIntegerLiteral

    /// A type that represents an integer literal.
    public typealias IntegerLiteralType = Int

    /// Create an instance initialized to the given integer value.
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use an integer literal. Instead, create a new `JSON` instance by using an integer literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = 42
    /// ```
    ///
    /// In this example, the assignment to the `myJSON` constant calls this integer literal initializer behind the scenes.
    ///
    /// - Parameter value: The value of the new instance
    public init(
        integerLiteral value: IntegerLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByFloatLiteral

    /// A type that represents a floating-point literal.
    public typealias FloatLiteralType = Double

    /// Create an instance initialized to the given floating-point value
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use a floating-point literal. Instead, create a new `JSON` instance by using a floating-point literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = 4.2
    /// ```
    ///
    /// In this example, the assignment to the `myJSON` constant calls this floating-point literal initializer behind the scenes.
    ///
    /// - Parameter value: The value of the new instance
    public init(
        floatLiteral value: FloatLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByStringLiteral

    /// A type that represents a string literal.
    public typealias StringLiteralType = String

    /// Create an instance initialized to the given string value
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use a string literal. Instead, create a new `JSON` instance by using a string literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = "Hello, world!"
    /// ```
    ///
    /// In this example, the assignment to the `myJSON` constant calls this string literal initializer behind the scenes.
    ///
    /// - Parameter value: The value of the new instance
    public init(
        stringLiteral value: StringLiteralType
    ) {
        self.init(value)
    }

    // MARK: - ExpressibleByArrayLiteral

    /// The type of the elements of an array literal.
    public typealias ArrayLiteralElement = JSON

    /// Create an instance initialized with the given elements
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use an array literal. Instead, create a new `JSON` instance by using an array literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = ["foo", "bar", "baz"]
    /// ```
    ///
    /// - Parameter elements: The elements of the new instance
    public init(
        arrayLiteral elements: ArrayLiteralElement...
    ) {
        self.init(elements)
    }

    // MARK: - ExpressibleByDictionaryLiteral

    /// The key type of a dictionary literal.
    public typealias Key = String

    /// A value type of a dictionary literal
    public typealias Value = JSON

    /// Create an instance initialized with the given key-value pairs
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use a dictionary literal. Instead, create a new `JSON` instance by using a dictionary literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = ["key": "value"]
    /// ```
    ///
    /// - Parameter elements: The key-value pairs of the new instance
    public init(
        dictionaryLiteral elements: (Key, Value)...
    ) {
        let map: [Key: Value] = elements.reduce(into: [:]) { prev, pair in
            let (key, value) = pair
            prev[key] = value
        }
        self.init(map)
    }

    // MARK: - ExpressibleByNilLiteral

    /// Create an instance initialized with `nil`
    ///
    /// Do not call this initializer directly. It is used by the compiler when you use a nil literal. Instead, create a new `JSON` instance by using a nil literal. For example:
    ///
    /// ```swift
    /// let myJSON: JSON = nil
    /// ```
    ///
    /// In this example, the assignment to the `myJSON` constant calls this nil literal initializer behind the scenes.
    ///
    /// - Parameter nilLiteral: No value
    public init(
        nilLiteral: Void
    ) {
        self = .null
    }

    // MARK: - CustomStringConvertible

    /// A textual representation of the JSON value.
    public var description: String {
        switch self {
        case let .bool(bool):
            bool.description
        case let .number(number):
            number.description
        case let .array(array):
            array.description
        case let .object(object):
            object.description
        case let .string(string):
            string.description
        case .null:
            "null"
        }
    }

    // MARK: - Encodable

    public func encode(
        to encoder: any Encoder
    ) throws {
        switch self {
        case let .bool(bool):
            var container = encoder.singleValueContainer()
            try container.encode(bool)
        case let .number(number):
            var container = encoder.singleValueContainer()
            try container.encode(number)
        case let .array(array):
            var container = encoder.unkeyedContainer()
            for value in array {
                try container.encode(value)
            }
        case let .object(object):
            var container = encoder.container(keyedBy: Field.self)
            for (key, value) in object {
                let field = Field(key)
                try container.encode(
                    value,
                    forKey: field
                )
            }
        case let .string(string):
            var container = encoder.singleValueContainer()
            try container.encode(string)
        case .null:
            var container = encoder.singleValueContainer()
            try container.encodeNil()
        }
    }

    // MARK: - Decodable

    public init(
        from decoder: any Decoder
    ) throws {
        if let container = try? decoder.container(keyedBy: Field.self) {
            let object: Object = try container.allKeys.reduce(into: [:]) { object, key in
                object[key.stringValue] = try container.decode(
                    JSON.self,
                    forKey: key
                )
            }
            self = .object(object)
        } else if var container = try? decoder.unkeyedContainer() {
            var array = Array()
            while !container.isAtEnd {
                let value = try container.decode(JSON.self)
                array.append(value)
            }
            self = .array(array)
        } else {
            let container = try decoder.singleValueContainer()
            if let bool = try? container.decode(Bool.self) {
                self = .bool(bool)
            } else if let number = try? container.decode(Number.self) {
                self = .number(number)
            } else if let string = try? container.decode(String.self) {
                self = .string(string)
            } else if container.decodeNil() {
                self = .null
            } else {
                throw DecodingError.typeMismatch(
                    JSON.self,
                    .init(
                        codingPath: decoder.codingPath,
                        debugDescription: "Malformed JSON"
                    )
                )
            }
        }
    }

    // MARK: - Private

    private struct Field: CodingKey {

        init?(intValue: Int) {
            nil
        }

        init?(stringValue: String) {
            self.init(stringValue)
        }

        init(_ str: String) {
            self.stringValue = str
        }

        let stringValue: String

        let intValue: Int? = nil

    }

    private mutating func mutatingChild(
        at token: JSON.Pointer.Token,
        _ body: (inout JSON) throws -> Void
    ) throws {
        let `subscript` = try JSON.Pointer.subscript(
            for: token,
            in: self
        )
        var child = try value(forSubscript: `subscript`)
        try body(&child)
        try setValue(
            child,
            forSubscript: `subscript`
        )
    }

    private mutating func setValue(
        _ value: JSON,
        tokens: some Collection<JSON.Pointer.Token>
    ) throws {
        guard let token = tokens.first else {
            self = value
            return
        }
        let rest = tokens.dropFirst()
        if rest.isEmpty {
            let `subscript` = try JSON.Pointer.subscript(
                for: token,
                in: self
            )
            try setValue(
                value,
                forSubscript: `subscript`
            )
        } else {
            try mutatingChild(at: token) { child in
                try child.setValue(
                    value,
                    tokens: rest
                )
            }
        }
    }

    private mutating func removeValue(
        tokens: some Collection<JSON.Pointer.Token>
    ) throws {
        guard let token = tokens.first else {
            throw OperationError.cannotRemoveWholeDocument
        }
        let rest = tokens.dropFirst()
        if rest.isEmpty {
            let `subscript` = try JSON.Pointer.subscript(
                for: token,
                in: self
            )
            try removeValue(forSubscript: `subscript`)
        } else {
            try mutatingChild(at: token) { child in
                try child.removeValue(tokens: rest)
            }
        }
    }

    private mutating func apply(
        _ operation: Patch.Operation
    ) throws {
        switch operation {
        case let .add(path, value):
            try addValue(value, atPointer: path)
        case let .remove(path):
            try removeValue(atPointer: path)
        case let .replace(path, value):
            _ = try self.value(atPointer: path)
            try setValue(value, atPointer: path)
        case let .move(from, path):
            try moveValue(from: from, to: path)
        case let .copy(from, path):
            let value = try self.value(atPointer: from)
            try addValue(value, atPointer: path)
        case let .test(path, value):
            let actual = try self.value(atPointer: path)
            guard JSON.patchEqual(actual, value) else {
                throw OperationError.patchTestFailed(path)
            }
        }
    }

    /// [RFC 6902 §4.6](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6) equality, used by the
    /// `test` operation.
    ///
    /// This deliberately differs from `JSON` value equality (`==`) in how it compares strings. Swift's
    /// `String` equality — which `JSON` relies on — treats canonically equivalent strings
    /// as equal (for example the precomposed `"é"`, `U+00E9`, and the decomposed `"e"` + combining acute,
    /// `U+0065 U+0301`).
    ///
    /// RFC 6902 instead requires the code point sequences to match exactly, so strings are
    /// compared here by their Unicode scalars. Because ``JSON`` is an in-memory model rather than a serialized
    /// payload, "code points" means the value's Unicode scalar sequence, not the bytes of any encoding.
    ///
    /// Numbers keep numeric equality (`42` equals `42.0`), and arrays and objects are compared recursively.
    ///
    /// - Note: Object *keys* are stored in a Swift `Dictionary`, whose canonical `String` hashing collapses
    ///   canonically equivalent keys as the object is built — so that distinction is already lost before this
    ///   comparison runs. Only string *values* (including those nested inside arrays and objects) receive
    ///   code-point-exact treatment.
    private static func patchEqual(
        _ lhs: JSON,
        _ rhs: JSON
    ) -> Bool {
        switch (lhs, rhs) {
        case let (.string(lhs), .string(rhs)):
            lhs.unicodeScalars.elementsEqual(rhs.unicodeScalars)
        case let (.array(lhs), .array(rhs)):
            lhs.count == rhs.count && zip(lhs, rhs).allSatisfy { patchEqual($0, $1) }
        case let (.object(lhs), .object(rhs)):
            lhs.count == rhs.count && lhs.allSatisfy { key, value in
                guard let other = rhs[key] else {
                    return false
                }
                return patchEqual(value, other)
            }
        default:
            lhs == rhs
        }
    }

    private mutating func moveValue(
        from: JSON.Pointer,
        to path: JSON.Pointer
    ) throws {
        let value = try self.value(atPointer: from)
        // A location cannot be moved into one of its own descendants.
        let fromTokens = from.tokens
        let toTokens = path.tokens
        if fromTokens.count < toTokens.count,
           toTokens.starts(with: fromTokens) {
            throw OperationError.invalidPatchMove(from)
        }
        try removeValue(atPointer: from)
        try addValue(value, atPointer: path)
    }

    private mutating func addValue(
        _ json: JSON,
        atPointer pointer: JSON.Pointer
    ) throws {
        try addValue(json, tokens: pointer.tokens)
    }

    private mutating func addValue(
        _ json: JSON,
        tokens: some Collection<JSON.Pointer.Token>
    ) throws {
        guard let token = tokens.first else {
            self = json
            return
        }
        let rest = tokens.dropFirst()
        if rest.isEmpty {
            switch self {
            case var .object(object):
                object[token] = json
                self = .object(object)
            case var .array(array):
                let index = try JSON.arrayInsertionIndex(for: token, count: array.count)
                array.insert(json, at: index)
                self = .array(array)
            case .bool, .null, .number, .string:
                throw OperationError.invalidSubscript(.key(token))
            }
        } else {
            try mutatingChild(at: token) { child in
                try child.addValue(json, tokens: rest)
            }
        }
    }

    private static func arrayInsertionIndex(
        for token: JSON.Pointer.Token,
        count: Int
    ) throws -> Int {
        if token == "-" {
            return count
        }
        guard let index = JSON.Pointer.index(for: token) else {
            throw OperationError.invalidSubscript(.key(token))
        }
        guard index <= count else {
            throw OperationError.indexOutOfBounds(index)
        }
        return index
    }

    private static func mergePatchApplied(
        to target: JSON?,
        _ patch: JSON
    ) -> JSON {
        guard case let .object(patchObject) = patch else {
            return patch
        }
        var object: JSON.Object = if case let .object(targetObject)? = target {
            targetObject
        } else {
            [:]
        }
        for (key, value) in patchObject {
            if value == .null {
                object[key] = nil
            } else {
                object[key] = mergePatchApplied(to: object[key], value)
            }
        }
        return .object(object)
    }

    private static func mergePatchDifference(
        from source: JSON,
        to target: JSON
    ) -> JSON {
        guard case let .object(sourceObject) = source,
              case let .object(targetObject) = target else {
            return target
        }
        var patch = JSON.Object()
        for key in sourceObject.keys where targetObject[key] == nil {
            patch[key] = .null
        }
        for (key, targetValue) in targetObject {
            if let sourceValue = sourceObject[key] {
                if sourceValue != targetValue {
                    patch[key] = mergePatchDifference(from: sourceValue, to: targetValue)
                }
            } else {
                patch[key] = targetValue
            }
        }
        return .object(patch)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension String.StringInterpolation {

    /// Interpolates the serialized JSON representation of a value into a string literal.
    ///
    /// Use this interpolation to embed the JSON text of any ``JSONConvertible`` value directly in a string:
    ///
    /// ```swift
    /// let user: JSON = ["name": "Ada", "id": 42]
    /// let message = "payload: \(json: user)"
    /// // "payload: {\"id\":42,\"name\":\"Ada\"}"
    /// ```
    ///
    /// The value is serialized as a JSON fragment, so scalars produce their bare JSON form (`42`, `true`,
    /// `null`) and strings are quoted (`"Ada"`). Non-conforming floating-point values are permitted and
    /// serialized as their string forms (`"NaN"`, `"Infinity"`, `"-Infinity"`) rather than trapping. To
    /// control serialization, use ``appendInterpolation(json:options:)`` instead.
    ///
    /// - Parameter json: The value whose JSON representation is interpolated.
    public mutating func appendInterpolation(json: some JSONConvertible) {
        let str = try! JSON.string(
            from: JSON(json),
            options: .interpolationDefault
        )
        appendLiteral(str)
    }

    /// Interpolates the serialized JSON representation of a value into a string literal, using the provided
    /// serialization options.
    ///
    /// Use this interpolation when you need to customize how the value is serialized — for example, to
    /// pretty-print it:
    ///
    /// ```swift
    /// let user: JSON = ["name": "Ada", "id": 42]
    /// let message = try "payload: \(json: user, options: [.prettyPrinted, .fragmentsAllowed])"
    /// ```
    ///
    /// Unlike ``appendInterpolation(json:)``, this overload throws rather than allowing non-conforming
    /// floating-point values by default, so the containing string literal must be evaluated with `try`.
    ///
    /// - Parameters:
    ///   - json: The value whose JSON representation is interpolated.
    ///   - options: The ``JSON/SerializationOptions`` to use when serializing the value.
    /// - Throws: An error if the value cannot be serialized with the provided options.
    public mutating func appendInterpolation(
        json: some JSONConvertible,
        options: JSON.SerializationOptions
    ) throws {
        let str = try JSON.string(
            from: JSON(json),
            options: options
        )
        appendLiteral(str)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.SerializationOptions {

    fileprivate static let interpolationDefault: JSON.SerializationOptions = [.allowNonConformingFloatingPointValues, .fragmentsAllowed, .escapeSpecialCharacters]

}
