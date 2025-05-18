// JBird
// Deserializer.swift
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
import JBirdParser

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A namespace for JSON deserialization functions
    public enum Deserializer {

        /// The available options for JSON deserialization
        public struct Options: OptionSet, Equatable, Hashable, Sendable {

            // MARK: - API

            /// Whether or not null keys should be omitted from JSON objects when parsing
            public static let omitNullKeys = Options(rawValue: 1 << 0)

            /// Whether or not the root value is allowed to be a fragment
            public static let fragmentsAllowed = Options(rawValue: 1 << 1)

            /// Whether or not the the deserialized JSON is allowed to contain a UTF-8 byte order mark
            public static let allowByteOrderMark = Options(rawValue: 1 << 2)

            /// Whether or not the deserialized JSON is allowed to contain insignificant whitespace
            public static let allowWhitespace = Options(rawValue: 1 << 3)

            /// The default set of options
            public static let `default`: Options = [.fragmentsAllowed, .allowByteOrderMark, .allowWhitespace]

            // MARK: - OptionSet

            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            public let rawValue: Int

        }

        public static func object(
            from string: String,
            options: Options = .default
        ) throws -> JSON {
            guard let data = string.data(using: .utf8) else {
                throw JSONDeserializationError.invalidUTF8String
            }
            return try object(
                from: data,
                options: options
            )
        }

        public static func object(
            from data: Data,
            options: Options = .default
        ) throws -> JSON {
            try parse(data, false, options)
        }

        public static func deserialize(
            _ data: Data,
            options: Options = .default
        ) async throws -> JSON {
            let json = try parse(data, true, options)
            try Task.checkCancellation()
            return json
        }

        public static func deserialize(
            _ string: String,
            options: Options = .default
        ) async throws -> JSON {
            guard let data = string.data(using: .utf8) else {
                throw JSONDeserializationError.invalidUTF8String
            }
            return try await deserialize(data, options: options)
        }

        // MARK: - Private

        @inline(__always)
        private static func parse(
            _ data: Data,
            _ cancellable: Bool,
            _ options: Options
        ) throws -> JSON {
            var jsonValue: OpaquePointer?
            let result = data.withUnsafeBytes { buffer in
                json_parse(
                    buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                    buffer.count,
                    &jsonValue,
                    options.contains(.allowByteOrderMark),
                    options.contains(.allowWhitespace)
                )
            }

            defer {
                json_free(jsonValue)
            }

            guard result == JSON_NO_ERROR else {
                throw JSONDeserializationError.parseFailure(String(cString: json_get_error_message(result)))
            }

            guard let jsonValue else {
                throw JSONDeserializationError.unknown
            }

            @inline(__always)
            func convertToJSON(
                _ value: OpaquePointer,
                _ cancellable: Bool,
                _ options: Options
            ) throws -> JSON {
                if cancellable {
                    try Task.checkCancellation()
                }

                let type = json_get_type(value)

                switch type {
                case JSON_NULL:
                    return .literal(.null)

                case JSON_BOOLEAN:
                    return .literal(json_get_boolean(value) ? .true : .false)

                case JSON_NUMBER_INT:
                    return .numeric(.int(Int(json_get_int(value))))

                case JSON_NUMBER_DOUBLE:
                    return .numeric(.double(json_get_double(value)))

                case JSON_STRING:
                    let str = String(cString: json_get_string(value))
                    return .string(str)

                case JSON_ARRAY:
                    let count = json_get_array_size(value)
                    var array = Array()
                    array.reserveCapacity(count)

                    for i in 0..<count {
                        if let element = json_get_array_element(value, i) {
                            try array.append(convertToJSON(element, cancellable, options))
                        }
                    }

                    return .array(array)

                case JSON_OBJECT:
                    let count = json_get_object_size(value)
                    var dict = Object()
                    dict.reserveCapacity(count)

                    for i in 0..<count {
                        let key = String(cString: json_get_object_key(value, i))
                        if let objValue = json_get_object_value(value, i) {
                            let value = try convertToJSON(objValue, cancellable, options)
                            if !options.contains(.omitNullKeys) || !value.isNull {
                                dict[key] = value
                            }
                        }
                    }

                    if options.contains(.omitNullKeys) {
                        return .object(dict.filter { $0.value != nil })
                    } else {
                        return .object(dict)
                    }

                default:
                    throw JSONDeserializationError.unknown
                }
            }

            let json = try convertToJSON(jsonValue, cancellable, options)
            if !options.contains(.fragmentsAllowed) {
                switch json {
                case .array, .object:
                    return json
                case .literal, .numeric, .string:
                    throw JSONDeserializationError.illegalFragment
                }
            } else {
                return json
            }
        }

    }

}
