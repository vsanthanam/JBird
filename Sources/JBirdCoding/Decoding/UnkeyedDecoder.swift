// JBird
// UnkeyedDecoder.swift
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

struct UnkeyedDecoder: UnkeyedDecodingContainer {

    // MARK: - Initializers

    init(
        decoder: InternalDecoder,
        array: JSON.Array
    ) {
        self.decoder = decoder
        self.array = array
    }

    // MARK: - UnkeyedDecodingContainer

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
                codingPath: codingPath + [IndexCodingKey(currentIndex)],
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

    // MARK: - Private

    private let decoder: InternalDecoder
    private let array: JSON.Array

    private mutating func nextValue() throws -> (JSON, [any CodingKey]) {
        guard !isAtEnd else {
            throw makeValueNotFound(
                for: JSON.self,
                codingPath: codingPath + [IndexCodingKey(currentIndex)],
                message: "Unkeyed container is at end."
            )
        }
        let index = currentIndex
        let value = array[index]
        currentIndex += 1
        let path = decoder.codingPath + [IndexCodingKey(index)]
        return (value, path)
    }

}
