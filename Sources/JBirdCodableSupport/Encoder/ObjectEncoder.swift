// JBird
// ObjectEncoder.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
final class ObjectEncoder<Key>: KeyedEncodingContainerProtocol where Key: CodingKey {

    // MARK: - Initializer

    init(
        encoder: InternalEncoder,
        autoPopContainers: Bool
    ) {
        self.encoder = encoder
        containerIndex = encoder.pushContainer(.object(JSON.Object()))
        self.autoPopContainers = autoPopContainers
    }

    // MARK: - KeyedEncodingContainerProtocol

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    func encodeNil(
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(.null, forKey: encodedKey)
    }

    func encode(
        _ value: Bool,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: String,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: Double,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        try set(JSON.Encoder.encodeDouble(value, codingPath: codingPath + [key]), forKey: encodedKey)
    }

    func encode(
        _ value: Float,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        try set(JSON.Encoder.encodeFloat(value, codingPath: codingPath + [key]), forKey: encodedKey)
    }

    func encode(
        _ value: Int,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: Int8,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: Int16,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: Int32,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: Int64,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: UInt,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: UInt8,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: UInt16,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: UInt32,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode(
        _ value: UInt64,
        forKey key: Key
    ) throws {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        set(JSON(value), forKey: encodedKey)
    }

    func encode<T>(
        _ value: T,
        forKey key: Key
    ) throws where T : Encodable {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo,
            autoPopContainers: false,
            onValueChange: nil
        )
        if let data = value as? Data {
            try JSON.Encoder.encodeData(data, to: nestedEncoder)
        } else if let date = value as? Date {
            try JSON.Encoder.encodeDate(date, to: nestedEncoder)
        } else {
            try value.encode(to: nestedEncoder)
        }
        let encoded = nestedEncoder.popContainer()
        set(encoded, forKey: encodedKey)
    }

    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type,
        forKey key: Key
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var object = encoder.object(at: containerIndex)
            object[encodedKey.stringValue] = json
            encoder.store(container: .object(object), at: containerIndex)
        }
        let container = ObjectEncoder<NestedKey>(encoder: nestedEncoder, autoPopContainers: true)
        return KeyedEncodingContainer(container)
    }

    func nestedUnkeyedContainer(
        forKey key: Key
    ) -> any UnkeyedEncodingContainer {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var object = encoder.object(at: containerIndex)
            object[encodedKey.stringValue] = json
            encoder.store(container: .object(object), at: containerIndex)
        }
        return ArrayEncoder(encoder: nestedEncoder, autoPopContainers: true)
    }

    func superEncoder() -> any Encoder {
        let superKey = SuperCodingKey()
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: superKey)
        return InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [superKey],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var object = encoder.object(at: containerIndex)
            object[encodedKey.stringValue] = json
            encoder.store(container: .object(object), at: containerIndex)
        }
    }

    func superEncoder(
        forKey key: Key
    ) -> any Encoder {
        let encodedKey = JSON.Encoder.encodeKey(path: codingPath, key: key)
        return InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var object = encoder.object(at: containerIndex)
            object[encodedKey.stringValue] = json
            encoder.store(container: .object(object), at: containerIndex)
        }
    }

    // MARK: - Private

    private func set(
        _ json: JSON,
        forKey key: any CodingKey
    ) {
        var object = encoder.object(at: containerIndex)
        object[key.stringValue] = json
        encoder.store(container: .object(object), at: containerIndex)
    }

    private let encoder: InternalEncoder
    private let containerIndex: Int
    private let autoPopContainers: Bool

    // MARK: - Deinit

    deinit {
        if autoPopContainers {
            _ = encoder.popContainer()
        }
    }

}
