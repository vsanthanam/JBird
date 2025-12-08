// JBird
// ObjectDecoder.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
final class ObjectDecoder<Key>: KeyedDecodingContainerProtocol where Key: CodingKey {

    // MARK: - Initializer

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
        object.keys.compactMap(Key.init(stringValue:))
    }

    func contains(
        _ key: Key
    ) -> Bool {
        object.keys.contains(key.stringValue)
    }

    func decodeNil(
        forKey key: Key
    ) throws -> Bool {
        try value(forKey: key).isNull
    }

    func decode(
        _ type: Bool.Type,
        forKey key: Key
    ) throws -> Bool {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Float.Type,
        forKey key: Key
    ) throws -> Float {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Double.Type,
        forKey key: Key
    ) throws -> Double {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int.Type,
        forKey key: Key
    ) throws -> Int {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int8.Type,
        forKey key: Key
    ) throws -> Int8 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int16.Type,
        forKey key: Key
    ) throws -> Int16 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int32.Type,
        forKey key: Key
    ) throws -> Int32 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int64.Type,
        forKey key: Key
    ) throws -> Int64 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt.Type,
        forKey key: Key
    ) throws -> UInt {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt8.Type,
        forKey key: Key
    ) throws -> UInt8 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt16.Type,
        forKey key: Key
    ) throws -> UInt16 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt32.Type,
        forKey key: Key
    ) throws -> UInt32 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt64.Type,
        forKey key: Key
    ) throws -> UInt64 {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: String.Type,
        forKey key: Key
    ) throws -> String {
        let value = try value(forKey: key)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [key],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode<T>(
        _ type: T.Type,
        forKey key: Key
    ) throws -> T where T : Decodable {
        let value = try value(forKey: key)
        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo,
            parent: decoder
        )
        return try T(from: nestedDecoder)
    }

    func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type,
        forKey key: Key
    ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey: CodingKey {
        let value = try value(forKey: key)
        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo,
            parent: decoder
        )
        return try nestedDecoder.container(keyedBy: type)
    }

    func nestedUnkeyedContainer(
        forKey key: Key
    ) throws -> any UnkeyedDecodingContainer {
        let value = try value(forKey: key)
        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo,
            parent: decoder
        )
        return try nestedDecoder.unkeyedContainer()
    }

    func superDecoder() throws -> any Decoder {
        let value = object["super"] ?? .object(object)
        return InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [SuperKey()],
            userInfo: decoder.userInfo,
            parent: decoder
        )
    }

    func superDecoder(
        forKey key: Key
    ) throws -> any Decoder {
        let value = try value(forKey: key)
        return InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [key],
            userInfo: decoder.userInfo,
            parent: decoder
        )
    }

    // MARK: - Private

    private let decoder: InternalDecoder
    private let object: JSON.Object

    private func value(forKey key: Key) throws -> JSON {
        guard let value = object[key.stringValue] else {
            throw DecodingError.keyNotFound(key, .init(codingPath: codingPath + [key], debugDescription: "Couldn't find value for key '\(key.stringValue)'"))
        }
        return value
    }

}
