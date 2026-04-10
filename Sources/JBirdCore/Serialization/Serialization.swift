// JBird
// Serialization.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    // MARK: - API

    /// Create a byte buffer from a typed `JSON` value
    /// - Parameters:
    ///   - json: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
    public static func data(
        from json: JSON,
        options: SerializationOptions = .default
    ) throws -> Data {
        try SynchronousSerialization.start(
            from: json,
            options: options
        )
    }

    /// Create a Swift string from a typed `JSON` value
    /// - Parameters:
    ///   - json: The JSON value to serialize
    ///   - options: The serialization options
    /// - Returns: A Swift string representing the provided JSON value
    public static func string(
        from json: JSON,
        options: SerializationOptions = .default
    ) throws -> String {
        let data = try data(from: json, options: options)
        guard let string = String(data: data, encoding: .utf8) else {
            throw SerializationError.stringMaterialization
        }
        return string
    }

    #if compiler(>=6.2) && hasFeature(NonisolatedNonsendingByDefault)
        /// Create a byte buffer from a typed JSON value
        /// - Parameters:
        ///   - value: The JSON value to serialize
        ///   - options: The serialization options
        /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
        @concurrent
        public static func serialize(
            _ value: JSON,
            options: SerializationOptions = .default
        ) async throws -> Data {
            try await AsynchronousSerialization.start(
                from: value,
                options: options
            )
        }
    #else
        /// Create a byte buffer from a typed JSON value
        /// - Parameters:
        ///   - value: The JSON value to serialize
        ///   - options: The serialization options
        /// - Returns: The byte buffer containing a UTF-8 encoded string representing the provided JSON value
        public static func serialize(
            _ value: JSON,
            options: SerializationOptions = .default
        ) async throws -> Data {
            try await AsynchronousSerialization.start(
                from: value,
                options: options
            )
        }
    #endif

    #if compiler(>=6.2)
        #if hasFeature(NonisolatedNonsendingByDefault)
            /// Create a Swift string from a typed JSON value
            /// - Parameters:
            ///   - value: The JSON value to serialize
            ///   - options: The serialization options
            /// - Returns: A Swift string representing the provided JSON value
            public static func stringify(
                _ value: JSON,
                options: SerializationOptions = .default
            ) async throws -> String {
                let data = try await serialize(value, options: options)
                guard let string = String(data: data, encoding: .utf8) else {
                    throw SerializationError.stringMaterialization
                }
                return string
            }
        #else
            /// Create a Swift string from a typed JSON value
            /// - Parameters:
            ///   - value: The JSON value to serialize
            ///   - options: The serialization options
            /// - Returns: A Swift string representing the provided JSON value
            public nonisolated(nonsending) static func stringify(
                _ value: JSON,
                options: SerializationOptions = .default
            ) async throws -> String {
                let data = try await serialize(value, options: options)
                guard let string = String(data: data, encoding: .utf8) else {
                    throw SerializationError.stringMaterialization
                }
                return string
            }
        #endif
    #else
        /// Create a Swift string from a typed JSON value
        /// - Parameters:
        ///   - value: The JSON value to serialize
        ///   - options: The serialization options
        /// - Returns: A Swift string representing the provided JSON value
        public static func stringify(
            _ value: JSON,
            options: SerializationOptions = .default,
            isolation: (any Actor)? = #isolation
        ) async throws -> String {
            let data = try await serialize(value, options: options)
            guard let string = String(data: data, encoding: .utf8) else {
                throw SerializationError.stringMaterialization
            }
            return string
        }
    #endif

    // MARK: - Private

    private enum SynchronousSerialization {

        static func start(
            from json: JSON,
            options: SerializationOptions
        ) throws -> Data {
            if !options.contains(.fragmentsAllowed) {
                switch json {
                case .bool, .null, .number, .string:
                    throw SerializationError.illegalFragment
                case .array, .object:
                    break
                }
            }
            if options.contains(.omitNullValues), json.isNull {
                throw SerializationError.illegalFragment
            }
            var bytes = [UInt8]()
            if options.contains(.includeByteOrderMark) {
                serializeByteOrderMark(into: &bytes)
            }
            try serializeValue(
                json: json,
                into: &bytes,
                level: options.contains(.prettyPrinted) ? 0 : nil,
                options: options
            )
            return Data(bytes)
        }

        private static func serializeValue(
            json: JSON,
            into bytes: inout [UInt8],
            level: Int?,
            options: SerializationOptions
        ) throws {

            func serializeArray(
                _ array: Array,
                into bytes: inout [UInt8],
                level: Int?,
                options: SerializationOptions
            ) throws {
                serializeOpenBracket(into: &bytes)

                let realArray: Array = if options.contains(.omitNullValues) {
                    array.compactMap { value in value.isNull ? JSON?.none : value }
                } else {
                    array
                }

                if realArray.isEmpty {
                    serializeCloseBracket(into: &bytes)
                    return
                }

                if level != nil {
                    serializeNewLine(into: &bytes)
                }

                let indices = realArray.indices
                let last = indices.last.unsafelyUnwrapped
                for index in indices {
                    let value = realArray[index]
                    if index == last {
                        if let level {
                            serializeIndentation(level: level + 1, into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                            serializeNewLine(into: &bytes)
                        } else {
                            try serializeValue(json: value, into: &bytes, level: level, options: options)
                        }
                    } else {
                        if let level {
                            serializeIndentation(level: level + 1, into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                            serializeComma(into: &bytes)
                            serializeNewLine(into: &bytes)
                        } else {
                            try serializeValue(json: value, into: &bytes, level: level, options: options)
                            serializeComma(into: &bytes)
                        }
                    }
                }

                if let level {
                    serializeIndentation(level: level, into: &bytes)
                }

                serializeCloseBracket(into: &bytes)
            }

            func serializeObject(
                _ object: Object,
                into bytes: inout [UInt8],
                level: Int?,
                options: SerializationOptions
            ) throws {
                serializeOpenBrace(into: &bytes)

                if object.isEmpty {
                    serializeCloseBrace(into: &bytes)
                    return
                }

                if level != nil {
                    serializeNewLine(into: &bytes)
                }

                let usableObject: Object = if options.contains(.omitNullKeys) || options.contains(.omitNullValues) {
                    object.compactMapValues { value in value.isNull ? JSON?.none : value }
                } else {
                    object
                }
                if usableObject.isEmpty {
                    serializeCloseBrace(into: &bytes)
                    return
                }
                let keys = options.contains(.sortedKeys) ? Swift.Array(usableObject.keys.sorted()) : Swift.Array(usableObject.keys)
                let indices = keys.indices
                let last = indices.last.unsafelyUnwrapped
                for index in indices {
                    let key = keys[index]
                    let value = usableObject[key].unsafelyUnwrapped
                    if index == last {
                        if let level {
                            serializeIndentation(level: level + 1, into: &bytes)
                            serializeString(key, options: options, into: &bytes)
                            serializeSpace(into: &bytes)
                            serializeColon(into: &bytes)
                            serializeSpace(into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                            serializeNewLine(into: &bytes)
                        } else {
                            serializeString(key, options: options, into: &bytes)
                            serializeColon(into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: nil, options: options)
                        }
                    } else {
                        if let level {
                            serializeIndentation(level: level + 1, into: &bytes)
                            serializeString(key, options: options, into: &bytes)
                            serializeSpace(into: &bytes)
                            serializeColon(into: &bytes)
                            serializeSpace(into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                            serializeComma(into: &bytes)
                            serializeNewLine(into: &bytes)
                        } else {
                            serializeString(key, options: options, into: &bytes)
                            serializeColon(into: &bytes)
                            try serializeValue(json: value, into: &bytes, level: level, options: options)
                            serializeComma(into: &bytes)
                        }
                    }
                }

                if let level {
                    serializeIndentation(level: level, into: &bytes)
                }

                serializeCloseBrace(into: &bytes)
            }

            switch json {
            case let .bool(bool):
                serializeBool(bool, into: &bytes)
            case let .object(object):
                try serializeObject(object, into: &bytes, level: level, options: options)
            case let .array(array):
                try serializeArray(array, into: &bytes, level: level, options: options)
            case let .number(number):
                try serializeNumber(number, options: options, into: &bytes)
            case let .string(string):
                serializeString(string, options: options, into: &bytes)
            case .null:
                serializeNull(into: &bytes)
            }
        }

    }

    private enum AsynchronousSerialization {

        #if compiler(>=6.2)
            #if hasFeature(NonisolatedNonsendingByDefault)
                static func start(
                    from json: JSON,
                    options: SerializationOptions
                ) async throws -> Data {
                    if !options.contains(.fragmentsAllowed) {
                        switch json {
                        case .bool, .null, .number, .string:
                            throw SerializationError.illegalFragment
                        case .array, .object:
                            break
                        }
                    }
                    if options.contains(.omitNullValues), json.isNull {
                        throw SerializationError.illegalFragment
                    }
                    var bytes = [UInt8]()
                    if options.contains(.includeByteOrderMark) {
                        serializeByteOrderMark(into: &bytes)
                    }
                    try await serializeValue(
                        json: json,
                        into: &bytes,
                        level: options.contains(.prettyPrinted) ? 0 : nil,
                        options: options
                    )
                    return Data(bytes)
                }
            #else
                nonisolated(nonsending) static func start(
                    from json: JSON,
                    options: SerializationOptions
                ) async throws -> Data {
                    if !options.contains(.fragmentsAllowed) {
                        switch json {
                        case .bool, .null, .number, .string:
                            throw SerializationError.illegalFragment
                        case .array, .object:
                            break
                        }
                    }
                    if options.contains(.omitNullValues), json.isNull {
                        throw SerializationError.illegalFragment
                    }
                    var bytes = [UInt8]()
                    if options.contains(.includeByteOrderMark) {
                        serializeByteOrderMark(into: &bytes)
                    }
                    try await serializeValue(
                        json: json,
                        into: &bytes,
                        level: options.contains(.prettyPrinted) ? 0 : nil,
                        options: options
                    )
                    return Data(bytes)
                }
            #endif
        #else
            static func start(
                from json: JSON,
                options: SerializationOptions,
                isolation: (any Actor)? = #isolation
            ) async throws -> Data {
                if !options.contains(.fragmentsAllowed) {
                    switch json {
                    case .bool, .null, .number, .string:
                        throw SerializationError.illegalFragment
                    case .array, .object:
                        break
                    }
                }
                if options.contains(.omitNullValues), json.isNull {
                    throw SerializationError.illegalFragment
                }
                var bytes = [UInt8]()
                if options.contains(.includeByteOrderMark) {
                    serializeByteOrderMark(into: &bytes)
                }
                try await serializeValue(
                    json: json,
                    into: &bytes,
                    level: options.contains(.prettyPrinted) ? 0 : nil,
                    options: options
                )
                return Data(bytes)
            }
        #endif

        #if compiler(>=6.2)
            #if hasFeature(NonisolatedNonsendingByDefault)
                private static func serializeValue(
                    json: JSON,
                    into bytes: inout [UInt8],
                    level: Int?,
                    options: SerializationOptions
                ) async throws {

                    func serializeArray(
                        _ array: Array,
                        into bytes: inout [UInt8],
                        level: Int?,
                        options: SerializationOptions
                    ) async throws {
                        serializeOpenBracket(into: &bytes)

                        let realArray: Array = if options.contains(.omitNullValues) {
                            array.compactMap { value in value.isNull ? JSON?.none : value }
                        } else {
                            array
                        }

                        if array.isEmpty {
                            serializeCloseBracket(into: &bytes)
                            return
                        }

                        if level != nil {
                            serializeNewLine(into: &bytes)
                        }

                        let indices = realArray.indices
                        let last = indices.last.unsafelyUnwrapped
                        for index in indices {
                            let value = realArray[index]
                            if index == last {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                }
                            } else {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeComma(into: &bytes)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                    serializeComma(into: &bytes)
                                }
                            }
                        }

                        if let level {
                            serializeIndentation(level: level, into: &bytes)
                        }

                        serializeCloseBracket(into: &bytes)
                    }

                    func serializeObject(
                        _ object: Object,
                        into bytes: inout [UInt8],
                        level: Int?,
                        options: SerializationOptions
                    ) async throws {
                        serializeOpenBrace(into: &bytes)

                        if object.isEmpty {
                            serializeCloseBrace(into: &bytes)
                            return
                        }

                        if level != nil {
                            serializeNewLine(into: &bytes)
                        }

                        let usableObject: Object = if options.contains(.omitNullKeys) || options.contains(.omitNullValues) {
                            object.compactMapValues { value in value.isNull ? JSON?.none : value }
                        } else {
                            object
                        }
                        if usableObject.isEmpty {
                            serializeCloseBrace(into: &bytes)
                            return
                        }
                        let keys = options.contains(.sortedKeys) ? Swift.Array(usableObject.keys.sorted()) : Swift.Array(usableObject.keys)
                        let indices = keys.indices
                        let last = indices.last.unsafelyUnwrapped
                        for index in indices {
                            let key = keys[index]
                            let value = usableObject[key].unsafelyUnwrapped
                            if index == last {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    serializeString(key, options: options, into: &bytes)
                                    serializeSpace(into: &bytes)
                                    serializeColon(into: &bytes)
                                    serializeSpace(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    serializeString(key, options: options, into: &bytes)
                                    serializeColon(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: nil, options: options)
                                }
                            } else {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    serializeString(key, options: options, into: &bytes)
                                    serializeSpace(into: &bytes)
                                    serializeColon(into: &bytes)
                                    serializeSpace(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeComma(into: &bytes)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    serializeString(key, options: options, into: &bytes)
                                    serializeColon(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                    serializeComma(into: &bytes)
                                }
                            }
                        }

                        if let level {
                            serializeIndentation(level: level, into: &bytes)
                        }

                        serializeCloseBrace(into: &bytes)
                    }

                    try Task.checkCancellation()

                    switch json {
                    case let .bool(bool):
                        serializeBool(bool, into: &bytes)
                    case let .object(object):
                        try await serializeObject(object, into: &bytes, level: level, options: options)
                    case let .array(array):
                        try await serializeArray(array, into: &bytes, level: level, options: options)
                    case let .number(number):
                        try serializeNumber(number, options: options, into: &bytes)
                    case let .string(string):
                        serializeString(string, options: options, into: &bytes)
                    case .null:
                        serializeNull(into: &bytes)
                    }
                }
            #else
                private nonisolated(nonsending) static func serializeValue(
                    json: JSON,
                    into bytes: inout [UInt8],
                    level: Int?,
                    options: SerializationOptions
                ) async throws {

                    nonisolated(nonsending) func serializeArray(
                        _ array: Array,
                        into bytes: inout [UInt8],
                        level: Int?,
                        options: SerializationOptions
                    ) async throws {
                        serializeOpenBracket(into: &bytes)

                        let realArray: Array = if options.contains(.omitNullValues) {
                            array.compactMap { value in value.isNull ? JSON?.none : value }
                        } else {
                            array
                        }

                        if array.isEmpty {
                            serializeCloseBracket(into: &bytes)
                            return
                        }

                        if level != nil {
                            serializeNewLine(into: &bytes)
                        }

                        let indices = realArray.indices
                        let last = indices.last.unsafelyUnwrapped
                        for index in indices {
                            let value = realArray[index]
                            if index == last {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                }
                            } else {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeComma(into: &bytes)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                    serializeComma(into: &bytes)
                                }
                            }
                        }

                        if let level {
                            serializeIndentation(level: level, into: &bytes)
                        }

                        serializeCloseBracket(into: &bytes)
                    }

                    nonisolated(nonsending) func serializeObject(
                        _ object: Object,
                        into bytes: inout [UInt8],
                        level: Int?,
                        options: SerializationOptions
                    ) async throws {
                        serializeOpenBrace(into: &bytes)

                        if object.isEmpty {
                            serializeCloseBrace(into: &bytes)
                            return
                        }

                        if level != nil {
                            serializeNewLine(into: &bytes)
                        }

                        let usableObject: Object = if options.contains(.omitNullKeys) || options.contains(.omitNullValues) {
                            object.compactMapValues { value in value.isNull ? JSON?.none : value }
                        } else {
                            object
                        }
                        if usableObject.isEmpty {
                            serializeCloseBrace(into: &bytes)
                            return
                        }
                        let keys = options.contains(.sortedKeys) ? Swift.Array(usableObject.keys.sorted()) : Swift.Array(usableObject.keys)
                        let indices = keys.indices
                        let last = indices.last.unsafelyUnwrapped
                        for index in indices {
                            let key = keys[index]
                            let value = usableObject[key].unsafelyUnwrapped
                            if index == last {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    serializeString(key, options: options, into: &bytes)
                                    serializeSpace(into: &bytes)
                                    serializeColon(into: &bytes)
                                    serializeSpace(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    serializeString(key, options: options, into: &bytes)
                                    serializeColon(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: nil, options: options)
                                }
                            } else {
                                if let level {
                                    serializeIndentation(level: level + 1, into: &bytes)
                                    serializeString(key, options: options, into: &bytes)
                                    serializeSpace(into: &bytes)
                                    serializeColon(into: &bytes)
                                    serializeSpace(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                    serializeComma(into: &bytes)
                                    serializeNewLine(into: &bytes)
                                } else {
                                    serializeString(key, options: options, into: &bytes)
                                    serializeColon(into: &bytes)
                                    try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                    serializeComma(into: &bytes)
                                }
                            }
                        }

                        if let level {
                            serializeIndentation(level: level, into: &bytes)
                        }

                        serializeCloseBrace(into: &bytes)
                    }

                    try Task.checkCancellation()

                    switch json {
                    case let .bool(bool):
                        serializeBool(bool, into: &bytes)
                    case let .object(object):
                        try await serializeObject(object, into: &bytes, level: level, options: options)
                    case let .array(array):
                        try await serializeArray(array, into: &bytes, level: level, options: options)
                    case let .number(number):
                        try serializeNumber(number, options: options, into: &bytes)
                    case let .string(string):
                        serializeString(string, options: options, into: &bytes)
                    case .null:
                        serializeNull(into: &bytes)
                    }
                }
            #endif
        #else
            private static func serializeValue(
                json: JSON,
                into bytes: inout [UInt8],
                level: Int?,
                options: SerializationOptions,
                isolation: (any Actor)? = #isolation
            ) async throws {

                func serializeArray(
                    _ array: Array,
                    into bytes: inout [UInt8],
                    level: Int?,
                    options: SerializationOptions,
                    isolation: (any Actor)? = #isolation
                ) async throws {
                    serializeOpenBracket(into: &bytes)

                    let realArray: Array = if options.contains(.omitNullValues) {
                        array.compactMap { value in value.isNull ? JSON?.none : value }
                    } else {
                        array
                    }

                    if array.isEmpty {
                        serializeCloseBracket(into: &bytes)
                        return
                    }

                    if level != nil {
                        serializeNewLine(into: &bytes)
                    }

                    let indices = realArray.indices
                    let last = indices.last.unsafelyUnwrapped
                    for index in indices {
                        let value = realArray[index]
                        if index == last {
                            if let level {
                                serializeIndentation(level: level + 1, into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                serializeNewLine(into: &bytes)
                            } else {
                                try await serializeValue(json: value, into: &bytes, level: level, options: options)
                            }
                        } else {
                            if let level {
                                serializeIndentation(level: level + 1, into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                serializeComma(into: &bytes)
                                serializeNewLine(into: &bytes)
                            } else {
                                try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                serializeComma(into: &bytes)
                            }
                        }
                    }

                    if let level {
                        serializeIndentation(level: level, into: &bytes)
                    }

                    serializeCloseBracket(into: &bytes)
                }

                func serializeObject(
                    _ object: Object,
                    into bytes: inout [UInt8],
                    level: Int?,
                    options: SerializationOptions,
                    isolation: (any Actor)? = #isolation
                ) async throws {
                    serializeOpenBrace(into: &bytes)

                    if object.isEmpty {
                        serializeCloseBrace(into: &bytes)
                        return
                    }

                    if level != nil {
                        serializeNewLine(into: &bytes)
                    }

                    let usableObject: Object = if options.contains(.omitNullKeys) || options.contains(.omitNullValues) {
                        object.compactMapValues { value in value.isNull ? JSON?.none : value }
                    } else {
                        object
                    }
                    if usableObject.isEmpty {
                        serializeCloseBrace(into: &bytes)
                        return
                    }
                    let keys = options.contains(.sortedKeys) ? Swift.Array(usableObject.keys.sorted()) : Swift.Array(usableObject.keys)
                    let indices = keys.indices
                    let last = indices.last.unsafelyUnwrapped
                    for index in indices {
                        let key = keys[index]
                        let value = usableObject[key].unsafelyUnwrapped
                        if index == last {
                            if let level {
                                serializeIndentation(level: level + 1, into: &bytes)
                                serializeString(key, options: options, into: &bytes)
                                serializeSpace(into: &bytes)
                                serializeColon(into: &bytes)
                                serializeSpace(into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                serializeNewLine(into: &bytes)
                            } else {
                                serializeString(key, options: options, into: &bytes)
                                serializeColon(into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: nil, options: options)
                            }
                        } else {
                            if let level {
                                serializeIndentation(level: level + 1, into: &bytes)
                                serializeString(key, options: options, into: &bytes)
                                serializeSpace(into: &bytes)
                                serializeColon(into: &bytes)
                                serializeSpace(into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: level + 1, options: options)
                                serializeComma(into: &bytes)
                                serializeNewLine(into: &bytes)
                            } else {
                                serializeString(key, options: options, into: &bytes)
                                serializeColon(into: &bytes)
                                try await serializeValue(json: value, into: &bytes, level: level, options: options)
                                serializeComma(into: &bytes)
                            }
                        }
                    }

                    if let level {
                        serializeIndentation(level: level, into: &bytes)
                    }

                    serializeCloseBrace(into: &bytes)
                }

                try Task.checkCancellation()

                switch json {
                case let .bool(bool):
                    serializeBool(bool, into: &bytes)
                case let .object(object):
                    try await serializeObject(object, into: &bytes, level: level, options: options)
                case let .array(array):
                    try await serializeArray(array, into: &bytes, level: level, options: options)
                case let .number(number):
                    try serializeNumber(number, options: options, into: &bytes)
                case let .string(string):
                    serializeString(string, options: options, into: &bytes)
                case .null:
                    serializeNull(into: &bytes)
                }
            }
        #endif

    }

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeByteOrderMark(
            into bytes: inout [UInt8]
        ) {
            bytes += [0xEF, 0xBB, 0xBF]
        }
    #else
        @inline(__always)
        private static func serializeByteOrderMark(
            into bytes: inout [UInt8]
        ) {
            bytes += [0xEF, 0xBB, 0xBF]
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeOpenBracket(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x5B)
        }
    #else
        @inline(__always)
        private static func serializeOpenBracket(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x5B)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeCloseBracket(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x5D)
        }
    #else
        @inline(__always)
        private static func serializeCloseBracket(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x5D)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeNewLine(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x0A)
        }
    #else
        @inline(__always)
        private static func serializeNewLine(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x0A)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeComma(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x2C)
        }
    #else
        @inline(__always)
        private static func serializeComma(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x2C)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeOpenBrace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x7B)
        }
    #else
        @inline(__always)
        private static func serializeOpenBrace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x7B)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeCloseBrace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x7D)
        }
    #else
        @inline(__always)
        private static func serializeCloseBrace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x7D)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeSpace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x20)
        }
    #else
        @inline(__always)
        private static func serializeSpace(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x20)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeColon(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x3A)
        }
    #else
        @inline(__always)
        private static func serializeColon(
            into bytes: inout [UInt8]
        ) {
            bytes.append(0x3A)
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeBool(
            _ bool: Bool,
            into bytes: inout [UInt8]
        ) {

            func serializeTrue(into bytes: inout [UInt8]) {
                bytes += [0x74, 0x72, 0x75, 0x65]
            }

            func serializeFalse(into bytes: inout [UInt8]) {
                bytes += [0x66, 0x61, 0x6C, 0x73, 0x65]
            }

            switch bool {
            case true:
                serializeTrue(into: &bytes)
            case false:
                serializeFalse(into: &bytes)
            }
        }
    #else
        @inline(__always)
        private static func serializeBool(
            _ bool: Bool,
            into bytes: inout [UInt8]
        ) {

            func serializeTrue(into bytes: inout [UInt8]) {
                bytes += [0x74, 0x72, 0x75, 0x65]
            }

            func serializeFalse(into bytes: inout [UInt8]) {
                bytes += [0x66, 0x61, 0x6C, 0x73, 0x65]
            }

            switch bool {
            case true:
                serializeTrue(into: &bytes)
            case false:
                serializeFalse(into: &bytes)
            }
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeNull(
            into bytes: inout [UInt8]
        ) {
            bytes += [0x6E, 0x75, 0x6C, 0x6C]
        }
    #else
        @inline(__always)
        private static func serializeNull(
            into bytes: inout [UInt8]
        ) {
            bytes += [0x6E, 0x75, 0x6C, 0x6C]
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeNumber(
            _ number: Number,
            options: SerializationOptions,
            into bytes: inout [UInt8]
        ) throws {

            func serializeInteger(
                _ integer: Int,
                into bytes: inout [UInt8]
            ) {
                let str = String(integer)
                bytes += Swift.Array(str.utf8)
            }

            func serializeDouble(
                _ double: Double,
                options: SerializationOptions,
                into bytes: inout [UInt8]
            ) throws {
                if double.isNaN {
                    if options.contains(.allowNonConformingFloatingPointValues) {
                        if options.contains(.nullifyNonConformingFloatingPointValues) {
                            serializeNull(into: &bytes)
                            return
                        } else {
                            serializeString("NaN", options: options, into: &bytes)
                            return
                        }
                    } else {
                        throw SerializationError.invalidFloat
                    }
                } else if double.isInfinite {
                    if options.contains(.allowNonConformingFloatingPointValues) {
                        if options.contains(.nullifyNonConformingFloatingPointValues) {
                            serializeNull(into: &bytes)
                            return
                        } else {
                            switch double.sign {
                            case .plus:
                                serializeString("Infinity", options: options, into: &bytes)
                            case .minus:
                                serializeString("-Infinity", options: options, into: &bytes)
                            }
                            return
                        }
                    } else {
                        throw SerializationError.invalidFloat
                    }
                }

                var string = String(double)
                if options.contains(.truncateWholeFloatingPointValues),
                   !string.contains("e"),
                   !string.contains("E"),
                   string.hasSuffix(".0") {
                    string.removeLast(2)
                }
                bytes += string.utf8
            }

            switch number.storage {
            case let .int(value):
                serializeInteger(value, into: &bytes)
            case let .double(value):
                try serializeDouble(value, options: options, into: &bytes)
            }
        }
    #else
        @inline(__always)
        private static func serializeNumber(
            _ number: Number,
            options: SerializationOptions,
            into bytes: inout [UInt8]
        ) throws {

            func serializeInteger(
                _ integer: Int,
                into bytes: inout [UInt8]
            ) {
                let str = String(integer)
                bytes += Swift.Array(str.utf8)
            }

            func serializeDouble(
                _ double: Double,
                options: SerializationOptions,
                into bytes: inout [UInt8]
            ) throws {
                if double.isNaN {
                    if options.contains(.allowNonConformingFloatingPointValues) {
                        if options.contains(.nullifyNonConformingFloatingPointValues) {
                            serializeNull(into: &bytes)
                            return
                        } else {
                            serializeString("NaN", options: options, into: &bytes)
                            return
                        }
                    } else {
                        throw SerializationError.invalidFloat
                    }
                } else if double.isInfinite {
                    if options.contains(.allowNonConformingFloatingPointValues) {
                        if options.contains(.nullifyNonConformingFloatingPointValues) {
                            serializeNull(into: &bytes)
                            return
                        } else {
                            switch double.sign {
                            case .plus:
                                serializeString("Infinity", options: options, into: &bytes)
                            case .minus:
                                serializeString("-Infinity", options: options, into: &bytes)
                            }
                            return
                        }
                    } else {
                        throw SerializationError.invalidFloat
                    }
                }

                var string = String(double)
                if options.contains(.truncateWholeFloatingPointValues),
                   !string.contains("e"),
                   !string.contains("E"),
                   string.hasSuffix(".0") {
                    string.removeLast(2)
                }
                bytes += string.utf8
            }

            switch number.storage {
            case let .int(value):
                serializeInteger(value, into: &bytes)
            case let .double(value):
                try serializeDouble(value, options: options, into: &bytes)
            }
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeString(
            _ string: String,
            options: SerializationOptions,
            into bytes: inout [UInt8]
        ) {
            bytes.append(UInt8(ascii: "\""))
            for scalar in string.unicodeScalars {
                switch scalar.value {
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
                case 0x00...0x1F:
                    let hex = String(format: "\\u%04X", scalar.value)
                    bytes.append(contentsOf: hex.utf8)
                case 0x22:
                    bytes.append(contentsOf: "\\\"".utf8)
                case 0x2F:
                    if options.contains(.escapeForwardSlash) {
                        bytes.append(contentsOf: "\\/".utf8)
                    } else {
                        bytes.append(UInt8(scalar.value))
                    }
                case 0x5C:
                    bytes.append(contentsOf: "\\\\".utf8)
                case 0x20...0x7F:
                    bytes.append(UInt8(scalar.value))
                case 0x80...0xFFFF:
                    if options.contains(.escapeNonASCII) {
                        let hex = String(format: "\\u%04X", scalar.value)
                        bytes.append(contentsOf: hex.utf8)
                    } else {
                        bytes.append(contentsOf: String(scalar).utf8)
                    }
                default:
                    if options.contains(.escapeSpecialCharacters) || options.contains(.escapeNonASCII) {
                        let codepoint = scalar.value - 0x10000
                        let high = 0xD800 + (codepoint >> 10)
                        let low = 0xDC00 + (codepoint & 0x3FF)
                        bytes.append(contentsOf: String(format: "\\u%04X\\u%04X", high, low).utf8)
                    } else {
                        bytes.append(contentsOf: String(scalar).utf8)
                    }
                }
            }
            bytes.append(UInt8(ascii: "\""))
        }
    #else
        @inline(__always)
        private static func serializeString(
            _ string: String,
            options: SerializationOptions,
            into bytes: inout [UInt8]
        ) {
            bytes.append(UInt8(ascii: "\""))
            for scalar in string.unicodeScalars {
                switch scalar.value {
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
                case 0x00...0x1F:
                    let hex = String(format: "\\u%04X", scalar.value)
                    bytes.append(contentsOf: hex.utf8)
                case 0x22:
                    bytes.append(contentsOf: "\\\"".utf8)
                case 0x2F:
                    if options.contains(.escapeForwardSlash) {
                        bytes.append(contentsOf: "\\/".utf8)
                    } else {
                        bytes.append(UInt8(scalar.value))
                    }
                case 0x5C:
                    bytes.append(contentsOf: "\\\\".utf8)
                case 0x20...0x7F:
                    bytes.append(UInt8(scalar.value))
                case 0x80...0xFFFF:
                    if options.contains(.escapeNonASCII) {
                        let hex = String(format: "\\u%04X", scalar.value)
                        bytes.append(contentsOf: hex.utf8)
                    } else {
                        bytes.append(contentsOf: String(scalar).utf8)
                    }
                default:
                    if options.contains(.escapeSpecialCharacters) || options.contains(.escapeNonASCII) {
                        let codepoint = scalar.value - 0x10000
                        let high = 0xD800 + (codepoint >> 10)
                        let low = 0xDC00 + (codepoint & 0x3FF)
                        bytes.append(contentsOf: String(format: "\\u%04X\\u%04X", high, low).utf8)
                    } else {
                        bytes.append(contentsOf: String(scalar).utf8)
                    }
                }
            }
            bytes.append(UInt8(ascii: "\""))
        }
    #endif

    #if compiler(>=6.3)
        @inline(always)
        private static func serializeIndentation(
            level: Int,
            into bytes: inout [UInt8]
        ) {

            func indent(into bytes: inout [UInt8]) {
                serializeSpace(into: &bytes)
                serializeSpace(into: &bytes)
            }

            for _ in 0..<level {
                indent(into: &bytes)
            }
        }
    #else
        @inline(__always)
        private static func serializeIndentation(
            level: Int,
            into bytes: inout [UInt8]
        ) {

            func indent(into bytes: inout [UInt8]) {
                serializeSpace(into: &bytes)
                serializeSpace(into: &bytes)
            }

            for _ in 0..<level {
                indent(into: &bytes)
            }
        }
    #endif

}
