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

import JBirdCore

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
struct ArrayDecoder: UnkeyedDecodingContainer {

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

    mutating func decodeNil() throws -> Bool {
        guard currentIndex < (count ?? 0) else {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(currentIndex)],
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

    mutating func decode(
        _ type: Bool.Type
    ) throws -> Bool {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Float.Type
    ) throws -> Float {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Double.Type
    ) throws -> Double {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Int.Type
    ) throws -> Int {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Int8.Type
    ) throws -> Int8 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Int16.Type
    ) throws -> Int16 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Int32.Type
    ) throws -> Int32 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: Int64.Type
    ) throws -> Int64 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: UInt.Type
    ) throws -> UInt {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: UInt8.Type
    ) throws -> UInt8 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: UInt16.Type
    ) throws -> UInt16 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: UInt32.Type
    ) throws -> UInt32 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: UInt64.Type
    ) throws -> UInt64 {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode(
        _ type: String.Type
    ) throws -> String {
        let (value, index) = try next(type)
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(index)],
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    mutating func decode<T>(
        _ type: T.Type
    ) throws -> T where T: Decodable {
        let (value, index) = try next(type)
        let decoder = InternalDecoder(
            value: value,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: decoder.userInfo
        )
        return try T(from: decoder)
    }

    mutating func nestedContainer<NestedKey>(
        keyedBy type: NestedKey.Type
    ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        let (value, index) = try next(JSON.self)
        let nestedDecoder = InternalDecoder(
            value: value,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: decoder.userInfo
        )
        return try nestedDecoder.container(keyedBy: type)
    }

    mutating func nestedUnkeyedContainer() throws -> any UnkeyedDecodingContainer {
        let (value, index) = try next(JSON.self)

        let nestedDecoder = InternalDecoder(
            value: value,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: decoder.userInfo
        )

        return try nestedDecoder.unkeyedContainer()
    }

    mutating func superDecoder() throws -> any Decoder {
        let (value, index) = try next(JSON.self)
        return InternalDecoder(
            value: value,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: decoder.userInfo
        )
    }

    // MARK: - Private

    private mutating func next<T>(
        _ type: T.Type = T.self
    ) throws -> (JSON, Int) {
        guard !isAtEnd else {
            let context = DecodingError.Context(
                codingPath: codingPath + [IndexKey(currentIndex)],
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

private struct IndexKey: CodingKey {

    init(_ index: Int) {
        self.index = index
    }

    var stringValue: String {
        index.description
    }

    init?(stringValue: String) {
        fatalError()
    }

    var intValue: Int? {
        index
    }

    init?(intValue: Int) {
        self.init(intValue)
    }

    let index: Int

}
