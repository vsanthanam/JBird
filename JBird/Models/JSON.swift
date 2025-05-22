// JBird
// JSON.swift
//
// MIT License
//
// Copyright (c) 2025 Varun Santhanam
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
public enum JSON: Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByStringLiteral, ExpressibleByArrayLiteral, ExpressibleByDictionaryLiteral, ExpressibleByNilLiteral, CustomStringConvertible {

    // MARK: - Initializers

    /// Create a `JSON` value from a ``JSONEncodable`` type
    /// - Parameter encodable: The encodable type to convert to JSON
    public init(
        _ encodable: some JSONEncodable
    ) {
        self = encodable.encodeToJSON()
    }

    /// Create a `JSON` value by deserializing a byte buffer containing UTF-8 encoded JSON string
    /// - Parameter data: The byte buffer to deserialize
    public init(
        _ data: Data
    ) throws {
        self = try Deserialization.value(from: data)
    }

    /// Create a `JSON` value by deserializing a Swift string
    /// - Parameter string: The string to deserialize
    public init(
        deserializing string: String
    ) throws {
        self = try Deserialization.value(from: string)
    }

    /// Create a JSON object declaratively
    /// - Parameter fields: The fields in the object
    public init(
        @ObjectBuilder fields: () -> JSON
    ) {
        self = fields()
    }

    /// Create a JSON array declaratively
    /// - Parameter elements: The elements in the array
    public init(
        @ArrayBuilder elements: () -> JSON
    ) {
        self = elements()
    }

    // MARK: - API

    /// A JSON literal value
    case literal(Literal)

    /// A JSON object
    case object([String: JSON])

    /// A JSON array
    case array([JSON])

    /// A JSON numeric value
    case numeric(Numeric)

    /// A JSON string
    case string(String)

    /// A null JSON value
    public static let null: JSON = nil

    /// A zero JSON value
    public static let zero: JSON = 0

    /// The number of objects in the JSON array or JSON dictionary
    public var count: Int {
        get throws {
            switch self {
            case let .object(object):
                object.count
            case let .array(array):
                array.count
            case .literal, .numeric, .string:
                throw JSONError.illegalCollectionConversion
            }
        }
    }

    /// Whether or not the JSON array or JSON object is empty
    public var isEmpty: Bool {
        get throws {
            try count == 0
        }
    }

    /// The JSON value as a literal
    public var literalValue: Literal {
        get throws {
            switch self {
            case let .literal(literal):
                literal
            case .object, .array, .numeric, .string:
                throw JSONError.illegalLiteralConversion
            }
        }
    }

    /// The JSON value as a boolean
    public var boolValue: Bool {
        get throws {
            try literalValue.boolValue
        }
    }

    /// The JSON value as an object
    public var objectValue: [String: JSON] {
        get throws {
            switch self {
            case let .object(object):
                object
            case .literal, .array, .numeric, .string:
                throw JSONError.illegalObjectConversion
            }
        }
    }

    /// The JSON value as an array
    public var arrayValue: [JSON] {
        get throws {
            switch self {
            case let .array(array):
                array
            case .literal, .object, .numeric, .string:
                throw JSONError.illegalArrayConversion
            }
        }
    }

    /// The JSON value as a numeric
    public var numericValue: Numeric {
        get throws {
            switch self {
            case let .numeric(numeric):
                numeric
            case .literal, .object, .array, .string:
                throw JSONError.illegalNumericConversion
            }
        }
    }

    /// The JSON value as a Swift integer
    public var intValue: Int {
        get throws {
            try numericValue.intValue
        }
    }

    /// The JSON value as a Swift double
    public var doubleValue: Double {
        get throws {
            try numericValue.doubleValue
        }
    }

    /// The JSON value as a Swift string
    public var stringValue: String {
        get throws {
            switch self {
            case let .string(string):
                string
            case .literal, .object, .array, .numeric:
                throw JSONError.illegalStringConversion
            }
        }
    }

