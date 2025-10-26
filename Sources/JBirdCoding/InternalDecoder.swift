// JBird
// InternalDecoder.swift
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

        public init(options: JSON.DeserializationOptions = .default) {
            self.options = options
        }

        public var options: JSON.DeserializationOptions

        public func decode<T>(
            _ type: T.Type = T.self,
            from data: Data
        ) throws -> T where T: Decodable {
            let json = try JSON.value(for: data, options: options)
            let decoder = InternalDecoder(json)
            return try decoder.decode(type)
        }

    }

    fileprivate final class InternalDecoder: Swift.Decoder {

        // MARK: - Initializers

        convenience init(
            _ json: JSON
        ) {
            self.init(value: json, codingPath: [], userInfo: [:])
        }

        // MARK: - API

        let value: JSON

        @discardableResult
        func decode<T>(
            _ type: T.Type = T.self
        ) throws -> T where T: Decodable {
            try T(from: self)
        }

        // MARK: - Decoder

        var codingPath: [any CodingKey]

        var userInfo: [CodingUserInfoKey: Any]

        func container<Key>(
            keyedBy type: Key.Type
        ) throws -> KeyedDecodingContainer<Key> where Key: CodingKey {
            guard case let .object(object) = value else {
                throw Self.makeTypeMismatch(
                    [String: JSON].self,
                    value: value,
                    codingPath: codingPath
                )
            }
            let container = KeyedContainer<Key>(
                decoder: self,
                object: object
            )
            return KeyedDecodingContainer(container)
        }

        func unkeyedContainer() throws -> any UnkeyedDecodingContainer {
            guard case let .array(array) = value else {
                throw Self.makeTypeMismatch(
                    [JSON].self,
                    value: value,
                    codingPath: codingPath
                )
            }
            return UnkeyedContainer(
                decoder: self,
                array: array
            )
        }

        func singleValueContainer() throws -> any SingleValueDecodingContainer {
            SingleValueContainer(
                decoder: self,
                value: value
            )
        }

        // MARK: - Private

        private init(
            value: JSON,
            codingPath: [any CodingKey],
            userInfo: [CodingUserInfoKey: Any]
        ) {
            self.value = value
            self.codingPath = codingPath
            self.userInfo = userInfo
        }

        private struct SingleValueContainer: SingleValueDecodingContainer {

            private let decoder: JSON.InternalDecoder

            private let value: JSON

            init(
                decoder: JSON.InternalDecoder,
                value: JSON
            ) {
                self.decoder = decoder
                self.value = value
            }

            var codingPath: [any CodingKey] {
                decoder.codingPath
            }

            func decodeNil() -> Bool {
                if case .literal(.null) = value {
                    return true
                }
                return false
            }

            func decode(
                _ type: Bool.Type
            ) throws -> Bool {
                try ValueExtractor.bool(
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: String.Type
            ) throws -> String {
                try ValueExtractor.string(
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Double.Type
            ) throws -> Double {
                try ValueExtractor.double(
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Float.Type
            ) throws -> Float {
                try ValueExtractor.float(
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Int.Type
            ) throws -> Int {
                try ValueExtractor.integer(
                    Int.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Int8.Type
            ) throws -> Int8 {
                try ValueExtractor.integer(
                    Int8.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Int16.Type
            ) throws -> Int16 {
                try ValueExtractor.integer(
                    Int16.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Int32.Type
            ) throws -> Int32 {
                try ValueExtractor.integer(
                    Int32.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: Int64.Type
            ) throws -> Int64 {
                try ValueExtractor.integer(
                    Int64.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: UInt.Type
            ) throws -> UInt {
                try ValueExtractor.integer(
                    UInt.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: UInt8.Type
            ) throws -> UInt8 {
                try ValueExtractor.integer(
                    UInt8.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: UInt16.Type
            ) throws -> UInt16 {
                try ValueExtractor.integer(
                    UInt16.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: UInt32.Type
            ) throws -> UInt32 {
                try ValueExtractor.integer(
                    UInt32.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode(
                _ type: UInt64.Type
            ) throws -> UInt64 {
                try ValueExtractor.integer(
                    UInt64.self,
                    from: value,
                    codingPath: decoder.codingPath
                )
            }

            func decode<T>(
                _ type: T.Type
            ) throws -> T where T: Decodable {
                try decoder
                    .replacingValue(with: value)
                    .decode(type)
            }

        }

        private struct KeyedContainer<Key>: KeyedDecodingContainerProtocol where Key: CodingKey {

            private let decoder: JSON.InternalDecoder

            private let object: JSON.Object

            init(
                decoder: JSON.InternalDecoder,
                object: JSON.Object
            ) {
                self.decoder = decoder
                self.object = object
            }

            var codingPath: [any CodingKey] {
                decoder.codingPath
            }

            var allKeys: [Key] {
                object.keys
                    .compactMap(Key.init)
            }

            func contains(
                _ key: Key
            ) -> Bool {
                object[key.stringValue] != nil
            }

            func decodeNil(
                forKey key: Key
            ) throws -> Bool {
                let (value, _) = try valueAndPath(forKey: key)
                if case .literal(.null) = value {
                    return true
                }
                return false
            }

            func decode(
                _ type: Bool.Type,
                forKey key: Key
            ) throws -> Bool {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.bool(
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: String.Type,
                forKey key: Key
            ) throws -> String {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.string(
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Double.Type,
                forKey key: Key
            ) throws -> Double {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.double(
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Float.Type,
                forKey key: Key
            ) throws -> Float {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.float(
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Int.Type,
                forKey key: Key
            ) throws -> Int {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    Int.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Int8.Type,
                forKey key: Key
            ) throws -> Int8 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    Int8.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Int16.Type,
                forKey key: Key
            ) throws -> Int16 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    Int16.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Int32.Type,
                forKey key: Key
            ) throws -> Int32 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    Int32.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: Int64.Type,
                forKey key: Key
            ) throws -> Int64 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    Int64.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: UInt.Type,
                forKey key: Key
            ) throws -> UInt {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    UInt.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: UInt8.Type,
                forKey key: Key
            ) throws -> UInt8 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    UInt8.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: UInt16.Type,
                forKey key: Key
            ) throws -> UInt16 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    UInt16.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: UInt32.Type,
                forKey key: Key
            ) throws -> UInt32 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    UInt32.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode(
                _ type: UInt64.Type,
                forKey key: Key
            ) throws -> UInt64 {
                let (value, path) = try valueAndPath(forKey: key)
                return try ValueExtractor.integer(
                    UInt64.self,
                    from: value,
                    codingPath: path
                )
            }

            func decode<T>(
                _ type: T.Type,
                forKey key: Key
            ) throws -> T where T: Decodable {
                let (value, _) = try valueAndPath(forKey: key)
                return try decoder
                    .nestedDecoder(
                        for: value,
                        at: key
                    )
                    .decode(type)
            }

            func nestedContainer<NestedKey>(
                keyedBy type: NestedKey.Type,
                forKey key: Key
            ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey: CodingKey {
                let (value, _) = try valueAndPath(forKey: key)
                return try decoder
                    .nestedDecoder(
                        for: value,
                        at: key
                    )
                    .container(keyedBy: type)
            }

            func nestedUnkeyedContainer(
                forKey key: Key
            ) throws -> any UnkeyedDecodingContainer {
                let (value, _) = try valueAndPath(forKey: key)
                return try decoder
                    .nestedDecoder(
                        for: value,
                        at: key
                    )
                    .unkeyedContainer()
            }

            func superDecoder() throws -> any Swift.Decoder {
                let key = AnyCodingKey.super
                let value = object[key.stringValue] ?? JSON.null
                return decoder.nestedDecoder(
                    for: value,
                    at: key
                )
            }

            func superDecoder(
                forKey key: Key
            ) throws -> any Swift.Decoder {
                let value = object[key.stringValue] ?? JSON.null
                return decoder.nestedDecoder(
                    for: value,
                    at: key
                )
            }

            private func valueAndPath(
                forKey key: Key
            ) throws -> (JSON, [any CodingKey]) {
                let path = decoder.path(byAppending: key)
                guard let value = object[key.stringValue] else {
                    let context = DecodingError.Context(
                        codingPath: path,
                        debugDescription: "No value associated with key \(key.stringValue)."
                    )
                    throw DecodingError.keyNotFound(key, context)
                }
                return (value, path)
            }

        }

        private struct UnkeyedContainer: UnkeyedDecodingContainer {

            private let decoder: JSON.InternalDecoder

            private let array: JSON.Array

            var codingPath: [any CodingKey]

            var currentIndex: Int = 0

            init(
                decoder: JSON.InternalDecoder,
                array: JSON.Array
            ) {
                self.decoder = decoder
                self.array = array
                self.codingPath = decoder.codingPath
            }

            var count: Int? {
                array.count
            }

            var isAtEnd: Bool {
                currentIndex >= array.count
            }

            mutating func decodeNil() throws -> Bool {
                guard !isAtEnd else {
                    throw JSON.InternalDecoder.makeValueNotFound(
                        Any?.self,
                        codingPath: decoder.path(byAppendingIndex: currentIndex),
                        description: "Unkeyed container is at end."
                    )
                }
                if case .literal(.null) = array[currentIndex] {
                    currentIndex += 1
                    return true
                }
                return false
            }

            mutating func decode(
                _ type: Bool.Type
            ) throws -> Bool {
                let (value, path) = try nextValue()
                return try ValueExtractor.bool(
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: String.Type
            ) throws -> String {
                let (value, path) = try nextValue()
                return try ValueExtractor.string(
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Double.Type
            ) throws -> Double {
                let (value, path) = try nextValue()
                return try ValueExtractor.double(
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Float.Type
            ) throws -> Float {
                let (value, path) = try nextValue()
                return try ValueExtractor.float(
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Int.Type
            ) throws -> Int {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    Int.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Int8.Type
            ) throws -> Int8 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    Int8.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Int16.Type
            ) throws -> Int16 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    Int16.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Int32.Type
            ) throws -> Int32 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    Int32.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: Int64.Type
            ) throws -> Int64 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    Int64.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: UInt.Type
            ) throws -> UInt {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    UInt.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: UInt8.Type
            ) throws -> UInt8 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    UInt8.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: UInt16.Type
            ) throws -> UInt16 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    UInt16.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: UInt32.Type
            ) throws -> UInt32 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    UInt32.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode(
                _ type: UInt64.Type
            ) throws -> UInt64 {
                let (value, path) = try nextValue()
                return try ValueExtractor.integer(
                    UInt64.self,
                    from: value,
                    codingPath: path
                )
            }

            mutating func decode<T>(
                _ type: T.Type
            ) throws -> T where T: Decodable {
                let (value, index) = try nextRawValue()
                return try decoder
                    .nestedDecoder(
                        for: value,
                        atIndex: index
                    )
                    .decode(type)
            }

            mutating func nestedContainer<NestedKey>(
                keyedBy type: NestedKey.Type
            ) throws -> KeyedDecodingContainer<NestedKey> where NestedKey: CodingKey {
                let (value, index) = try nextRawValue()
                return try decoder
                    .nestedDecoder(
                        for: value,
                        atIndex: index
                    )
                    .container(keyedBy: type)
            }

            mutating func nestedUnkeyedContainer() throws -> any UnkeyedDecodingContainer {
                let (value, index) = try nextRawValue()
                return try decoder
                    .nestedDecoder(
                        for: value,
                        atIndex: index
                    )
                    .unkeyedContainer()
            }

            mutating func superDecoder() throws -> any Swift.Decoder {
                let (value, index) = try nextRawValue()
                return decoder.nestedDecoder(
                    for: value,
                    atIndex: index
                )
            }

            private mutating func nextRawValue() throws -> (JSON, Int) {
                guard !isAtEnd else {
                    throw JSON.InternalDecoder.makeValueNotFound(
                        JSON.self,
                        codingPath: decoder.path(byAppendingIndex: currentIndex),
                        description: "Unkeyed container is at end."
                    )
                }
                let index = currentIndex
                let value = array[index]
                currentIndex += 1
                return (value, index)
            }

            private mutating func nextValue() throws -> (JSON, [any CodingKey]) {
                let (value, index) = try nextRawValue()
                let path = decoder.path(byAppendingIndex: index)
                return (value, path)
            }

        }

        private enum ValueExtractor {

            static func bool(
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> Bool {
                guard case let .literal(literal) = value else {
                    throw JSON.InternalDecoder.makeTypeMismatch(
                        Bool.self,
                        value: value,
                        codingPath: codingPath
                    )
                }
                switch literal {
                case .true:
                    return true
                case .false:
                    return false
                case .null:
                    throw JSON.InternalDecoder.makeTypeMismatch(
                        Bool.self,
                        value: value,
                        codingPath: codingPath
                    )
                }
            }

            static func string(
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> String {
                guard case let .string(string) = value else {
                    throw JSON.InternalDecoder.makeTypeMismatch(
                        String.self,
                        value: value,
                        codingPath: codingPath
                    )
                }
                return string
            }

            static func number(
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> JSON.Number {
                guard case let .number(number) = value else {
                    throw JSON.InternalDecoder.makeTypeMismatch(
                        Double.self,
                        value: value,
                        codingPath: codingPath
                    )
                }
                return number
            }

            static func double(
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> Double {
                let number = try number(
                    from: value,
                    codingPath: codingPath
                )
                switch number {
                case let .int(int):
                    return Double(int)
                case let .double(double):
                    guard double.isFinite else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Parsed number is not finite."
                        )
                    }
                    return double
                }
            }

            static func float(
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> Float {
                let number = try number(
                    from: value,
                    codingPath: codingPath
                )
                switch number {
                case let .int(int):
                    let result = Float(int)
                    guard result.isFinite else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Parsed number is not finite."
                        )
                    }
                    return result
                case let .double(double):
                    guard double.isFinite else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Parsed number is not finite."
                        )
                    }
                    let result = Float(double)
                    guard result.isFinite else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Parsed number is not finite."
                        )
                    }
                    return result
                }
            }

            static func integer<T>(
                _ type: T.Type,
                from value: JSON,
                codingPath: [any CodingKey]
            ) throws -> T where T: FixedWidthInteger {
                let number = try number(
                    from: value,
                    codingPath: codingPath
                )
                switch number {
                case let .int(intValue):
                    guard let result = T(exactly: intValue) else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Integer out of bounds for \(T.self)."
                        )
                    }
                    return result
                case let .double(doubleValue):
                    guard doubleValue.isFinite else {
                        throw JSON.InternalDecoder.makeDataCorrupted(
                            codingPath: codingPath,
                            description: "Parsed number is not finite."
                        )
                    }
                    let integral = doubleValue.rounded(.towardZero)
                    guard integral == doubleValue else {
                        throw JSON.InternalDecoder.makeTypeMismatch(
                            T.self,
                            value: value,
                            codingPath: codingPath,
                            description: "Expected integral numeric value for \(T.self)."
                        )
                    }
                    if doubleValue >= 0 {
                        let unsigned = UInt64(integral)
                        guard Double(unsigned) == doubleValue,
                              let result = T(exactly: unsigned) else {
                            throw JSON.InternalDecoder.makeDataCorrupted(
                                codingPath: codingPath,
                                description: "Integer out of bounds for \(T.self)."
                            )
                        }
                        return result
                    } else {
                        let signed = Int64(integral)
                        guard Double(signed) == doubleValue,
                              let result = T(exactly: signed) else {
                            throw JSON.InternalDecoder.makeDataCorrupted(
                                codingPath: codingPath,
                                description: "Integer out of bounds for \(T.self)."
                            )
                        }
                        return result
                    }
                }
            }
        }

        @usableFromInline
        struct AnyCodingKey: CodingKey {

            @usableFromInline
            var stringValue: String

            @usableFromInline
            var intValue: Int?

            @usableFromInline
            init(
                _ base: any CodingKey
            ) {
                stringValue = base.stringValue
                intValue = base.intValue
            }

            @usableFromInline
            init?(
                stringValue: String
            ) {
                self.stringValue = stringValue
                self.intValue = nil
            }

            @usableFromInline
            init?(
                intValue: Int
            ) {
                self.stringValue = intValue.description
                self.intValue = intValue
            }

            @usableFromInline
            static let `super` = AnyCodingKey(stringValue: "super")!

        }

        fileprivate func path(
            byAppending key: any CodingKey
        ) -> [any CodingKey] {
            var path = codingPath
            path.append(AnyCodingKey(key))
            return path
        }

        fileprivate func path(
            byAppending key: AnyCodingKey
        ) -> [any CodingKey] {
            var path = codingPath
            path.append(key)
            return path
        }

        fileprivate func path(
            byAppendingIndex index: Int
        ) -> [any CodingKey] {
            guard let key = AnyCodingKey(intValue: index) else {
                return codingPath
            }
            var path = codingPath
            path.append(key)
            return path
        }

        fileprivate func nestedDecoder(
            for value: JSON,
            at key: any CodingKey
        ) -> JSON.InternalDecoder {
            JSON.InternalDecoder(
                value: value,
                codingPath: path(byAppending: key),
                userInfo: userInfo
            )
        }

        fileprivate func nestedDecoder(
            for value: JSON,
            at key: AnyCodingKey
        ) -> JSON.InternalDecoder {
            JSON.InternalDecoder(
                value: value,
                codingPath: path(byAppending: key),
                userInfo: userInfo
            )
        }

        fileprivate func nestedDecoder(
            for value: JSON,
            atIndex index: Int
        ) -> JSON.InternalDecoder {
            JSON.InternalDecoder(
                value: value,
                codingPath: path(byAppendingIndex: index),
                userInfo: userInfo
            )
        }

        fileprivate func replacingValue(
            with value: JSON
        ) -> JSON.InternalDecoder {
            JSON.InternalDecoder(
                value: value,
                codingPath: codingPath,
                userInfo: userInfo
            )
        }

        fileprivate static func makeTypeMismatch<T>(
            _ type: T.Type,
            value: JSON,
            codingPath: [any CodingKey],
            description: String? = nil
        ) -> DecodingError {
            let debugDescription = description ?? "Expected to decode \(T.self) but found \(value.description) instead."
            return DecodingError.typeMismatch(
                T.self,
                DecodingError.Context(
                    codingPath: codingPath,
                    debugDescription: debugDescription
                )
            )
        }

        fileprivate static func makeValueNotFound<T>(
            _ type: T.Type,
            codingPath: [any CodingKey],
            description: String
        ) -> DecodingError {
            DecodingError.valueNotFound(
                T.self,
                DecodingError.Context(
                    codingPath: codingPath,
                    debugDescription: description
                )
            )
        }

        fileprivate static func makeDataCorrupted(
            codingPath: [any CodingKey],
            description: String
        ) -> DecodingError {
            DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: codingPath,
                    debugDescription: description
                )
            )
        }

    }

}
