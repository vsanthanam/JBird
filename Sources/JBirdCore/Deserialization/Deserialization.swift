// JBird
// Deserialization.swift
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
#if BUILD_XCFRAMEWORK
    @_implementationOnly import JBirdParser
#else
    import JBirdParser
#endif

#if os(Windows)
    import WinSDK
#endif

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    // MARK: - API

    /// Precalculate the default recursion and depth limits
    ///
    /// Calling this method ahead of your first deserialization operation will marginally improve performance
    /// - Note: If you have already performed on deserialization operation, or if you have already called this method once before, this method is a no-op
    public static func warmLimits() {
        _ = defaultRecursionDepthLimit
        _ = defaultInputSizeLimit
    }

    /// The default recursion depth limit
    ///
    /// This is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit to avoid recalculating it again.
    ///
    /// You can alter this behavior in two ways:
    /// - By calling ``JSON/withRecursionDepthLimit(_:operation:)`` to set a custom limit for the current task
    /// - By providing the ``JSON/DeserializationOptions/ignoreRecursionDepthLimit`` option when deserializing JSON
    public static let defaultRecursionDepthLimit: size_t = calculateMaxDepth()

    /// The default input size limit
    ///
    /// This is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same calculated limit to avoid recalculating it again.
    ///
    /// You can alter this behavior in two ways:
    /// - By calling ``JSON/withInputSizeLimit(_:operation:)`` to set a custom limit for the current task
    /// - By providing the ``JSON/DeserializationOptions/ignoreInputSizeLimit`` option when deserializing JSON
    public static let defaultInputSizeLimit: size_t = calculateMaxInputSize()

    /// Perform the provided operation with a custom recursion depth limit
    ///
    /// By default, the recursion depth limit is set to a value that is calculated based on memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom recursion depth limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try JSON.withRecursionDepthLimit(1000) {
    ///     // All JSON operations performed within this closure will use a recursion depth limit of 1000
    ///     try JSON(data)
    /// }
    /// ```
    ///
    /// To remove the recursion depth limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired recursion depth limit
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withRecursionDepthLimit<T>(
        _ limit: size_t,
        operation: () throws -> T
    ) rethrows -> T {
        assert(limit >= 0, "Recursion depth limit must be greater than or equal to 0")
        return try $recursionDepthLimit.withValue(limit, operation: operation)
    }

    /// Perform the provided async operation with a custom recursion depth limit
    ///
    /// By default, the recursion depth limit is set to a value that is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom recursion depth limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try await JSON.withRecursionDepthLimit(1000) {
    ///     // All JSON operations performed within this closure will use a recursion depth limit of 1000
    ///     try await JSON.deserialize(data)
    /// }
    /// ```
    ///
    /// To remove the recursion depth limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired recursion depth limit
    ///   - isolation: The actor used to run the provided operation
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withRecursionDepthLimit<T>(
        _ limit: size_t,
        isolation: isolated (any Actor)? = #isolation,
        operation: () async throws -> T
    ) async rethrows -> T {
        assert(
            limit >= 0,
            "Recursion depth limit must be greater than or equal to 0"
        )
        return try await $recursionDepthLimit.withValue(
            limit,
            operation: operation,
            isolation: isolation
        )
    }

    /// Perform the provided operation with a custom input size limit
    ///
    /// By default, the input size limit is set to a value that is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom input size limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try JSON.withInputSizeLimit(1024 * 1024) {
    ///    // All JSON operations performed within this closure will use an input size limit of 1 MB
    ///    try JSON(data)
    /// }
    /// ```
    ///
    /// To remove the input size limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired input size limit, in bytes
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withInputSizeLimit<T>(
        _ limit: Int,
        operation: () throws -> T
    ) rethrows -> T {
        assert(
            limit >= 0,
            "Input size limit must be greater than or equal to 0"
        )
        return try $inputSizeLimit.withValue(
            limit,
            operation: operation
        )
    }

    /// Perform the provided async operation with a custom input size limit
    ///
    /// By default, the input size limit is set to a value that is calculated based on the available memory on the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same limit and avoid recalculating it again.
    ///
    /// You can use this method to set a custom input size limit:
    ///
    /// ```swift
    /// let data = Data( ... )
    /// let json = try await JSON.withInputSizeLimit(1024 * 1024) {
    ///    // All JSON operations performed within this closure will use an input size limit of 1 MB
    ///    try await JSON.deserialize(data)
    /// }
    /// ```
    ///
    /// To remove the input size limit entirely, use `0`
    ///
    /// - Parameters:
    ///   - limit: The desired input size limit, in bytes
    ///   - isolation: The actor used to execute the provided operation
    ///   - operation: The operation to perform
    /// - Returns: The return value of the operation
    public static func withInputSizeLimit<T>(
        _ limit: Int,
        isolation: isolated (any Actor)? = #isolation,
        operation: () async throws -> T
    ) async rethrows -> T {
        assert(limit >= 0, "Input size limit must be greater than or equal to 0")
        return try await $inputSizeLimit.withValue(
            limit,
            operation: operation,
            isolation: isolation
        )
    }

    /// Create a typed JSON value from a JSON string
    /// - Parameters:
    ///   - string: The JSON string
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func value(
        for string: String,
        options: DeserializationOptions = .default
    ) throws -> JSON {
        let data = Data(string.utf8)
        return try value(
            for: data,
            options: options
        )
    }

    /// Create a typed JSON value from a UTF-8 encoded byte buffer
    /// - Parameters:
    ///   - data: The byte buffer
    ///   - options: The deserialization options
    /// - Returns: The typed JSON value
    public static func value(
        for data: Data,
        options: DeserializationOptions = .default
    ) throws -> JSON {
        try SynchronousDeserialization.parse(data, options)
    }

    #if hasFeature(NonisolatedNonsendingByDefault)
        /// Create a typed JSON value from a JSON string, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
        /// - Parameters:
        ///   - data: The JSON string
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        @concurrent
        public static func deserialize(
            _ data: Data,
            options: DeserializationOptions = .default
        ) async throws -> JSON {
            try await AsynchronousDeserialization.parseAsync(data, options)
        }
    #else
        /// Create a typed JSON value from a JSON string, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
        /// - Parameters:
        ///   - data: The JSON string
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func deserialize(
            _ data: Data,
            options: DeserializationOptions = .default
        ) async throws -> JSON {
            try await AsynchronousDeserialization.parseAsync(data, options)
        }
    #endif

    #if hasFeature(NonisolatedNonsendingByDefault)
        /// Create a typed JSON value from a UTF-8 encoded byte buffer, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
        /// - Parameters:
        ///   - string: The byte buffer
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func deserialize(
            _ string: String,
            options: DeserializationOptions = .default
        ) async throws -> JSON {
            let data = Data(string.utf8)
            return try await deserialize(
                data,
                options: options
            )
        }
    #else
        /// Create a typed JSON value from a UTF-8 encoded byte buffer, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
        /// - Parameters:
        ///   - string: The byte buffer
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public nonisolated(nonsending) static func deserialize(
            _ string: String,
            options: DeserializationOptions = .default
        ) async throws -> JSON {
            let data = Data(string.utf8)
            return try await deserialize(
                data,
                options: options
            )
        }
    #endif

    @TaskLocal
    private static var recursionDepthLimit: size_t = defaultRecursionDepthLimit

    @TaskLocal
    private static var inputSizeLimit: size_t = defaultInputSizeLimit

    private enum SynchronousDeserialization {

        @inline(__always)
        static func parse(
            _ data: Data,
            _ options: DeserializationOptions
        ) throws -> JSON {
            if inputSizeLimit != 0, !options.contains(.ignoreInputSizeLimit), data.count > inputSizeLimit {
                throw DeserializationError.inputSizeLimitExceeded
            }

            var jsonValue: OpaquePointer?
            let result = data.withUnsafeBytes { buffer in
                json_parse(
                    buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                    buffer.count,
                    &jsonValue,
                    options.contains(.allowByteOrderMark),
                    options.contains(.requireMinified),
                    options.contains(.requireUniqueKeys),
                    options.contains(.ignoreRecursionDepthLimit) ? 0 : recursionDepthLimit
                )
            }

            defer {
                json_free(jsonValue)
            }

            guard result == JSON_NO_ERROR else {
                throw DeserializationError(result)
            }

            guard let jsonValue else {
                throw DeserializationError.unknown
            }

            @inline(__always)
            func materialize(
                _ value: OpaquePointer,
                _ options: DeserializationOptions
            ) throws -> JSON {
                let type = json_get_type(value)
                switch type {
                case JSON_NULL:
                    return .null
                case JSON_BOOLEAN:
                    return .bool(json_get_boolean(value))
                case JSON_NUMBER_INT:
                    return .number(JSON.Number(json_get_int(value)))
                case JSON_NUMBER_DOUBLE:
                    return .number(JSON.Number(json_get_double(value)))
                case JSON_STRING:
                    let str = String(cString: json_get_string(value))
                    return .string(str)
                case JSON_ARRAY:
                    let count = json_get_array_size(value)
                    var array = Array()
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
                    var object = Object()
                    object.reserveCapacity(count)

                    for i in 0..<count {
                        let key = String(cString: json_get_object_key(value, i))
                        let objValue = json_get_object_value(value, i).unsafelyUnwrapped
                        let value = try materialize(objValue, options)
                        if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                            object[key] = value
                        }
                    }
                    return .object(object)
                default:
                    throw DeserializationError.unknown
                }
            }

            let json = try materialize(jsonValue, options)
            if !options.contains(.fragmentsAllowed) {
                switch json {
                case .array, .object:
                    return json
                case .bool, .null, .number, .string:
                    throw DeserializationError.illegalFragment
                }
            }
            if options.contains(.omitNullValues), json.isNull {
                throw DeserializationError.illegalFragment
            }
            return json
        }

    }

    private enum AsynchronousDeserialization {

        #if hasFeature(NonisolatedNonsendingByDefault)
            static func parseAsync(
                _ data: Data,
                _ options: DeserializationOptions
            ) async throws -> JSON {
                if inputSizeLimit != 0, !options.contains(.ignoreInputSizeLimit), data.count > inputSizeLimit {
                    throw DeserializationError.inputSizeLimitExceeded
                }

                var jsonValue: OpaquePointer?
                let result = data.withUnsafeBytes { buffer in
                    json_parse(
                        buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                        buffer.count,
                        &jsonValue,
                        options.contains(.allowByteOrderMark),
                        options.contains(.requireMinified),
                        options.contains(.requireUniqueKeys),
                        options.contains(.ignoreRecursionDepthLimit) ? 0 : recursionDepthLimit
                    )
                }

                defer {
                    json_free(jsonValue)
                }

                guard result == JSON_NO_ERROR else {
                    throw DeserializationError(result)
                }

                guard let jsonValue else {
                    throw DeserializationError.unknown
                }

                func materialize(
                    _ value: OpaquePointer,
                    _ options: DeserializationOptions
                ) async throws -> JSON {
                    try Task.checkCancellation()
                    let type = json_get_type(value)
                    switch type {
                    case JSON_NULL:
                        return .null
                    case JSON_BOOLEAN:
                        return .bool(json_get_boolean(value))
                    case JSON_NUMBER_INT:
                        return .number(JSON.Number(json_get_int(value)))
                    case JSON_NUMBER_DOUBLE:
                        return .number(JSON.Number(json_get_double(value)))
                    case JSON_STRING:
                        let str = String(cString: json_get_string(value))
                        return .string(str)
                    case JSON_ARRAY:
                        let count = json_get_array_size(value)
                        var array = Array()
                        array.reserveCapacity(count)

                        for i in 0..<count {
                            let element = json_get_array_element(value, i).unsafelyUnwrapped
                            let value = try await materialize(element, options)
                            if !options.contains(.omitNullValues) || !value.isNull {
                                array.append(value)
                            }
                        }

                        return .array(array)
                    case JSON_OBJECT:
                        let count = json_get_object_size(value)
                        var object = Object()
                        object.reserveCapacity(count)

                        for i in 0..<count {
                            let key = String(cString: json_get_object_key(value, i))
                            let objValue = json_get_object_value(value, i).unsafelyUnwrapped
                            let value = try await materialize(objValue, options)
                            if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                                object[key] = value
                            }
                        }
                        return .object(object)
                    default:
                        throw DeserializationError.unknown
                    }
                }

                let json = try await materialize(jsonValue, options)
                if !options.contains(.fragmentsAllowed) {
                    switch json {
                    case .array, .object:
                        return json
                    case .bool, .null, .number, .string:
                        throw DeserializationError.illegalFragment
                    }
                }
                if options.contains(.omitNullValues), json.isNull {
                    throw DeserializationError.illegalFragment
                }
                try Task.checkCancellation()
                return json
            }
        #else
            nonisolated(nonsending) static func parseAsync(
                _ data: Data,
                _ options: DeserializationOptions
            ) async throws -> JSON {
                if inputSizeLimit != 0, !options.contains(.ignoreInputSizeLimit), data.count > inputSizeLimit {
                    throw DeserializationError.inputSizeLimitExceeded
                }

                var jsonValue: OpaquePointer?
                let result = data.withUnsafeBytes { buffer in
                    json_parse(
                        buffer.baseAddress?.assumingMemoryBound(to: UInt8.self),
                        buffer.count,
                        &jsonValue,
                        options.contains(.allowByteOrderMark),
                        options.contains(.requireMinified),
                        options.contains(.requireUniqueKeys),
                        options.contains(.ignoreRecursionDepthLimit) ? 0 : recursionDepthLimit
                    )
                }

                defer {
                    json_free(jsonValue)
                }

                guard result == JSON_NO_ERROR else {
                    throw DeserializationError(result)
                }

                guard let jsonValue else {
                    throw DeserializationError.unknown
                }

                nonisolated(nonsending) func materialize(
                    _ value: OpaquePointer,
                    _ options: DeserializationOptions
                ) async throws -> JSON {
                    try Task.checkCancellation()
                    let type = json_get_type(value)
                    switch type {
                    case JSON_NULL:
                        return .null
                    case JSON_BOOLEAN:
                        return .bool(json_get_boolean(value))
                    case JSON_NUMBER_INT:
                        return .number(JSON.Number(json_get_int(value)))
                    case JSON_NUMBER_DOUBLE:
                        return .number(JSON.Number(json_get_double(value)))
                    case JSON_STRING:
                        let str = String(cString: json_get_string(value))
                        return .string(str)
                    case JSON_ARRAY:
                        let count = json_get_array_size(value)
                        var array = Array()
                        array.reserveCapacity(count)

                        for i in 0..<count {
                            let element = json_get_array_element(value, i).unsafelyUnwrapped
                            let value = try await materialize(element, options)
                            if !options.contains(.omitNullValues) || !value.isNull {
                                array.append(value)
                            }
                        }

                        return .array(array)
                    case JSON_OBJECT:
                        let count = json_get_object_size(value)
                        var object = Object()
                        object.reserveCapacity(count)

                        for i in 0..<count {
                            let key = String(cString: json_get_object_key(value, i))
                            let objValue = json_get_object_value(value, i).unsafelyUnwrapped
                            let value = try await materialize(objValue, options)
                            if (!options.contains(.omitNullKeys) && !options.contains(.omitNullValues)) || !value.isNull {
                                object[key] = value
                            }
                        }
                        return .object(object)
                    default:
                        throw DeserializationError.unknown
                    }
                }

                let json = try await materialize(jsonValue, options)
                if !options.contains(.fragmentsAllowed) {
                    switch json {
                    case .array, .object:
                        return json
                    case .bool, .null, .number, .string:
                        throw DeserializationError.illegalFragment
                    }
                }
                if options.contains(.omitNullValues), json.isNull {
                    throw DeserializationError.illegalFragment
                }
                try Task.checkCancellation()
                return json
            }
        #endif

    }

    #if os(Windows)
        @inline(__always)
        private static func calculateMaxDepth() -> size_t {
            var low: ULONG_PTR = 0
            var high: ULONG_PTR = 0
            GetCurrentThreadStackLimits(&low, &high)

            let stackBytes = size_t(high &- low)
            return min(1024, max(16, stackBytes / 512))
        }

    #elseif os(WASI) || arch(wasm32)
        @inline(__always)
        private static func calculateMaxDepth() -> size_t {
            // There is no way to do this on Web Assembly. Makes sense.
            256
        }
    #else
        @inline(__always)
        private static func calculateMaxDepth() -> size_t {
            var attr = pthread_attr_t()
            pthread_attr_init(&attr)
            defer {
                pthread_attr_destroy(&attr)
            }

            var size: size_t = 0
            pthread_attr_getstacksize(&attr, &size)
            return min(1024, max(16, size / 512))
        }
    #endif

    private static func calculateMaxInputSize() -> size_t {
        let physicalMemory = Double(ProcessInfo.processInfo.physicalMemory)
        let cap = size_t(physicalMemory * 0.01)
        return min(max(cap, 1 * 1024 * 1024), 50 * 1024 * 1024)
    }

}
