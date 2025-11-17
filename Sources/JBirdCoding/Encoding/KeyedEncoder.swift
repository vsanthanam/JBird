// JBird
// KeyedEncoder.swift
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

import JBirdCore

final class KeyedEncoder<Key>: KeyedEncodingContainerProtocol where Key: CodingKey {

    init(
        encoder: InternalEncoder,
        object: JSON.Object
    ) {
        self.encoder = encoder
        self.object = object
    }

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    func encodeNil(forKey key: Key) throws {
        object[key.stringValue] = .null
    }

    func encode(
        _ value: Bool,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: String,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Float,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Double,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Int,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Int8,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Int16,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Int32,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: Int64,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: UInt,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: UInt8,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: UInt16,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: UInt32,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode(
        _ value: UInt64,
        forKey key: Key
    ) throws {
        object[key.stringValue] = JSON(value)
    }

    func encode<T>(_ value: T, forKey key: Key) throws where T : Encodable {
        let nested = InternalEncoder(
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo
        )
        try value.encode(to: nested)
        let encoded = try nested.finalize()
        object[key.stringValue] = encoded
    }

    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type,
        forKey key: Key
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        let nestedEncoder = makeReferencingEncoder(forKey: key)
        return nestedEncoder.container(keyedBy: keyType)
    }

    func nestedUnkeyedContainer(
        forKey key: Key
    ) -> any UnkeyedEncodingContainer {
        let nestedEncoder = makeReferencingEncoder(forKey: key)
        return nestedEncoder.unkeyedContainer()
    }

    func superEncoder() -> any Encoder {
        let key = SuperCodingKey()
        return makeReferencingEncoder(forKey: key)
    }

    func superEncoder(
        forKey key: Key
    ) -> any Encoder {
        makeReferencingEncoder(forKey: key)
    }

    // MARK: - Private

    private let encoder: InternalEncoder

    private var object: JSON.Object {
        didSet {
            encoder.update(to: JSON(object))
        }
    }

    private func makeReferencingEncoder(
        forKey key: any CodingKey
    ) -> InternalEncoder {
        InternalEncoder(
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo,
            onUpdate: { [weak self] json in
                self?.object[key.stringValue] = json
            }
        )
    }

}
