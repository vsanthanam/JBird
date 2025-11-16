// JBird
// Decoder.swift
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
import JBirdCore

extension JSON {

    public final class Decoder {

        public init(
            _ options: JSON.DeserializationOptions = .default
        ) {
            self.options = options
        }

        public let options: JSON.DeserializationOptions

        public func decode<T>(
            _ type: T.Type,
            from data: Data
        ) throws -> T where T: Decodable {
            let json = try JSON.value(for: data, options: options)
            let decoder = InternalDecoder(value: json)
            return try T(from: decoder)
        }

    }

}

final class InternalDecoder: Decoder {

    // MARK: - Initializers

    convenience init(value: JSON) {
        self.init(value: value, codingPath: [], userInfo: [:])
    }

    init(
        value: JSON,
        codingPath: [any CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.value = value
        self.codingPath = codingPath
        self.userInfo = userInfo
    }

    // MARK: - API

    let value: JSON

    // MARK: - Decoder

    let codingPath: [any CodingKey]

    let userInfo: [CodingUserInfoKey : Any]

    func container<Key>(
        keyedBy type: Key.Type
    ) throws -> KeyedDecodingContainer<Key> where Key: CodingKey {
        do {
            let object = try value.objectValue
            let container = KeyedContainer<Key>(
                decoder: self,
                object: object
            )
            return KeyedDecodingContainer(container)
        } catch {
            throw typeMismatch(
                for: JSON.Object.self,
                value: value,
                codingPath: codingPath
            )
        }
    }

    func unkeyedContainer() throws -> any UnkeyedDecodingContainer {
        do {
            let array = try value.arrayValue
            let container = UnkeyedContainer(decoder: self, array: array)
            return container
        } catch {
            throw typeMismatch(
                for: JSON.Array.self,
                value: value,
                codingPath: codingPath
            )
        }
    }

    func singleValueContainer() throws -> any SingleValueDecodingContainer {
        SingleValueContainer(decoder: self, value: value)
    }

}

struct UnkeyedContainer: UnkeyedDecodingContainer {

    init(
        decoder: InternalDecoder,
        array: JSON.Array
    ) {
        self.decoder = decoder
        self.array = array
    }

    var currentIndex: Int = 0

    var count: Int? {
        array.count
    }

    var isAtEnd: Bool {
        currentIndex >= array.count
    }

    var codingPath: [any CodingKey] {
        decoder.codingPath
    }

    mutating func decodeNil() throws -> Bool {
        guard !isAtEnd else {
            throw makeValueNotFound(
                for: Any?.self,
                codingPath: codingPath + [IndexKey(currentIndex)],
                message: "Unkeyed container is at end."
            )
        }
        let value = array[currentIndex]
        if value.isNull {
            currentIndex += 1
            return true
        }
        return false
    }

    mutating func decode(
        _ type: Bool.Type
    ) throws -> Bool {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: String.Type
    ) throws -> String {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Float.Type
    ) throws -> Float {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Double.Type
    ) throws -> Double {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Int.Type
    ) throws -> Int {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Int8.Type
    ) throws -> Int8 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Int16.Type
    ) throws -> Int16 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Int32.Type
    ) throws -> Int32 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: Int64.Type
    ) throws -> Int64 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: UInt.Type
    ) throws -> UInt {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: UInt8.Type
    ) throws -> UInt8 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: UInt16.Type
    ) throws -> UInt16 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: UInt32.Type
    ) throws -> UInt32 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode(
        _ type: UInt64.Type
    ) throws -> UInt64 {
        let (value, path) = try nextValue()
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    mutating func decode<T>(
        _ type: T.Type
    ) throws -> T where T: Decodable {
        let (value, path) = try nextValue()
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try T(from: decoder)
    }

    mutating func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type
    ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let (value, path) = try nextValue()
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try decoder.container(keyedBy: type)
    }

    mutating func nestedUnkeyedContainer() throws -> any UnkeyedDecodingContainer {
        let (value, path) = try nextValue()
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try decoder.unkeyedContainer()
    }

    mutating func superDecoder() throws -> any Decoder {
        let (value, path) = try nextValue()
        return InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
    }

    private let decoder: InternalDecoder
    private let array: JSON.Array

    private mutating func nextValue() throws -> (JSON, [any CodingKey]) {
        guard !isAtEnd else {
            throw makeValueNotFound(
                for: JSON.self,
                codingPath: codingPath + [IndexKey(currentIndex)],
                message: "Unkeyed container is at end."
            )
        }
        let index = currentIndex
        let value = array[index]
        currentIndex += 1
        let path = decoder.codingPath + [IndexKey(index)]
        return (value, path)
    }

}

final class KeyedContainer<Key>: KeyedDecodingContainerProtocol where Key: CodingKey {

    // MARK: - Initilizers

    init(
        decoder: InternalDecoder,
        object: JSON.Object
    ) {
        self.decoder = decoder
        self.object = object
    }

    // MARK: - KeyedDecodingContainerProtocol

    var codingPath: [any CodingKey] {
        decoder.codingPath
    }

    var allKeys: [Key] {
        object.keys.compactMap(Key.init)
    }

    func contains(_ key: Key) -> Bool {
        object[key.stringValue] != nil
    }

    func decodeNil(forKey key: Key) throws -> Bool {
        let (value, _) = try value(forKey: key)
        return value.isNull
    }

