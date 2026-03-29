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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// An object that decodes JSON into a `Decodable`-conforming type
    public final class Decoder {

        // MARK: - Initializers

        /// Creates a new, reusable JSON decoder with the default formatting settings and decoding strategies.
        public init() {}

        // MARK: - API

        /// The values that determine how to decode a type’s coding keys from JSON keys.
        ///
        /// - Note: Key decoding strategies other than ``JSON/Decoder/KeyDecodingStrategy/useDefaultKeys`` may have a noticeable performance cost because those strategies may inspect and transform each key.
        public enum KeyDecodingStrategy: Sendable {

            /// A key decoding strategy that converts snake-case keys to camel-case keys.
            case convertFromSnakeCase

            /// A key decoding strategy that doesn’t change key names during decoding.
            ///
            /// This strategy is the strategy used if you don’t specify one.
            case useDefaultKeys

            /// A key decoding strategy defined by the closure you supply.
            case custom(@Sendable ([any CodingKey]) -> any CodingKey)
        }

        /// The strategies available for formatting dates when decoding them from JSON.
        public enum DateDecodingStrategy: Sendable {

            /// The strategy that uses formatting from the Date structure.
            case deferredToDate

            /// The strategy that formats dates according to the ISO 8601 standard.
            case iso8601

            /// The strategy that defers formatting settings to a supplied date formatter.
            case formatted(DateFormatter)

            /// The strategy that formats custom dates by calling a user-defined function.
            case custom(@Sendable (any Swift.Decoder) throws -> Date)

            /// The strategy that decodes dates in terms of milliseconds since midnight UTC on January 1st, 1970.
            case millisecondsSince1970

            /// The strategy that decodes dates in terms of seconds since midnight UTC on January 1st, 1970.
            case secondsSince1970
        }

        /// The strategies for decoding raw data.
        public enum DataDecodingStrategy: Sendable {

            /// The strategy that decodes data using Base 64 decoding.
            case base64

            /// The strategy that decodes data using a user-defined function.
            case custom(@Sendable (any Swift.Decoder) throws -> Data)

            /// The strategy that encodes data using the encoding specified by the data instance itself.
            case deferredToData
        }

        /// The strategies for encoding nonconforming floating-point numbers, also known as IEEE 754 exceptional values.
        ///
        /// The IEEE 754 floating-point specification defines exceptional values, which include infinity and nan.
        public enum NonConformingFloatDecodingStrategy: Sendable {

            /// The strategy that decodes exceptional floating-point values from a specified string representation.
            case convertFromString(positiveInfinity: String = "Infinity", negativeInfinity: String = "-Infinity", nan: String = "NaN")

            /// The strategy that throws an error upon decoding an exceptional floating-point value.
            case `throw`
        }

        /// A value that determines how to decode a type’s coding keys from JSON keys.
        public var keyDecodingStrategy = KeyDecodingStrategy.useDefaultKeys

        /// The strategy used when decoding dates from part of a JSON object.
        ///
        /// The default strategy is ``JSON/Decoder/DateDecodingStrategy/deferredToDate``.
        public var dateDecodingStrategy = DateDecodingStrategy.deferredToDate

        /// The strategy that a decoder uses to decode raw data.
        ///
        /// The default strategy is ``JSON/Decoder/DataDecodingStrategy/base64``.
        public var dataDecodingStrategy = DataDecodingStrategy.base64

        /// The strategy used by a decoder when it encounters exceptional floating-point values.
        ///
        /// The default strategy is ``JSON/Decoder/NonConformingFloatDecodingStrategy/throw``.
        public var nonConformingFloatDecodingStrategy = NonConformingFloatDecodingStrategy.throw

        /// A dictionary you use to customize the decoding process by providing contextual information.
        public var userInfo: [CodingUserInfoKey: any Sendable] = [:]

        /// Decode a JSON payload into a `Decodable` type
        /// - Parameters:
        ///   - type: The type to decode into
        ///   - data: The payload to decode
        /// - Returns: An instance of the decoded type, based on the provided payload
        public func decode<T: Decodable>(
            _ type: T.Type = T.self,
            from data: Data,
        ) throws -> T {
            let json = try JSON.value(
                for: data,
                options: [.fragmentsAllowed, .allowByteOrderMark]
            )
            let decodingStrategy = DecodingStrategy(
                keyDecodingStrategy: keyDecodingStrategy,
                dateDecodingStrategy: dateDecodingStrategy,
                dataDecodingStrategy: dataDecodingStrategy,
                nonConformingFloatDecodingStrategy: nonConformingFloatDecodingStrategy
            )
            return try Decoder.$decodingStrategy.withValue(decodingStrategy) {
                let decoder = InternalDecoder.root(for: json, userInfo: userInfo)
                if type == Date.self {
                    let date = try Decoder.decodeDate(decoder: decoder)
                    return unsafeBitCast(date, to: type)
                } else if type == Data.self {
                    let data = try Decoder.decodeData(decoder: decoder)
                    return unsafeBitCast(data, to: type)
                } else {
                    return try T(from: decoder)
                }
            }
        }

        // MARK: - Private

        struct DecodingStrategy {
            let keyDecodingStrategy: KeyDecodingStrategy
            let dateDecodingStrategy: DateDecodingStrategy
            let dataDecodingStrategy: DataDecodingStrategy
            let nonConformingFloatDecodingStrategy: NonConformingFloatDecodingStrategy
        }

        @TaskLocal
        static var decodingStrategy: DecodingStrategy? = nil

        static func decodeKey(
            path: [any CodingKey],
            key: JSON.Key
        ) -> any CodingKey {
            switch decodingStrategy.unsafelyUnwrapped.keyDecodingStrategy {
            case .useDefaultKeys:
                return ObjectCodingKey(key)
            case .convertFromSnakeCase:
                return CamelCaseCodingKey(key)
            case let .custom(fn):
                let codingKey = ObjectCodingKey(key)
                let path = path + [codingKey]
                return fn(path)
            }
        }

        static func decodeDate(
            decoder: any Swift.Decoder
        ) throws -> Date {
            switch decodingStrategy.unsafelyUnwrapped.dateDecodingStrategy {
            case .deferredToDate:
                return try Date(from: decoder)
            case .iso8601:
                let str = try String(from: decoder)
                let formatter = ISO8601DateFormatter()
                guard let date = formatter.date(from: str) else {
                    throw DecodingError.dataCorrupted(
                        .init(
                            codingPath: decoder.codingPath,
                            debugDescription: "Couldn't decode date using ISO8601 decoding strategy."
                        )
                    )
                }
                return date
            case let .formatted(formatter):
                let str = try String(from: decoder)
                guard let date = formatter.date(from: str) else {
                    throw DecodingError.dataCorrupted(
                        .init(
                            codingPath: decoder.codingPath,
                            debugDescription: "Couldn't decode date using date formatter decoding strategy."
                        )
                    )
                }
                return date
            case let .custom(fn):
                do {
                    return try fn(decoder)
                } catch let error as DecodingError {
                    throw error
                } catch {
                    throw DecodingError.dataCorrupted(
                        .init(
                            codingPath: decoder.codingPath,
                            debugDescription: "Couldn't decode date using cusomg decoding strategy.",
                            underlyingError: error
                        )
                    )
                }
            case .secondsSince1970:
                let interval = try TimeInterval(from: decoder)
                return Date(timeIntervalSince1970: interval)
            case .millisecondsSince1970:
                let interval = try TimeInterval(from: decoder) / 1000.0
                return Date(timeIntervalSince1970: interval)
            }
        }

        static func decodeData(decoder: any Swift.Decoder) throws -> Data {
            switch decodingStrategy.unsafelyUnwrapped.dataDecodingStrategy {
            case .base64:
                let str = try String(from: decoder)
                guard let data = Data(base64Encoded: str) else {
                    throw DecodingError.dataCorrupted(
                        .init(
                            codingPath: decoder.codingPath,
                            debugDescription: "Couldn't decode data using base64 decoding strategy."
                        )
                    )
                }
                return data
            case let .custom(fn):
                do {
                    return try fn(decoder)
                } catch let error as DecodingError {
                    throw error
                } catch {
                    throw DecodingError.dataCorrupted(
                        .init(
                            codingPath: decoder.codingPath,
                            debugDescription: "Couldn't decode data using custom decoding strategy.",
                            underlyingError: error
                        )
                    )
                }
            case .deferredToData:
                return try Data(from: decoder)
            }
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    func decodeDouble() throws -> Double {
        switch JSON.Decoder.decodingStrategy.unsafelyUnwrapped.nonConformingFloatDecodingStrategy {
        case .throw:
            return try convert()
        case let .convertFromString(positiveInfinity, negativeInfinity, nan):
            do {
                return try convert()
            } catch {
                let str = try convert(into: String.self)
                switch str {
                case nan:
                    return .nan
                case positiveInfinity:
                    return .infinity
                case negativeInfinity:
                    return -.infinity
                default:
                    throw error
                }
            }
        }
    }

    func decodeFloat() throws -> Float {
        switch JSON.Decoder.decodingStrategy.unsafelyUnwrapped.nonConformingFloatDecodingStrategy {
        case .throw:
            return try convert()
        case let .convertFromString(positiveInfinity, negativeInfinity, nan):
            do {
                return try convert()
            } catch {
                let str = try convert(into: String.self)
                switch str {
                case nan:
                    return .nan
                case positiveInfinity:
                    return .infinity
                case negativeInfinity:
                    return -.infinity
                default:
                    throw error
                }
            }
        }
    }

}