    /// Whether or not the JSON value is a Boolean
    public var isBool: Bool {
        switch self {
        case .literal(.true), .literal(.false):
            true
        case .literal, .object, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is a null value
    public var isNull: Bool {
        switch self {
        case .literal(.null):
            true
        case .literal, .object, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is a literal
    public var isLiteral: Bool {
        switch self {
        case .literal:
            true
        case .object, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is an object
    public var isObject: Bool {
        switch self {
        case .object:
            true
        case .literal, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is an array
    public var isArray: Bool {
        switch self {
        case .array:
            true
        case .literal, .object, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is a numeric
    public var isNumeric: Bool {
        switch self {
        case .numeric:
            true
        case .literal, .object, .array, .string:
            false
        }
    }

    /// Whether or not the JSON value is an int
    public var isInt: Bool {
        switch self {
        case .numeric(.int):
            true
        case .literal, .object, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is a double
    public var isDouble: Bool {
        switch self {
        case .numeric(.double):
            true
        case .literal, .object, .array, .numeric, .string:
            false
        }
    }

    /// Whether or not the JSON value is a string
    public var isString: Bool {
        switch self {
        case .string:
            true
        case .literal, .object, .array, .numeric:
            false
        }
    }

    /// The untyped representation of the JSON value
    ///
    /// This property returns the JSON value as a native Swift type:
    /// - `true` and `false` literals are represented as `Bool`
    /// - `null` literals are represented as `nil`
    /// - Strings are represented as `String`
    /// - Integers are represented as `Int`
    /// - Floating point numbers are represented as `Double`
    /// - Arrays are represented as `[Any?]`
    /// - Objects are represented as `[String: Any?]`
    public var untyped: Any? {
        switch self {
        case let .literal(literal):
            switch literal {
            case .true:
                true
            case .false:
                false
            case .null:
                nil
            }
        case let .string(string):
            string
        case let .numeric(numeric):
            switch numeric {
            case let .int(int):
                int
            case let .double(double):
                double
            }
        case let .array(array):
            array.map(\.untyped)
        case let .object(object):
            object.mapValues(\.untyped)
        }
    }

    /// Decode the JSON value into a `JSONDecodable` type
    /// - Parameter type: The type to decode into
    /// - Returns: The decoded value
    public func decode<T>(
        into type: T.Type = T.self
    ) throws -> T where T: JSONDecodable {
        try T(json: self)
    }

    /// Retrieve a value from the JSON object using a specified key
    /// - Parameter key: A string key to use for lookup
    /// - Returns: The JSON value at the specified key
    public func value(
        forKey key: some StringProtocol
    ) throws -> JSON {
        try value(forSubscript: .init(key: key))
    }

    /// Retrieve a value from the JSON object using a specified key
    /// - Parameter key: A string key to use for lookup
    /// - Returns: The JSON value at the specified key
    public func value<Key>(
        forKey key: Key
    ) throws -> JSON where Key: RawRepresentable, Key.RawValue: StringProtocol {
        try value(forKey: key.rawValue)
    }

    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    public func value(
        atIndex index: some BinaryInteger
    ) throws -> JSON {
        try value(forSubscript: .init(index: index))
    }

    /// Retrieve a value from the JSON object using a specified index
    /// - Parameter index: An integer index to use for lookup
    /// - Returns: The JSON value at the specified index
    public func value<Index>(
        atIndex index: Index
    ) throws -> JSON where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try value(atIndex: index.rawValue)
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public func value(
        forSubscript subscript: Subscript
    ) throws -> JSON {
        switch `subscript` {
        case let .key(key):
            guard case let .object(object) = self else {
                throw JSONError.invalidSubscript(`subscript`)
            }
            guard object.keys.contains(key) else {
                throw JSONError.keyNotFound(key)
            }
            return object[key].unsafelyUnwrapped
        case let .index(index):
            guard case let .array(array) = self else {
                throw JSONError.invalidSubscript(`subscript`)
            }
            guard case array.indices = index else {
                throw JSONError.indexOutOfBounds(index)
            }
            return array[index]
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
    public func value(
        forSubscript subscript: some JSONSubscriptConvertible
    ) throws -> JSON {
        let `subscript` = Subscript(`subscript`)
        return try value(forSubscript: `subscript`)
    }

    /// Retrieve a value from the JSON object using a specified path
    /// - Parameter path: The path to use for lookup
    /// - Returns: The JSON value at the specified path
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
    @available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
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
        forKey key: some StringProtocol
    ) -> Bool {
        let `subscript` = Subscript(key: key)
        return containsValue(forSubscript: `subscript`)
    }

    /// Check whether a JSON object contains a value for the provided key
    /// - Parameter key: The key
    /// - Returns: `true` if the object contains the provided key, `false` if the object does not contain the provided key, or if the JSON value is not an object
    public func containsValue<Key>(
        forKey key: Key
    ) -> Bool where Key: RawRepresentable, Key.RawValue: StringProtocol {
        containsValue(forKey: key.rawValue)
    }

    /// Check whether a JSON array contains a value for the provided index
    /// - Parameter index: The index
    /// - Returns: `true` if the array contains the provided index, `false` if the object does not contain the provided index, or if the JSON value is not an array
    public func containsValue(
        atIndex index: some BinaryInteger
    ) -> Bool {
        let `subscript` = Subscript(index: index)
        return containsValue(forSubscript: `subscript`)
    }

    /// Check whether a JSON array contains a value for the provided index
    /// - Parameter index: The index
    /// - Returns: `true` if the array contains the provided index, `false` if the object does not contain the provided index, or if the JSON value is not an array
    public func containsValue<Index>(
        atIndex index: Index
    ) -> Bool where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        containsValue(atIndex: index.rawValue)
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
             (.numeric, _),
             (.literal, _):
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
    public mutating func setValue(
        _ value: JSON,
        forKey key: some StringProtocol
    ) throws {
        try setValue(value, forSubscript: .init(key: key))
    }

    /// Set a value in the JSON object using a specified key
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - key: A string key to use for lookup
    public mutating func setValue<Key>(
        _ value: JSON,
        forKey key: Key
    ) throws where Key: RawRepresentable, Key.RawValue: StringProtocol {
        try setValue(value, forKey: key.rawValue)
    }

    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    public mutating func setValue(
        _ value: JSON,
        atIndex index: some BinaryInteger
    ) throws {
        try setValue(value, forSubscript: .init(index: index))
    }

    /// Set a value in the JSON object using a specified index
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - index: An integer index to use for lookup
    public mutating func setValue<Index>(
        _ value: JSON,
        atIndex index: Index
    ) throws where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try setValue(value, atIndex: index.rawValue)
    }

    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
    public mutating func setValue(
        _ value: JSON,
        forSubscript subscript: Subscript
    ) throws {
        switch (self, `subscript`) {
        case (var .array(array), let .index(index)):
            guard case array.indices = index else {
                throw JSONError.indexOutOfBounds(index)
            }
            array[index] = value
            self = .array(array)
        case (var .object(object), let .key(key)):
            object[key] = value
            self = .object(object)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.numeric, _),
             (.literal, _):
            throw JSONError.invalidSubscript(`subscript`)
        }
    }

    /// Set a value in the JSON object using a specified subscript
    /// - Parameters:
    ///   - value: The JSON value to set
    ///   - subscript: A subscript to use for lookup
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
    public var first: JSON? {
        get throws {
            try arrayValue.first
        }
    }

    /// The last value in a JSON array, or `nil` if the array is empty
    public var last: JSON? {
        get throws {
            try arrayValue.last
        }
    }

    /// Create a JSON array by adding a JSON value to this array
    /// - Parameter json: The JSON value to add to this array
    /// - Returns: The new array
    public func appending(
        _ json: JSON
    ) throws -> JSON {
        try .array(arrayValue + [json])
    }

    /// Create a JSON array by appending the contents of another JSON array
    /// - Parameter jsonArray: The JSON array to add to this array
    /// - Returns: The new array
    public func appending(
        contentsOf jsonArray: JSON
    ) throws -> JSON {
        try .array(arrayValue + jsonArray.arrayValue)
    }

    /// Create a JSON array by appending the contents of a collection of JSON values
    /// - Parameter collection: The collection of JSON values to add to this array
    /// - Returns: The new array
    public func appending(
        contentsOf collection: some Collection<JSON>
    ) throws -> JSON {
        try .array(arrayValue + Array(collection))
    }

    /// Append a JSON value to this JSON array
    /// - Parameter json: The JSON value to append
    public mutating func append(
        _ json: JSON
    ) throws {
        self = try appending(json)
    }

    /// Append the contents of another JSON array to this JSON array
    /// - Parameter jsonArray: The JSON array to append
    public mutating func append(
        contentsOf jsonArray: JSON
    ) throws {
        self = try appending(contentsOf: jsonArray)
    }

    /// Append the contents of a collection of JSON values to this JSON array
    /// - Parameter collection: The collection of JSON values to append
    public mutating func append(
        contentsOf collection: some Collection<JSON>
    ) throws {
        self = try appending(contentsOf: collection)
    }

    /// Returns a Boolean value indicating whether every element of a JSON array satisfies a given predicate.
    /// - Parameter predicate: A closure that takes an element of the JSON array as its argument and returns a Boolean value that indicates whether the passed element satisfies a condition.
    /// - Returns: `true` if the sequence contains only elements that satisfy `predicate`; otherwise, `false`.
    public func allSatisfy(
        _ predicate: (JSON) throws -> Bool
    ) throws -> Bool {
        try arrayValue.allSatisfy(predicate)
    }

    /// Returns a Boolean value indicating whether every key-value pair of a JSON object satisfies a given predicate.
    /// - Parameter predicate: A closure that takes a key-value pair of the JSON object as its argument and returns a Boolean value that indicates whether the passed element satisfies a condition.
    /// - Returns: `true` if the JSON object contains only key-value pairs that satisfy `predicate`; otherwise, `false`.
    public func allSatisfy(
        _ predicate: (Dictionary<String, JSON>.Element) throws -> Bool
    ) throws -> Bool {
        try objectValue.allSatisfy(predicate)
    }

    /// The keys in a JSON object
    public var keys: [String] {
        get throws {
            try objectValue.keys.map(\.self)
        }
    }

    /// The values in a JSON object
    public var values: [JSON] {
        get throws {
            try objectValue.values.map(\.self)
        }
    }

    /// Returns an array containing the results of mapping the given closure over this JSON array's values
    /// - Parameter transform: A mapping closure. `transform` accepts a JSON value as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: An array containing the transformed elements of this JSON array.
    public func map<T>(
        _ transform: (JSON) throws -> T
    ) throws -> [T] {
        try arrayValue.map(transform)
    }

    /// Returns an array containing the results of mapping the given closure over this JSON object's key-value pairs
    /// - Parameter transform: A mapping closure. `transform` accepts a JSON key-value pair as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: An array containing the transformed key-value pairs of this JSON object.
    public func map<T>(
        _ transform: (Dictionary<String, JSON>.Element
        ) throws -> T) throws -> [T] {
        try objectValue.map(transform)
    }

    /// Returns a new dictionary containing the keys of this JSON object with the values transformed by the given closure.
    /// - Parameter transform: A closure that transforms a value. `transform` accepts each JSON value as its parameter and returns a transformed value of the same or of a different type.
    /// - Returns: A dictionary containing the keys and transformed JSON values of this JSON object
    public func mapValues<T>(
        _ transform: (JSON) throws -> T
    ) throws -> [String: T] {
        try objectValue.mapValues(transform)
    }

    /// Returns an array containing the non-`nil` results of calling the given transformation with each element of this JSON array
    /// - Parameter transform: A closure that accepts an element of this JSON array as its argument and returns an optional value.
    /// - Returns: An array of the non-`nil` results of calling `transform` with each element of the JSON array.
    public func compactMap<ElementOfResult>(
        _ transform: (JSON) throws -> ElementOfResult?
    ) throws -> [ElementOfResult] {
        try arrayValue.compactMap(transform)
    }

    /// Returns an array containing the non-`nil` results of calling the given transformation with each key-value pair of this JSON object
    /// - Parameter transform: A closure that accepts a key-value pair of this JSON object as its argument and returns an optional value.
    /// - Returns: An array of the non-`nil` results of calling `transform` with each key-value pair of the JSON object.
    public func compactMap<ElementOfResult>(
        _ transform: (Dictionary<String, JSON>.Element
        ) throws -> ElementOfResult?) throws -> [ElementOfResult] {
        try objectValue.compactMap(transform)
    }

    /// Returns a new dictionary containing only the key-value pairs that have non-`nil` values as the result of transformation by the given closure.
    /// - Parameter transform: A closure that transforms a value. `transform` accepts each value of the JSON object as its parameter and returns an optional transformed value of the same or of a different type.
    /// - Returns: A dictionary containing the keys and non-`nil` transformed values of this dictionary.
    public func compactMapValues<ElementOfResult>(
        _ transform: (JSON) throws -> ElementOfResult?
    ) throws -> [String: ElementOfResult] {
        try objectValue.compactMapValues(transform)
    }

    public func reduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, JSON) throws -> Result
    ) throws -> Result {
        try arrayValue.reduce(initialResult, nextPartialResult)
    }

    public func reduce<Result>(
        into initialResult: Result,
        _ updateAccumulatingResult: (inout Result, JSON) throws -> Void
    ) throws -> Result {
        try arrayValue.reduce(into: initialResult, updateAccumulatingResult)
    }

    public func reduce<Result>(
        _ initialResult: Result,
        _ nextPartialResult: (Result, Dictionary<String, JSON>.Element) throws -> Result
    ) throws -> Result {
        try objectValue.reduce(initialResult, nextPartialResult)
    }

    public func reduce<Result>(
        into initialResult: Result,
        _ updateAccumulatingResult: (inout Result, Dictionary<String, JSON>.Element) throws -> Void
    ) throws -> Result {
        try objectValue.reduce(into: initialResult, updateAccumulatingResult)
    }

    /// Calls the given closure on each element in the JSON array in the same order as a for-in loop.
    /// - Parameter body: The closure to call on each JSON element
    public func forEach(
        _ body: (JSON) throws -> Void
    ) throws {
        try arrayValue.forEach(body)
    }

    /// Calls the given closure on each key-value pair in the JSON object in the same order as a for-in loop.
    /// - Parameter body: The closure to call on each JSON key-value pair
    public func forEach(
        _ body: (Dictionary<String, JSON>.Element) throws -> Void
    ) throws {
        try objectValue.forEach(body)
    }

    /// Insert a value into a JSON array at a provided index
    /// - Parameters:
    ///   - value: The value to insert
    ///   - index: The index to use to insert the value
    public mutating func insert(
        _ value: JSON,
        at index: some BinaryInteger
    ) throws {
        let index = Int(index)
        var array = try arrayValue
        guard array.indices.contains(index) else {
            throw JSONError.indexOutOfBounds(index)
        }
        array.insert(value, at: index)
        self = .array(array)
    }

    /// Insert a value into a JSON array at a provided index
    /// - Parameters:
    ///   - value: The value to insert
    ///   - index: The index to use to insert the value
    public mutating func insert<Index>(
        _ value: JSON,
        at index: Index
    ) throws where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try insert(value, at: index.rawValue)
    }

    public mutating func swapAt(
        _ i: some BinaryInteger,
        _ j: some BinaryInteger
    ) throws {
        var array = try arrayValue
        let i = Int(i)
        let j = Int(j)
        guard array.indices.contains(i) else {
            throw JSONError.indexOutOfBounds(i)
        }
        guard array.indices.contains(j) else {
            throw JSONError.indexOutOfBounds(j)
        }
        array.swapAt(i, j)
        self = .array(array)
    }

    public mutating func swapAt<Index>(
        _ i: Index,
        _ j: Index
    ) throws where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try swapAt(i.rawValue, j.rawValue)
    }

    /// Remove the value at the provided key from a JSON object
    /// - Parameter key: The key to remove
    public mutating func removeValue(
        forKey key: some StringProtocol
    ) throws {
        let `subscript` = Subscript(key: key)
        try removeValue(forSubscript: `subscript`)
    }

    /// Remove the value at the provided key from a JSON object
    /// - Parameter key: The key to remove
    public mutating func removeValue<Key>(
        forKey key: Key
    ) throws where Key: RawRepresentable, Key.RawValue: StringProtocol {
        try removeValue(forKey: key.rawValue)
    }

    /// Remove the value at the provided index from a JSON array
    /// - Parameter index: The index to remove
    public mutating func removeValue(
        atIndex index: some BinaryInteger
    ) throws {
        let `subscript` = Subscript(index: index)
        try removeValue(forSubscript: `subscript`)
    }

    /// Remove the value at the provided index from a JSON array
    /// - Parameter index: The index to remove
    public mutating func removeValue<Index>(
        atIndex index: Index
    ) throws where Index: RawRepresentable, Index.RawValue: BinaryInteger {
        try removeValue(atIndex: index.rawValue)
    }

    /// Remove the value at the provided subscript
    /// - Parameter subscript: The subscript to remove
    public mutating func removeValue(
        forSubscript subscript: Subscript
    ) throws {
        switch (self, `subscript`) {
        case (var .array(array), let .index(index)):
            guard case array.indices = index else {
                throw JSONError.indexOutOfBounds(index)
            }
            array.remove(at: index)
            self = .array(array)
        case (var .object(object), let .key(key)):
            guard object.keys.contains(key) else {
                throw JSONError.keyNotFound(key)
            }
            object.removeValue(forKey: key)
            self = .object(object)
        case (.array, _),
             (.object, _),
             (.string, _),
             (.numeric, _),
             (.literal, _):
            throw JSONError.invalidSubscript(`subscript`)
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
    /// - Returns: A new JSON objectwith the combined keys and values of this JSON object and other.
    public func merging(
        _ other: JSON,
        uniquingKeysWith combine: (JSON, JSON) throws -> JSON = { lhs, rhs in lhs }
    ) throws -> JSON {
        try .object(objectValue.merging(other.objectValue, uniquingKeysWith: combine))
    }

    /// Returns a new JSON object containing the key-value pairs of the object that satisfy the given predicate
    /// - Parameter isIncluded: A closure that takes a key-value pair as its argument and returns a Boolean value indicating whether the pair should be included in the returned JSON object.
    /// - Returns: The filtered JSON object
    public func filter(
        _ isIncluded: (Dictionary<String, JSON>.Element) throws -> Bool
    ) throws -> JSON {
        try .object(objectValue.filter(isIncluded))
    }

    /// Returns a new JSON value containing the elements of the array that satisfy the given predicate
    /// - Parameter isIncluded: A closure ethat takes an element as its argument and returns a Boolean value indicating whether the element should be included in the returned JSON object.
    /// - Returns: The filtered JSON array
    public func filter(
        _ isIncluded: (JSON) throws -> Bool
    ) throws -> JSON {
        try .array(arrayValue.filter(isIncluded))
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
    /// - Returns: The serialized byte buffe
    public func serialize() throws -> Data {
        try Serialization.data(from: self)
    }

    /// Produce a string representation of the JSON object
    /// - Returns: The serialized string
    public func stringify() throws -> String {
        try Serialization.string(from: self)
    }

    /// Write the JSON model to disk
    /// - Parameters:
    ///   - fileURL: The file URL to write to
    ///   - options: Serialization options to use when writing the JSON model to disk
    ///   - shouldOverwrite: Whether or not existing content should be overwritten
    @available(macOS 13.0, macCatalyst 16.0, *)
    @discardableResult
    public func write(
        fileURL: URL,
        options: JSON.Serialization.Options = .default,
        shouldOverwrite: Bool = false
    ) async throws -> Data {
        if FileManager.default.fileExists(atPath: fileURL.path()) {
            if shouldOverwrite {
                try FileManager.default.removeItem(at: fileURL)
                try Task.checkCancellation()
            } else {
                throw JSONError.fileExists(fileURL)
            }
        }

        let data = try Serialization.data(from: self, options: options)
        try data.write(to: fileURL, options: .withoutOverwriting)
        try Task.checkCancellation()
        return data
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameter subscript: A subscript to use for lookup
    /// - Returns: The JSON value at the specified subscript
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
    @available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
    public subscript<each PathComponent>(
        _ subscript: repeat each PathComponent
    ) -> JSON where repeat each PathComponent: JSONSubscriptConvertible {
        get throws {
            var json = self
            for component in repeat each `subscript` {
                json = try json.value(forSubscript: component)
            }
            return json
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to decode into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @_disfavoredOverload
    public subscript<T>(
        _ subscript: Subscript...,
        as type: T.Type = T.self
    ) -> T where T: JSONDecodable {
        get throws {
            var json = self
            try `subscript`.forEach { `subscript` in
                json = try json[`subscript`]
            }
            return try json.decode(into: type)
        }
    }

    /// Retrieve a value from the JSON object using a specified subscript
    /// - Parameters:
    ///   - subscript: A subscript to use for lookup
    ///   - type: The type to decode into. This type can be inferred from the callsite.
    /// - Returns: The JSON value at the specified subscript
    @available(macOS 14.0, macCatalyst 17.0, iOS 17.0, watchOS 10.0, tvOS 17.0, visionOS 1.0, *)
    @_disfavoredOverload
    public subscript<each PathComponent, T>(
        _ subscript: repeat each PathComponent,
        as type: T.Type = T.self
    ) -> T where repeat each PathComponent: JSONSubscriptConvertible, T: JSONDecodable {
        get throws {
            var json = self
            for component in repeat each `subscript` {
                json = try json[component]
            }
            return try json.decode(into: type)
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
    /// Do not
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
        self = .literal(.null)
    }

    // MARK: - CustomStringConvertible

    public var description: String {
        switch self {
        case let .literal(literal):
            literal.description
        case let .numeric(numeric):
            numeric.description
        case let .array(array):
            array.description
        case let .object(object):
            object.description
        case let .string(string):
            string.description
        }
    }

}
