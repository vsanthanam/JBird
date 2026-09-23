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
    /// - By calling ``JSON/withRecursionDepthLimit(_:operation:)-8riei`` to set a custom limit for the current task
    /// - By providing the ``JSON/DeserializationOptions/ignoreRecursionDepthLimit`` option when deserializing JSON
    public static let defaultRecursionDepthLimit: size_t = calculateMaxDepth()

    /// The default input size limit
    ///
    /// This is calculated based on the memory profile of the system upon the first invocation of a deserialization operation.
    /// Subsequent invocations will use the same calculated limit to avoid recalculating it again.
    ///
    /// You can alter this behavior in two ways:
    /// - By calling ``JSON/withInputSizeLimit(_:operation:)-2sm2h`` to set a custom limit for the current task
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

    #if compiler(>=6.4)
        #if hasFeature(NonisolatedNonsendingByDefault)
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
            ///   - operation: The operation to perform
            /// - Returns: The return value of the operation
            public static func withRecursionDepthLimit<T>(
                _ limit: size_t,
                operation: () async throws -> T
            ) async rethrows -> T {
                assert(
                    limit >= 0,
                    "Recursion depth limit must be greater than or equal to 0"
                )
                return try await $recursionDepthLimit.withValue(
                    limit,
                    operation: operation
                )
            }
        #else
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
            ///   - operation: The operation to perform
            /// - Returns: The return value of the operation
            public nonisolated(nonsending) static func withRecursionDepthLimit<T>(
                _ limit: size_t,
                operation: () async throws -> T
            ) async rethrows -> T {
                assert(
                    limit >= 0,
                    "Recursion depth limit must be greater than or equal to 0"
                )
                return try await $recursionDepthLimit.withValue(
                    limit,
                    operation: operation
                )
            }
        #endif
    #else
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
    #endif

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

    #if compiler(>=6.4)
        #if hasFeature(NonisolatedNonsendingByDefault)
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
            ///   - operation: The operation to perform
            /// - Returns: The return value of the operation
            public static func withInputSizeLimit<T>(
                _ limit: Int,
                operation: () async throws -> T
            ) async rethrows -> T {
                assert(limit >= 0, "Input size limit must be greater than or equal to 0")
                return try await $inputSizeLimit.withValue(
                    limit,
                    operation: operation
                )
            }
        #else
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
            ///   - operation: The operation to perform
            /// - Returns: The return value of the operation
            public nonisolated(nonsending) static func withInputSizeLimit<T>(
                _ limit: Int,
                operation: () async throws -> T
            ) async rethrows -> T {
                assert(limit >= 0, "Input size limit must be greater than or equal to 0")
                return try await $inputSizeLimit.withValue(
                    limit,
                    operation: operation
                )
            }
        #endif
    #else
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
    #endif

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

    #if compiler(>=6.2) && hasFeature(NonisolatedNonsendingByDefault)
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

    #if compiler(>=6.2)
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
    #else
        /// Create a typed JSON value from a UTF-8 encoded byte buffer, asynchronously
        ///
        /// Use this method if you need to be able to cancel the deserialization after you start it. This can be useful when deserializing large payloads.
        /// - Parameters:
        ///   - string: The byte buffer
        ///   - options: The deserialization options
        /// - Returns: The typed JSON value
        public static func deserialize(
            _ string: String,
            options: DeserializationOptions = .default,
            isolation: isolated (any Actor)? = #isolation
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

    /// Check the input against the configured size limit.
    @inline(__always)
    private static func checkInputSize(
        _ data: Data,
        _ options: DeserializationOptions
    ) throws {
        if inputSizeLimit != 0,
           !options.contains(.ignoreInputSizeLimit),
           data.count > inputSizeLimit {
            throw DeserializationError.inputSizeLimitExceeded
        }
    }

    /// The recursion depth limit in force for this call. `0` means unlimited.
    @inline(__always)
    private static func depthLimit(
        _ options: DeserializationOptions
    ) -> Int {
        options.contains(.ignoreRecursionDepthLimit) ? 0 : Int(recursionDepthLimit)
    }

    private enum SynchronousDeserialization {

        @inline(__always)
        static func parse(
            _ data: Data,
            _ options: DeserializationOptions
        ) throws -> JSON {
            try checkInputSize(data, options)
            return try JSONScanner.parse(
                data,
                options,
                maxDepth: depthLimit(options),
                checksCancellation: false
            )
        }

    }

    private enum AsynchronousDeserialization {

        // The scan itself is synchronous. `Task.checkCancellation()` is not `async`, so
        // one scanner serves both entry points, and the four compiler and concurrency
        // variants collapse onto a single implementation.

        #if compiler(>=6.2)
            #if hasFeature(NonisolatedNonsendingByDefault)
                static func parseAsync(
                    _ data: Data,
                    _ options: DeserializationOptions
                ) async throws -> JSON {
                    try scan(data, options)
                }
            #else
                nonisolated(nonsending) static func parseAsync(
                    _ data: Data,
                    _ options: DeserializationOptions
                ) async throws -> JSON {
                    try scan(data, options)
                }
            #endif
        #else
            static func parseAsync(
                _ data: Data,
                _ options: DeserializationOptions,
                isolation: isolated (any Actor)? = #isolation
            ) async throws -> JSON {
                try scan(data, options)
            }
        #endif

        @inline(__always)
        private static func scan(
            _ data: Data,
            _ options: DeserializationOptions
        ) throws -> JSON {
            try checkInputSize(data, options)
            return try JSONScanner.parse(
                data,
                options,
                maxDepth: depthLimit(options),
                checksCancellation: true
            )
        }

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
