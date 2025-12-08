// JBird
// EntryPoint.swift
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

    /// A JSON decoder
    public struct Decoder {

        // MARK: - Initializers

        /// Create a JSON decoder
        public init() {}

        // MARK: - API

        /// Options used to deserialize the payload
        public var deserializationOptions: JSON.DeserializationOptions = .default

        /// Decode a JSON payload into a `Decodable` type
        /// - Parameters:
        ///   - type: The type to decode into
        ///   - data: The payload to decode
        /// - Returns: An instance of the decoded type, based on the provided payload
        public func decode<T>(
            _ type: T.Type = T.self,
            from data: Data,
        ) throws -> T where T: Decodable {
            let json = try JSON.value(
                for: data,
                options: deserializationOptions
            )
            let decoder = InternalDecoder.root(for: json)
            return try T(from: decoder)
        }

    }

    /// A JSON encoder
    public struct Encoder {

        // MARK: - Initializers

        /// Create a JSON encoder
        public init() {}

        // MARK: - API

        /// Options used to create the serialized payload
        public var serializationOptions: JSON.SerializationOptions = [.fragmentsAllowed]

        /// Create a JSON payload based on an `Encodable` type
        /// - Parameter value: The type to encode
        /// - Returns: A serialized JSON payload, based on the provided `Encodable` type.
        public func encode(
            _ value: some Encodable
        ) throws -> Data {
            let encoder = InternalEncoder.root
            try value.encode(to: encoder)
            let json = encoder.finalize()
            return try JSON.data(
                from: json,
                options: serializationOptions
            )
        }

    }

}
