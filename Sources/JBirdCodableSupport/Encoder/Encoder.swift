// JBird
// Encoder.swift
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

    /// Creates a new, reusable JSON encoder with the default formatting settings and encoding strategies.
    public final class Encoder {

        // MARK: - Initializers

        /// Create a JSON encoder
        public init() {}

        // MARK: - API

        /// The output formatting options that determine the readability, size, and element order of an encoded JSON object.
        public struct OutputFormatting: OptionSet, Sendable, Equatable {

            // MARK: - API

            /// The output formatting option that uses ample white space and indentation to make output easy to read.
            public static let prettyPrinted = OutputFormatting(rawValue: 1 << 0)

            /// The output formatting option that sorts keys in lexicographic order.
            public static let sortedKeys = OutputFormatting(rawValue: 1 << 1)

            /// The output formatting option specifies that the output doesn’t prefix slash characters with escape characters.
            public static let withoutEscapingSlashes = OutputFormatting(rawValue: 1 << 2)

            // MARK: - OptionSet

            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            public let rawValue: Int

        }

        /// The values that determine how to encode a type’s coding keys as JSON keys.
        ///
        /// - Note: Key encoding strategies other than ``JSON/Encoder/KeyEncodingStrategy/useDefaultKeys`` may have a noticeable performance cost because those strategies may inspect and transform each key.
        public enum KeyEncodingStrategy: Sendable {

            /// A key encoding strategy that converts camel-case keys to snake-case keys.
            case convertToSnakeCase

            /// A key encoding strategy that doesn’t change key names during encoding.
            case useDefaultKeys

            /// A key encoding strategy defined by the closure you supply.
            case custom(@Sendable ([any CodingKey]) -> any CodingKey)
        }

        /// The formatting strategies available for formatting dates when encoding a date as JSON.
        public enum DateEncodingStrategy: Sendable {

            /// The strategy that uses formatting from the Date structure.
            case deferredToDate

            /// The strategy that formats dates according to the ISO 8601 and RFC 3339 standards.
            case iso8601

            /// The strategy that defers formatting settings to a supplied date formatter.
            case formatted(DateFormatter)

            /// The strategy that formats custom dates by calling a user-defined function.
            case custom(@Sendable (Date, any Swift.Encoder) throws -> Void)

            /// The strategy that encodes dates in terms of milliseconds since midnight UTC on January 1, 1970.
            case millisecondsSince1970

            /// The strategy that encodes dates in terms of seconds since midnight UTC on January 1, 1970.
            case secondsSince1970
        }

        /// The strategies for encoding raw data.
        public enum DataEncodingStrategy: Sendable {

            /// The strategy that encodes data using Base 64 encoding.
            case base64

            /// The strategy that encodes data using a user-defined function.
            case custom(@Sendable (Data, any Swift.Encoder) throws -> Void)

            /// The strategy that encodes data using the encoding specified by the data instance itself.
            case deferredToData
        }

        /// The strategies for encoding nonconforming floating-point numbers, also known as IEEE 754 exceptional values.
        ///
        /// The IEEE 754 floating-point specification defines exceptional values, which include infinity and `NaN`.
        public enum NonConformingFloatEncodingStrategy: Sendable {

            /// The strategy that encodes exceptional floating-point values from a specified string representation.
            case convertToString(positiveInfinity: String, negativeInfinity: String, nan: String)

            /// The strategy that throws an error upon encoding an exceptional floating-point value.
            case `throw`
        }

        /// A dictionary you use to customize the encoding process by providing contextual information.
        public var userInfo: [CodingUserInfoKey : any Sendable] = [:]

        /// A value that determines the readability, size, and element order of the encoded JSON object.
        public var outputFormatting: OutputFormatting = []

        /// A value that determines how to encode a type’s coding keys as JSON keys.
        public var keyEncodingStrategy = KeyEncodingStrategy.useDefaultKeys

        /// The strategy used when encoding dates as part of a JSON object.
        ///
        /// The default strategy is the ``JSON/Encoder/DateEncodingStrategy/deferredToDate`` strategy.
        public var dateEncodingStrategy = DateEncodingStrategy.deferredToDate

        /// The strategy that an encoder uses to encode raw data.
        ///
        /// The default strategy is the ``JSON/Encoder/DataEncodingStrategy/base64`` strategy.
        public var dataEncodingStrategy = DataEncodingStrategy.base64

        /// The strategy used by an encoder when it encounters exceptional floating-point values.
        ///
        /// The default strategy is the ``JSON/Encoder/NonConformingFloatEncodingStrategy/throw`` strategy.
        public var nonConformingFloatEncodingStrategy = NonConformingFloatEncodingStrategy.throw

        /// Create a JSON payload based on an `Encodable` type
        /// - Parameter value: The type to encode
        /// - Returns: A serialized JSON payload, based on the provided `Encodable` type.
        public func encode(
            _ value: some Encodable
        ) throws -> Data {
            let encodingStrategy = EncodingStrategy(
                keyEncodingStrategy: keyEncodingStrategy,
                dateEncodingStrategy: dateEncodingStrategy,
                dataEncodingStrategy: dataEncodingStrategy,
                nonConformingFloatEncodingStrategy: nonConformingFloatEncodingStrategy
            )

            let json = try Encoder.$encodingStrategy.withValue(encodingStrategy) {
                let encoder = InternalEncoder.root(userInfo: userInfo)
                if let date = value as? Date {
                    try Encoder.encodeDate(date, to: encoder)
                } else if let data = value as? Data {
                    try Encoder.encodeData(data, to: encoder)
                } else {
                    try value.encode(to: encoder)
                }
                return encoder.finalize()
            }

            var options: JSON.SerializationOptions = [.fragmentsAllowed, .truncateWholeFloatingPointValues, .escapeForwardSlash]

            if outputFormatting.contains(.prettyPrinted) {
                options.insert(.prettyPrinted)
            }
            if outputFormatting.contains(.sortedKeys) {
                options.insert(.sortedKeys)
            }
            if outputFormatting.contains(.withoutEscapingSlashes) {
                options.remove(.escapeForwardSlash)
            }

            return try JSON.data(
                from: json,
                options: options
            )
        }

        // MARK: - Private

        private struct EncodingStrategy: Sendable {
            let keyEncodingStrategy: KeyEncodingStrategy
            let dateEncodingStrategy: DateEncodingStrategy
            let dataEncodingStrategy: DataEncodingStrategy
            let nonConformingFloatEncodingStrategy: NonConformingFloatEncodingStrategy
        }

        @TaskLocal
        private static var encodingStrategy: EncodingStrategy? = nil

        static func encodeData(_ data: Data, to encoder: any Swift.Encoder) throws {
            switch encodingStrategy.unsafelyUnwrapped.dataEncodingStrategy {
            case .deferredToData:
                try data.encode(to: encoder)
            case .base64:
                let str = data.base64EncodedString()
                try str.encode(to: encoder)
            case let .custom(fn):
                try fn(data, encoder)
            }
        }

        static func encodeDate(_ date: Date, to encoder: any Swift.Encoder) throws {
            switch encodingStrategy.unsafelyUnwrapped.dateEncodingStrategy {
            case .deferredToDate:
                try date.encode(to: encoder)
            case .iso8601:
                let formatter = ISO8601DateFormatter()
                let str = formatter.string(from: date)
                try str.encode(to: encoder)
            case let .formatted(f):
                let str = f.string(from: date)
                try str.encode(to: encoder)
            case let .custom(fn):
                try fn(date, encoder)
            case .millisecondsSince1970:
                let val = date.timeIntervalSince1970.rounded(.down) * 1000
                try val.encode(to: encoder)
            case .secondsSince1970:
                let val = date.timeIntervalSince1970.rounded(.down)
                try val.encode(to: encoder)
            }
        }

        static func encodeDouble(_ double: Double) -> JSON {
            switch encodingStrategy.unsafelyUnwrapped.nonConformingFloatEncodingStrategy {
            case let .convertToString(positiveInfinity, negativeInfinity, nan):
                switch double {
                case .nan:
                    JSON(nan)
                case .infinity:
                    JSON(positiveInfinity)
                case -.infinity:
                    JSON(negativeInfinity)
                default:
                    JSON(double)
                }
            case .throw:
                JSON(double)
            }
        }

        static func encodeFloat(_ float: Float) -> JSON {
            switch encodingStrategy.unsafelyUnwrapped.nonConformingFloatEncodingStrategy {
            case let .convertToString(positiveInfinity, negativeInfinity, nan):
                switch float {
                case .nan:
                    JSON(nan)
                case .infinity:
                    JSON(positiveInfinity)
                case -.infinity:
                    JSON(negativeInfinity)
                default:
                    JSON(float)
                }
            case .throw:
                JSON(float)
            }
        }

        static func encodeKey(path: [any CodingKey], key: any CodingKey) -> any CodingKey {
            switch encodingStrategy.unsafelyUnwrapped.keyEncodingStrategy {
            case .convertToSnakeCase:
                return SnakeCaseCodingKey(key)
            case .useDefaultKeys:
                return key
            case let .custom(fn):
                let path = path + [key]
                return fn(path)
            }
        }

    }

}