    func decode(
        _ type: Bool.Type,
        forKey key: Key
    ) throws -> Bool {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: String.Type,
        forKey key: Key
    ) throws -> String {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Float.Type,
        forKey key: Key
    ) throws -> Float {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Double.Type,
        forKey key: Key
    ) throws -> Double {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Int.Type,
        forKey key: Key
    ) throws -> Int {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Int8.Type,
        forKey key: Key
    ) throws -> Int8 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Int16.Type,
        forKey key: Key
    ) throws -> Int16 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Int32.Type,
        forKey key: Key
    ) throws -> Int32 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: Int64.Type,
        forKey key: Key
    ) throws -> Int64 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: UInt.Type,
        forKey key: Key
    ) throws -> UInt {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: UInt8.Type,
        forKey key: Key
    ) throws -> UInt8 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: UInt16.Type,
        forKey key: Key
    ) throws -> UInt16 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: UInt32.Type,
        forKey key: Key
    ) throws -> UInt32 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode(
        _ type: UInt64.Type,
        forKey key: Key
    ) throws -> UInt64 {
        let (value, path) = try value(forKey: key)
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(
                for: type,
                value: value,
                codingPath: path
            )
        }
    }

    func decode<T>(
        _ type: T.Type,
        forKey key: Key
    ) throws -> T where T: Decodable {
        let (value, path) = try value(forKey: key)
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try T(from: decoder)
    }

    func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type,
        forKey key: Key
    ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let (value, path) = try value(forKey: key)
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try decoder.container(keyedBy: type)
    }

    func nestedUnkeyedContainer(
        forKey key: Key
    ) throws -> any UnkeyedDecodingContainer {
        let (value, path) = try value(forKey: key)
        let decoder = InternalDecoder(
            value: value,
            codingPath: path,
            userInfo: decoder.userInfo
        )
        return try decoder.unkeyedContainer()
    }

    func superDecoder() throws -> any Decoder {
        let key = SuperKey()
        let value = object[key.stringValue] ?? JSON.null
        let decoder = InternalDecoder(
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo
        )
        return decoder
    }

    func superDecoder(
        forKey key: Key
    ) throws -> any Decoder {
        let value = object[key.stringValue] ?? JSON.null
        let decoder = InternalDecoder(
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo
        )
        return decoder
    }

    // MARK: - Private

    private let decoder: InternalDecoder
    private let object: JSON.Object

    private func value(
        forKey key: Key
    ) throws -> (JSON, [any CodingKey]) {
        let path = codingPath + [key]
        guard let value = object[key.stringValue] else {
            let context = DecodingError.Context(
                codingPath: path,
                debugDescription: "No value associated with key '\(key.stringValue)'",
                underlyingError: JSONError.keyNotFound(key.stringValue)
            )
            throw DecodingError.keyNotFound(key, context)
        }
        return (value, path)
    }

}

final class SingleValueContainer: SingleValueDecodingContainer {

    // MARK: - Initializers

    init(
        decoder: InternalDecoder,
        value: JSON
    ) {
        self.decoder = decoder
        self.value = value
    }

    // MARK: - SingleValueDecodingContainer

    var codingPath: [any CodingKey] {
        decoder.codingPath
    }

    func decodeNil() -> Bool {
        value.isNull
    }

    func decode(_ type: Bool.Type) throws -> Bool {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: String.Type) throws -> String {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Float.Type) throws -> Float {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Double.Type) throws -> Double {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Int.Type) throws -> Int {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Int16.Type) throws -> Int16 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Int32.Type) throws -> Int32 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: Int64.Type) throws -> Int64 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: UInt.Type) throws -> UInt {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: UInt8.Type) throws -> UInt8 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: UInt16.Type) throws -> UInt16 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: UInt32.Type) throws -> UInt32 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode(_ type: UInt64.Type) throws -> UInt64 {
        do {
            return try value.decode()
        } catch {
            throw typeMismatch(for: type, value: value, codingPath: codingPath, error)
        }
    }

    func decode<T>(
        _ type: T.Type
    ) throws -> T where T: Decodable {
        let decoder = InternalDecoder(
            value: value,
            codingPath: codingPath,
            userInfo: decoder.userInfo
        )
        return try T(from: decoder)
    }

    // MARK: - Private

    private let decoder: InternalDecoder
    private let value: JSON

}

private func typeMismatch<T>(
    for target: T.Type,
    value: JSON,
    codingPath: [any CodingKey],
    _ error: (any Error)? = nil,
    message: String? = nil
) -> DecodingError {
    let context = DecodingError.Context(
        codingPath: codingPath,
        debugDescription: message ?? "Expected to decode \(T.self) but found \(value.description) instead.",
        underlyingError: error
    )
    return DecodingError.typeMismatch(target, context)
}

private func makeValueNotFound<T>(
    for target: T.Type,
    codingPath: [any CodingKey],
    _ error: (any Error)? = nil,
    message: String
) -> DecodingError {
    let context = DecodingError.Context(
        codingPath: codingPath,
        debugDescription: message
    )
    return DecodingError.valueNotFound(target, context)
}

private struct SuperKey: CodingKey {

    init() {}

    var stringValue: String = "super"

    init?(stringValue: String) {
        fatalError()
    }

    let intValue: Int? = nil

    init?(intValue: Int) {
        fatalError()
    }

}

private struct IndexKey: CodingKey {

    init(_ index: Int) {
        self.index = index
    }

    init?(intValue: Int) {
        self.init(intValue)
    }

    init?(stringValue: String) {
        fatalError()
    }

    var intValue: Int? {
        index
    }

    var stringValue: String {
        index.description
    }

    let index: Int

}
