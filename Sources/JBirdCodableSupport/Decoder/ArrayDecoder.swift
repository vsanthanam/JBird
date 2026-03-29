// JBird
// ArrayDecoder.swift
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
final class ArrayDecoder: UnkeyedDecodingContainer {

    // MARK: - Initializers

    init(
        decoder: InternalDecoder,
        array: JSON.Array
    ) {
        self.decoder = decoder
        self.array = array
    }

    // MARK: - UnkeyedDecodingContainer

    var count: Int? {
        array.count
    }

    var isAtEnd: Bool {
        currentIndex >= (count ?? 0)
    }

    var currentIndex: Int = 0

    var codingPath: [any CodingKey] {
        decoder.codingPath
    }

    func decodeNil() throws -> Bool {
        guard currentIndex < (count ?? 0) else {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(currentIndex)],
                debugDescription: "Unkeyed container is at end."
            )
            throw DecodingError.valueNotFound(Any?.self, context)
        }

        let value = array[currentIndex]

        if value.isNull {
            currentIndex += 1
            return true
        } else {
            return false
        }
    }

    func decode(
        _ type: Bool.Type
    ) throws -> Bool {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Float.Type
    ) throws -> Float {
        let (value, index) = try next(type)
        do {
            return try value.decodeFloat()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Double.Type
    ) throws -> Double {
        let (value, index) = try next(type)
        do {
            return try value.decodeDouble()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Int.Type
    ) throws -> Int {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Int8.Type
    ) throws -> Int8 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Int16.Type
    ) throws -> Int16 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Int32.Type
    ) throws -> Int32 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: Int64.Type
    ) throws -> Int64 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: UInt.Type
    ) throws -> UInt {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: UInt8.Type
    ) throws -> UInt8 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: UInt16.Type
    ) throws -> UInt16 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: UInt32.Type
    ) throws -> UInt32 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: UInt64.Type
    ) throws -> UInt64 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
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
        _ type: String.Type
    ) throws -> String {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode<T: Decodable>(
        _ type: T.Type
    ) throws -> T {
        let (value, index) = try next(type)
        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [IndexCodingKey(index)],
            userInfo: decoder.userInfo,
            parent: decoder
        )
        if type == Date.self {
            let date = try JSON.Decoder.decodeDate(decoder: decoder)
            return unsafeBitCast(date, to: type)
        } else if type == Data.self {
            let data = try JSON.Decoder.decodeData(decoder: decoder)
            return unsafeBitCast(data, to: type)
        } else {
            return try T(from: nestedDecoder)
        }

    }

    func nestedContainer<NestedKey: CodingKey>(
        keyedBy type: NestedKey.Type
    ) throws -> KeyedDecodingContainer<NestedKey> {
        let (value, index) = try next(JSON.self)
        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [IndexCodingKey(index)],
            userInfo: decoder.userInfo,
            parent: decoder
        )
        return try nestedDecoder.container(keyedBy: type)
    }

    func nestedUnkeyedContainer() throws -> any UnkeyedDecodingContainer {
        let (value, index) = try next(JSON.self)

        let nestedDecoder = InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [IndexCodingKey(index)],
            userInfo: decoder.userInfo,
            parent: decoder
        )

        return try nestedDecoder.unkeyedContainer()
    }

    func superDecoder() throws -> any Decoder {
        let (value, index) = try next(JSON.self)
        return InternalDecoder(
            storage: decoder.storage,
            value: value,
            codingPath: codingPath + [IndexCodingKey(index)],
            userInfo: decoder.userInfo,
            parent: decoder
        )
    }

    // MARK: - Private

    private func next<T>(
        _ type: T.Type = T.self
    ) throws -> (JSON, Int) {
        guard !isAtEnd else {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexCodingKey(currentIndex)],
                debugDescription: "Couldn't find value"
            )
            throw DecodingError.valueNotFound(type, context)
        }
        let value = array[currentIndex]
        defer {
            currentIndex += 1
        }
        return (value, currentIndex)
    }

    private let decoder: InternalDecoder
    private let array: JSON.Array

}
