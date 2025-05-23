// JBird
// Deserialization.swift
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
#if BUILD_XCFRAMEWORK
    @_implementationOnly import JBirdParser
#else
    import JBirdParser
#endif

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A namespace for JSON deserialization functions
    public enum Deserialization {

        /// The available options for JSON deserialization
        public struct Options: OptionSet, Equatable, Hashable, Sendable {

            // MARK: - API

            /// Whether or not JSON keys with `null` values should be omitted from JSON objects when parsing
            public static let omitNullKeys = Options(rawValue: 1 << 0)

            /// Whether or not `null` values should be omitted when parsing
            public static let omitNullValues = Options(rawValue: 1 << 1)

            /// Whether or not the root value is allowed to be a fragment
            public static let fragmentsAllowed = Options(rawValue: 1 << 2)

            /// Whether or not the the deserialized JSON is allowed to contain a UTF-8 byte order mark
            public static let allowByteOrderMark = Options(rawValue: 1 << 3)

            /// Whether or not the deserialized JSON is allowed to contain insignificant whitespace
            public static let requireMinified = Options(rawValue: 1 << 4)

            /// The default set of options
            public static let `default`: Options = [.fragmentsAllowed, .allowByteOrderMark]

            // MARK: - OptionSet

            public init(rawValue: Int) {
                self.rawValue = rawValue
            }

            public let rawValue: Int

        }

        /// Create a typed JSON value from a JSON string
        /// - Parameters:
        ///   - string: The JSON string
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func value(
            from string: String,
            options: Options = .default
        ) throws -> JSON {
            try value(
                from: string.data(using: .utf8)!,
                options: options
            )
        }

        /// Create a typed JSON value from a UTF-8 encoded byte buffer
        /// - Parameters:
        ///   - data: The byte buffer
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func value(
            from data: Data,
            options: Options = .default
        ) throws -> JSON {
            try parse(data, options)
        }

        /// Create a typed JSON value from a JSON string, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful whe ndeserializing arge payloads.
        /// - Parameters:
        ///   - data: The JSON string
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func deserialize(
            _ data: Data,
            options: Options = .default
        ) async throws -> JSON {
            try await parseAsync(data, options)
        }

        /// Create a typed JSON value from a UTF-8 encoded byte buffer, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful whe ndeserializing arge payloads.
        /// - Parameters:
        ///   - string: The byte buffer
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func deserialize(
            _ string: String,
            options: Options = .default
        ) async throws -> JSON {
            try await deserialize(
                string.data(using: .utf8)!,
                options: options
            )
        }

        // MARK: - Private

        @inline(__always)
        private static func parse(
            _ data: Data,
            _ options: Options
        ) throws -> JSON {
            var jsonValue: OpaquePointer?
            let result = data.withUnsafeBytes { buffer in
                json_parse(
                    buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                    buffer.count,
                    &jsonValue,
                    options.contains(.allowByteOrderMark),
                    !options.contains(.requireMinified)
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
            func materialize(
                _ value: OpaquePointer,
                _ options: Options
            ) throws -> JSON {
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
                    var array = [JSON]()
                    array.reserveCapacity(count)

                    for i in 0..<count {
                        let element = json_get_array_element(value, i).unsafelyUnwrapped
                        let value = try materialize(element, options)
                        if !options.contains(.omitNullValues) || !value.isNull {
                            array.append(value)
                        }
                    }

                    return .array(array)
                case JSON_OBJECT:
                    let count = json_get_object_size(value)
                    var dict = [String: JSON]()
                    dict.reserveCapacity(count)

                    for i in 0..<count {
                        let key = String(cString: json_get_object_key(value, i))
                        let objValue = json_get_object_value(value, i).unsafelyUnwrapped
                        let value = try materialize(objValue, options)
                        if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                            dict[key] = value
                        }
                    }
                    return .object(dict)
                default:
                    throw JSONDeserializationError.unknown
                }
            }

            let json = try materialize(jsonValue, options)
            if !options.contains(.fragmentsAllowed) {
                switch json {
                case .array, .object:
                    return json
                case .literal, .numeric, .string:
                    throw JSONDeserializationError.illegalFragment
                }
            }
            if options.contains(.omitNullValues), json.isNull {
                throw JSONDeserializationError.illegalFragment
            }
            return json
        }

        @inline(__always)
        private static func parseAsync(
            _ data: Data,
            _ options: Options
        ) async throws -> JSON {
            var jsonValue: OpaquePointer?
            let result = data.withUnsafeBytes { buffer in
                json_parse(
                    buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                    buffer.count,
                    &jsonValue,
                    options.contains(.allowByteOrderMark),
                    !options.contains(.requireMinified)
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
            func materialize(
                _ value: OpaquePointer,
                _ options: Options
            ) async throws -> JSON {
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
                    let array = try await withThrowingTaskGroup { group in
                        for i in 0..<count {
                            let getElement = UnsafeClosure {
                                json_get_array_element(value, i).unsafelyUnwrapped
                            }
                            group.addTask {
                                let element = getElement()
                                let value = try await materialize(element, options)
                                return (value, i)
                            }
                        }
                        do {
                            var results: [(JSON, Int)] = []
                            results.reserveCapacity(count)
                            for try await result in group {
                                results.append(result)
                            }
                            return results
                                .sorted { $0.1 < $1.1 }
                                .map(\.0)
                                .filter { value in
                                    !options.contains(.omitNullValues) || !value.isNull
                                }
                        } catch {
                            group.cancelAll()
                            throw error
                        }
                    }
                    return .array(array)
                case JSON_OBJECT:
                    let count = json_get_object_size(value)
                    let object = try await withThrowingTaskGroup { group in
                        for i in 0..<count {
                            let getKey = UnsafeClosure {
                                String(cString: json_get_object_key(value, i))
                            }
                            let getObjValue = UnsafeClosure {
                                json_get_object_value(value, i).unsafelyUnwrapped
                            }
                            group.addTask {
                                let key = getKey()
                                let objValue = getObjValue()
                                let value = try await materialize(objValue, options)
                                return (key, value)
                            }
                        }
                        do {
                            var object: [String: JSON] = [:]
                            object.reserveCapacity(count)
                            for try await (key, value) in group {
                                if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                                    object[key] = value
                                }
                            }
                            return object
                        } catch {
                            group.cancelAll()
                            throw error
                        }
                    }
                    return .object(object)
                default:
                    throw JSONDeserializationError.unknown
                }
            }

            let json = try await materialize(jsonValue, options)
            if !options.contains(.fragmentsAllowed) {
                switch json {
                case .array, .object:
                    return json
                case .literal, .numeric, .string:
                    throw JSONDeserializationError.illegalFragment
                }
            }
            if options.contains(.omitNullValues), json.isNull {
                throw JSONDeserializationError.illegalFragment
            }
            return json
        }

    }

}

struct UnsafeClosure<T, U, Failure: Error>: @unchecked Sendable {

    init(closure: @escaping (T) throws(Failure) -> U) {
        self.closure = closure
    }

    private let closure: (T) throws(Failure) -> U

    func callAsFunction(_ argument: T) throws(Failure) -> U {
        try closure(argument)
    }

    func callAsFunction() throws(Failure) -> U where T == Void {
        try closure(())
    }

}
