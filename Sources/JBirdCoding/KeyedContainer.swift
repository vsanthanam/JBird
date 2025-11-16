// JBird
// KeyedContainer.swift
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
        let key = SuperCodingKey()
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
