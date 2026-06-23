// JBird
// Encoder.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
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

    /// An object that encodes an `Encodable`-conforming type into a JSON payload.
    public final class Encoder: Sendable {

        // MARK: - Initializers

        /// Creates a new, reusable JSON encoder with the default formatting settings and encoding strategies.
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

            /// Creates an output formatting option set from its raw bitmask.
            /// - Parameter rawValue: The bitmask backing the option set.
            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            /// The bitmask backing the option set.
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
        /// The [IEEE 754 floating-point specification](https://en.wikipedia.org/wiki/IEEE_754) defines exceptional values, which include infinity and `NaN`.
        public enum NonConformingFloatEncodingStrategy: Sendable {

            /// The strategy that encodes exceptional floating-point values from a specified string representation.
            case convertToString(positiveInfinity: String = "Infinity", negativeInfinity: String = "-Infinity", nan: String = "NaN")

            /// The strategy that throws an error upon encoding an exceptional floating-point value.
            case `throw`

            /// The strategy that replaces exceptional floating-point values with a `null` literal.
            ///
            /// - Warning: Using this encoding strategy may result in encoded values that cannot be reliably decoded to the original encodable source.
            case useNull
        }

        /// A dictionary you use to customize the encoding process by providing contextual information.
        public var userInfo: [CodingUserInfoKey : any Sendable] {
            get {
                _userInfo.strategy
            }
            set {
                _userInfo.strategy = newValue
            }
        }

        /// A value that determines the readability, size, and element order of the encoded JSON object.
        public var outputFormatting: OutputFormatting {
            get {
                _outputFormatting.strategy
            }
            set {
                _outputFormatting.strategy = newValue
            }
        }

        /// A value that determines how to encode a type’s coding keys as JSON keys.
        public var keyEncodingStrategy: KeyEncodingStrategy {
            get {
                _keyEncodingStrategy.strategy
            }
            set {
                _keyEncodingStrategy.strategy = newValue
            }
        }

        /// The strategy used when encoding dates as part of a JSON object.
        ///
        /// The default strategy is the ``JSON/Encoder/DateEncodingStrategy/deferredToDate`` strategy.
        public var dateEncodingStrategy: DateEncodingStrategy {
            get {
                _dateEncodingStrategy.strategy
            }
            set {
                _dateEncodingStrategy.strategy = newValue
            }
        }

        /// The strategy that an encoder uses to encode raw data.
        ///
        /// The default strategy is the ``JSON/Encoder/DataEncodingStrategy/base64`` strategy.
        public var dataEncodingStrategy: DataEncodingStrategy {
            get {
                _dataEncodigStrategy.strategy
            }
            set {
                _dataEncodigStrategy.strategy = newValue
            }
        }

        /// The strategy used by an encoder when it encounters exceptional floating-point values.
        ///
        /// The default strategy is the ``JSON/Encoder/NonConformingFloatEncodingStrategy/throw`` strategy.
        public var nonConformingFloatEncodingStrategy: NonConformingFloatEncodingStrategy {
            get {
                _nonConformingFloatEncodingStrategy.strategy
            }
            set {
                _nonConformingFloatEncodingStrategy.strategy = newValue
            }
        }

        /// Create a JSON payload based on an `Encodable` value.
        ///
        /// - Parameter value: The value to encode
        /// - Returns: A serialized JSON payload, based on the provided `Encodable` value.
        public func encode<T>(
            _ value: T
        ) throws -> Data where T: Encodable {
            try snapshotStrategy {
                let encoder = InternalEncoder.root(userInfo: userInfo)
                if let date = value as? Date {
                    try Encoder.encodeDate(
                        date,
                        to: encoder
                    )
                } else if let data = value as? Data {
                    try Encoder.encodeData(
                        data,
                        to: encoder
                    )
                } else if let url = value as? URL {
                    try Encoder.encodeURL(
                        url,
                        to: encoder
                    )
                } else if let decimal = value as? Decimal {
                    try Encoder.encodeDecimal(
                        decimal,
                        to: encoder
                    )
                } else {
                    try value.encode(to: encoder)
                }
                let json = encoder.finalize()
                return try Encoder.serialize(json)
            }
        }

        /// Create a JSON payload based on an `EncodableWithConfiguration` value and an encoding configuration provider.
        /// - Parameters:
        ///   - value: The value to encode
        ///   - configuration: An encoding configuration
        /// - Returns: A serialized JSON payload, based on the provided `EncodableWithConfiguration` value
        public func encode<T, C>(
            _ value: T,
            configuration: C.Type
        ) throws -> Data where T: EncodableWithConfiguration, C: EncodingConfigurationProviding, T.EncodingConfiguration == C.EncodingConfiguration {
            try snapshotStrategy {
                let encoder = InternalEncoder.root(userInfo: userInfo)
                try value.encode(
                    to: encoder,
                    configuration: configuration.encodingConfiguration
                )
                let json = encoder.finalize()
                return try Encoder.serialize(json)
            }
        }

        /// Create a JSON payload based on an `EncodableWithConfiguration` value and an encoding configuration.
        /// - Parameters:
        ///   - value: The value to encode
        ///   - configuration: An encoding configuration provider
        /// - Returns: A serialized JSON payload, based on the provided `EncodableWithConfiguration` value
        public func encode<T>(
            _ value: T,
            configuration: T.EncodingConfiguration
        ) throws -> Data where T: EncodableWithConfiguration {
            try snapshotStrategy {
                let encoder = InternalEncoder.root(userInfo: userInfo)
                try value.encode(
                    to: encoder,
                    configuration: configuration
                )
                let json = encoder.finalize()
                return try Encoder.serialize(json)
            }
        }

        // MARK: - Private

        private struct EncodingStrategy {
            let keyEncodingStrategy: KeyEncodingStrategy
            let dateEncodingStrategy: DateEncodingStrategy
            let dataEncodingStrategy: DataEncodingStrategy
            let nonConformingFloatEncodingStrategy: NonConformingFloatEncodingStrategy
            let outputFormatting: OutputFormatting
        }

        @TaskLocal
        private static var encodingStrategy: EncodingStrategy? = nil

        private func snapshotStrategy<T>(
            _ fn: () throws -> T
        ) rethrows -> T {
            let encodingStrategy = EncodingStrategy(
                keyEncodingStrategy: keyEncodingStrategy,
                dateEncodingStrategy: dateEncodingStrategy,
                dataEncodingStrategy: dataEncodingStrategy,
                nonConformingFloatEncodingStrategy: nonConformingFloatEncodingStrategy,
                outputFormatting: outputFormatting
            )
            return try Encoder.$encodingStrategy.withValue(encodingStrategy) {
                try fn()
            }
        }

        private static func serialize(
            _ json: JSON
        ) throws -> Data {
            var options: JSON.SerializationOptions = [.fragmentsAllowed, .truncateWholeFloatingPointValues, .escapeForwardSlash]

            if Encoder.encodingStrategy.unsafelyUnwrapped.outputFormatting.contains(.prettyPrinted) {
                options.insert(.prettyPrinted)
            }
            if Encoder.encodingStrategy.unsafelyUnwrapped.outputFormatting.contains(.sortedKeys) {
                options.insert(.sortedKeys)
            }
            if Encoder.encodingStrategy.unsafelyUnwrapped.outputFormatting.contains(.withoutEscapingSlashes) {
                options.remove(.escapeForwardSlash)
            }

            return try JSON.data(
                from: json,
                options: options
            )
        }

        private let _userInfo = CodingStrategy<[CodingUserInfoKey: any Sendable]>([:])
        private let _outputFormatting = CodingStrategy<OutputFormatting>([])
        private let _keyEncodingStrategy = CodingStrategy<KeyEncodingStrategy>(.useDefaultKeys)
        private let _dateEncodingStrategy = CodingStrategy<DateEncodingStrategy>(.deferredToDate)
        private let _dataEncodigStrategy = CodingStrategy<DataEncodingStrategy>(.base64)
        private let _nonConformingFloatEncodingStrategy = CodingStrategy<NonConformingFloatEncodingStrategy>(.throw)

        static func encodeData(
            _ data: Data,
            to encoder: any Swift.Encoder
        ) throws {
            switch encodingStrategy.unsafelyUnwrapped.dataEncodingStrategy {
            case .deferredToData:
                try data.encode(to: encoder)
            case .base64:
                let str = data.base64EncodedString()
                try str.encode(to: encoder)
            case let .custom(fn):
                do {
                    try fn(data, encoder)
                } catch let error as EncodingError {
                    throw error
                } catch {
                    throw EncodingError.invalidValue(
                        data,
                        .init(
                            codingPath: encoder.codingPath,
                            debugDescription: "Couldn't encode data: custom encoding strategy produced an error.",
                            underlyingError: error
                        )
                    )
                }
            }
        }

        static func encodeDate(
            _ date: Date,
            to encoder: any Swift.Encoder
        ) throws {
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
                do {
                    try fn(date, encoder)
                } catch let error as EncodingError {
                    throw error
                } catch {
                    throw EncodingError.invalidValue(
                        date,
                        .init(
                            codingPath: encoder.codingPath,
                            debugDescription: "Couldn't encode date: custom encoding strategy produced an error.",
                            underlyingError: error
                        )
                    )
                }
            case .millisecondsSince1970:
                let val = date.timeIntervalSince1970 * 1000
                try val.encode(to: encoder)
            case .secondsSince1970:
                let val = date.timeIntervalSince1970
                try val.encode(to: encoder)
            }
        }

        static func encodeURL(
            _ url: URL,
            to encoder: any Swift.Encoder
        ) throws {
            // Apple's `JSONEncoder` special-cases `URL`
            // alongside `Date`, `Data`, and `Decimal` — encode the URL as a
            // single JSON string (its `absoluteString`), bypassing
            // `URL.encode(to:)` (which writes a keyed `relative`/`base`
            // container).
            //
            // swift-foundation reference (pinned to commit
            // 8a3e5c98e4673c28c5ce63d010b1a0ee91a9edf2):
            // https://github.com/swiftlang/swift-foundation/blob/8a3e5c98e4673c28c5ce63d010b1a0ee91a9edf2/Sources/FoundationEssentials/JSON/JSONEncoder.swift#L1271-L1273
            try url.absoluteString.encode(to: encoder)
        }

        static func encodeDecimal(
            _ decimal: Decimal,
            to encoder: any Swift.Encoder
        ) throws {
            // Apple's `JSONEncoder` special-cases `Decimal`
            // alongside `Date`, `Data`, and `URL` — it writes the value as a
            // JSON number literal using `Decimal.description`, preserving full
            // decimal precision in the output bytes.
            //
            // JBird's `JSON.Number` is backed by Int or Double, so we encode
            // via the closest matching form: integer-valued Decimals go
            // through Int64 (full fidelity up to Int64.max); fractional or
            // out-of-Int-range values go through Double. This means the byte
            // output matches Apple for values that round-trip cleanly through
            // Int64/Double, and diverges only at precision beyond Double's
            // 15–17 significant digits — an existing limit of `JSON.Number`'s
            // storage.
            //
            // swift-foundation reference (pinned to commit
            // 8a3e5c98e4673c28c5ce63d010b1a0ee91a9edf2):
            // https://github.com/swiftlang/swift-foundation/blob/8a3e5c98e4673c28c5ce63d010b1a0ee91a9edf2/Sources/FoundationEssentials/JSON/JSONEncoder.swift#L1274-L1275
            let nsDecimal = decimal as NSDecimalNumber
            if let int = Int64(exactly: nsDecimal) {
                try int.encode(to: encoder)
            } else {
                try nsDecimal.doubleValue.encode(to: encoder)
            }
        }

        static func encodeDouble(
            _ double: Double,
            codingPath: [any CodingKey]
        ) throws -> JSON {
            switch encodingStrategy.unsafelyUnwrapped.nonConformingFloatEncodingStrategy {
            case let .convertToString(positiveInfinity, negativeInfinity, nan):
                if double.isNaN {
                    return JSON(nan)
                } else if double.isInfinite {
                    return JSON(double.sign == .minus ? negativeInfinity : positiveInfinity)
                } else {
                    return JSON(double)
                }
            case .throw:
                if double.isNaN || double.isInfinite {
                    throw EncodingError.invalidValue(
                        double,
                        .init(
                            codingPath: codingPath,
                            debugDescription: "Encountered a non conforming floating point value",
                            underlyingError: JSON.SerializationError.invalidFloat
                        )
                    )
                }
                return JSON(double)
            case .useNull:
                return .null
            }
        }

        static func encodeFloat(
            _ float: Float,
            codingPath: [any CodingKey]
        ) throws -> JSON {
            switch encodingStrategy.unsafelyUnwrapped.nonConformingFloatEncodingStrategy {
            case let .convertToString(positiveInfinity, negativeInfinity, nan):
                if float.isNaN {
                    return JSON(nan)
                } else if float.isInfinite {
                    return JSON(float.sign == .minus ? negativeInfinity : positiveInfinity)
                } else {
                    return JSON(float)
                }
            case .throw:
                if float.isNaN || float.isInfinite {
                    throw EncodingError.invalidValue(
                        float,
                        .init(
                            codingPath: codingPath,
                            debugDescription: "Encountered a non conforming floating point value",
                            underlyingError: JSON.SerializationError.invalidFloat
                        )
                    )
                }
                return JSON(float)
            case .useNull:
                return .null
            }
        }

        static func encodeKey(
            path: [any CodingKey],
            key: any CodingKey
        ) -> any CodingKey {
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
