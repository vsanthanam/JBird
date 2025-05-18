// JBird
// Serialization.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A namespace for JSON serialization functions
    public enum Serialization {

        /// The availabile options when serializing a `JSON` value into a byte buffer or Swift string
        public struct Options: OptionSet, Equatable, Hashable, Sendable {

            // MARK: - API

            /// Whether or not the serialized JSON should include additional whitespace to improve readability
            public static let prettyPrinted = Options(rawValue: 1 << 0)

            /// Whether or not null keys should be omitted from JSON objects
            public static let omitNullKeys = Options(rawValue: 1 << 1)

            /// Whether or not JSON keys should be sorted alphabetically
            public static let sortedKeys = Options(rawValue: 1 << 2)

            /// Whether or not non-root JSON should be allowed
            public static let allowFragments = Options(rawValue: 1 << 3)

            /// Whether or not the serialized JSON should contain a UTF-8 byte order mark
            public static let includeByteOrderMark = Options(rawValue: 1 << 4)

            /// The default set of options
            public static let `default`: Options = [.allowFragments]

            // MARK: - OptionSet

            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            public let rawValue: Int

        }

        /// Create a Swift string from a ``JSON`` value
        /// - Parameters:
        ///   - json: The JSON value to serialize
        ///   - options: The serialization options
        /// - Returns: A Swift string representing the provided JSON value
        public static func string(
            from json: JSON,
            options: Options = .default
        ) throws -> String {
            let data = try data(from: json, options: options)
            guard let str = String(data: data, encoding: .utf8) else {
                throw JSONSerializationError.utf8conversionFailure
            }
            return str
        }

        /// Create a byte buffer from a ``JSON`` value
        /// - Parameters:
        ///   - json: The JSON value to serialize
        ///   - options: The serialization options
        /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
        public static func data(
            from json: JSON,
            options: Options = .default
        ) throws -> Data {
            try startSerialization(from: json, options: options, isAsync: false)
        }

        public static func serialize<T>(
            _ value: T,
            options: Options = .default
        ) async throws -> Data where T: JSONEncodable {
            let json = JSON(value)
            try Task.checkCancellation()
            return try startSerialization(
                from: json,
                options: options,
                isAsync: true
            )
        }

        public static func stringify<T>(
            _ value: T,
            options: Options = .default
        ) async throws -> String where T: JSONEncodable {
            let data = try await serialize(value, options: options)
            guard let str = String(data: data, encoding: .utf8) else {
                throw JSONSerializationError.utf8conversionFailure
            }
            try Task.checkCancellation()
            return str
        }

        // MARK: - Private

        @inline(__always)
        private static func startSerialization(
            from json: JSON,
            options: Options,
            isAsync: Bool
        ) throws -> Data {
            var bytes = [UInt8]()
            if !options.contains(.allowFragments) {
                switch json {
                case .literal, .numeric, .string:
                    throw JSONSerializationError.invalidFragment
                case .array, .object:
                    break
                }
            }
            if options.contains(.includeByteOrderMark) {
                writeBOM(&bytes)
            }
            try write(json: json, options: options, isAsync: isAsync, options.contains(.prettyPrinted) ? 0 : nil, &bytes)
            return Data(bytes)
        }

        @inline(__always)
        private static func writeBOM(
            _ bytes: inout [UInt8]
        ) {
            bytes += [0xEF, 0xBB, 0xBF]
        }

        @inline(__always)
        private static func write(
            json: JSON,
            options: Options,
            isAsync: Bool,
            _ level: Int?,
            _ bytes: inout [UInt8]
        ) throws {
            if isAsync {
                try Task.checkCancellation()
            }
            switch json {
            case let .literal(literal):
                write(literal: literal, &bytes)
            case let .object(object):
                try write(object: object, options: options, isAsync: isAsync, level, &bytes)
            case let .array(array):
                try write(array: array, options: options, isAsync: isAsync, level, &bytes)
            case let .numeric(numeric):
                try write(numeric: numeric, &bytes)
            case let .string(string):
                write(string: string, &bytes)
            }
        }

        @inline(__always)
        private static func write(
            literal: Literal,
            _ bytes: inout [UInt8]
        ) {
            switch literal {
            case .true:
                bytes += [0x74, 0x72, 0x75, 0x65]
            case .false:
                bytes += [0x66, 0x61, 0x6C, 0x73, 0x65]
            case .null:
                bytes += [0x6E, 0x75, 0x6C, 0x6C]
            }
        }

        @inline(__always)
        private static func write(
            numeric: Numeric,
            _ bytes: inout [UInt8]
        ) throws {
            switch numeric {
            case let .int(value):
                write(integer: value, &bytes)
            case let .double(value):
                try write(double: value, &bytes)
            }
        }

        @inline(__always)
        private static func write(
            integer: Int,
            _ bytes: inout [UInt8]
        ) {
            let str = String(integer)
            bytes += Swift.Array(str.utf8)
        }

        @inline(__always)
        private static func write(
            double: Double,
            _ bytes: inout [UInt8]
        ) throws {
            guard double == double,
                  double != .infinity,
                  double != -.infinity else {
                throw JSONSerializationError.invalidFloat
            }
            let absValue = abs(double)
            if absValue != 0, (absValue >= 1e7 || absValue < 1e-6) {
                let formatter = NumberFormatter()
                formatter.locale = Locale(identifier: "en_US_POSIX")
                formatter.numberStyle = .scientific
                formatter.positiveFormat = "0.################E+0"
                formatter.negativeFormat = "-0.################E+0"
                let str = formatter.string(from: NSNumber(value: double))!
                bytes += str.utf8
            } else {
                bytes += String(double).utf8
            }
        }

        @inline(__always)
        private static func write(
            string: String,
            _ bytes: inout [UInt8]
        ) {
            bytes.append(UInt8(ascii: "\""))
            for scalar in string.unicodeScalars {
                switch scalar.value {
                case 0x00...0x1F:
                    let hex = String(format: "\\u%04X", scalar.value)
                    bytes.append(contentsOf: hex.utf8)
                case 0x22:
                    bytes.append(contentsOf: "\\\"".utf8)
                case 0x5C:
                    bytes.append(contentsOf: "\\\\".utf8)
                case 0x08:
                    bytes.append(contentsOf: "\\b".utf8)
                case 0x0C:
                    bytes.append(contentsOf: "\\f".utf8)
                case 0x0A:
                    bytes.append(contentsOf: "\\n".utf8)
                case 0x0D:
                    bytes.append(contentsOf: "\\r".utf8)
                case 0x09:
                    bytes.append(contentsOf: "\\t".utf8)
                case 0x20...0x7F:
                    bytes.append(UInt8(scalar.value))
                case 0x80...0xFFFF:
                    bytes.append(contentsOf: String(scalar).utf8)
                default:
                    let codepoint = scalar.value - 0x10000
                    let high = 0xD800 + (codepoint >> 10)
                    let low = 0xDC00 + (codepoint & 0x3FF)
                    bytes.append(contentsOf: String(format: "\\u%04X\\u%04X", high, low).utf8)
                }
            }

            bytes.append(UInt8(ascii: "\""))
        }

        @inline(__always)
        private static func write(
            array: Array,
            options: Options,
            isAsync: Bool,
            _ level: Int?,
            _ bytes: inout [UInt8]
        ) throws {
            bytes += [0x5B]

            if array.isEmpty {
                bytes += [0x5D]
                return
            }

            if level != nil {
                bytes += [0x0A] // Newline
            }

            for value in array.dropLast() {
                if let level {
                    writeIndentation(level + 1, &bytes)
                    try write(json: value, options: options, isAsync: isAsync, level + 1, &bytes)
                    bytes += [0x2C, 0x0A]
                } else {
                    try write(json: value, options: options, isAsync: isAsync, level, &bytes)
                    bytes += [0x2C]
                }

            }

            if let lastValue = array.last {
                if let level {
                    writeIndentation(level + 1, &bytes)
                    try write(json: lastValue, options: options, isAsync: isAsync, level + 1, &bytes)
                    bytes += [0x0A]
                } else {
                    try write(json: lastValue, options: options, isAsync: isAsync, level, &bytes)
                }
            }

            if let level {
                writeIndentation(level, &bytes)
            }

            bytes += [0x5D]
        }

        static func write(
            object: Object,
            options: Options,
            isAsync: Bool,
            _ level: Int?,
            _ bytes: inout [UInt8]
        ) throws {
            bytes += [0x7B]

            if object.isEmpty {
                bytes += [0x7D]
                return
            }

            if level != nil {
                bytes += [0x0A] // Newline
            }

            let keys = options.contains(.sortedKeys) ? Swift.Array(object.keys.sorted()) : Swift.Array(object.keys)
            for key in keys.dropLast() {
                let value = object[key].unsafelyUnwrapped
                if value != .null || !options.contains(.omitNullKeys) {
                    if let level {
                        writeIndentation(level + 1, &bytes)
                        write(string: key, &bytes)
                        bytes += [0x3A, 0x20]
                        try write(json: value, options: options, isAsync: isAsync, level + 1, &bytes)
                        bytes += [0x2C, 0x0A]
                    } else {
                        write(string: key, &bytes)
                        bytes += [0x3A]
                        try write(json: value, options: options, isAsync: isAsync, level, &bytes)
                        bytes += [0x2C]
                    }
                }
            }

            if let key = keys.last {
                let value = object[key].unsafelyUnwrapped
                if value != .null || !options.contains(.omitNullKeys) {
                    if let level {
                        writeIndentation(level + 1, &bytes)
                        write(string: key, &bytes)
                        bytes += [0x3A, 0x20]
                        try write(json: value, options: options, isAsync: isAsync, level + 1, &bytes)
                        bytes += [0x0A]
                    } else {
                        write(string: key, &bytes)
                        bytes += [0x3A]
                        try write(json: value, options: options, isAsync: isAsync, level, &bytes)
                    }
                }
            }

            if let level {
                writeIndentation(level, &bytes)
            }

            bytes += [0x7D]
        }

        private static func writeIndentation(
            _ level: Int,
            _ bytes: inout [UInt8]
        ) {
            for _ in 0..<(level * 2) {
                bytes += [0x20]
            }
        }
    }

}
