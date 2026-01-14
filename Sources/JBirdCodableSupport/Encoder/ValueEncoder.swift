// JBird
// ValueEncoder.swift
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
struct ValueEncoder: SingleValueEncodingContainer {

    // MARK: - Initializer

    init(
        encoder: InternalEncoder
    ) {
        self.encoder = encoder
        containerIndex = encoder.pushContainer(.null)
    }

    // MARK: - SingleValueEncodingContainer

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    mutating func encodeNil() throws {
        write(.null)
    }

    mutating func encode(
        _ value: Bool
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: String
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: Double
    ) throws {
        try write(JSON.Encoder.encodeDouble(value, codingPath: codingPath))
    }

    mutating func encode(
        _ value: Float
    ) throws {
        try write(JSON.Encoder.encodeFloat(value, codingPath: codingPath))
    }

    mutating func encode(
        _ value: Int
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: Int8
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: Int16
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: Int32
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: Int64
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: UInt
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: UInt8
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: UInt16
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: UInt32
    ) throws {
        write(JSON(value))
    }

    mutating func encode(
        _ value: UInt64
    ) throws {
        write(JSON(value))
    }

    mutating func encode<T>(
        _ value: T
    ) throws where T: Encodable {
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath,
            userInfo: encoder.userInfo,
            autoPopContainers: false,
            onValueChange: nil
        )
        if let data = value as? Data {
            try JSON.Encoder.encodeData(data, to: nestedEncoder)
        } else if let date = value as? Date {
            try JSON.Encoder.encodeDate(date, to: nestedEncoder)
        } else {
            try value.encode(to: nestedEncoder)
        }
        let encoded = nestedEncoder.popContainer()
        write(encoded)
    }

    // MARK: - Private

    private mutating func write(
        _ json: JSON
    ) {
        precondition(!hasWritten, "Attempted to encode multiple values into a single value container at coding path \(codingPath)")
        encoder.store(container: json, at: containerIndex)
        hasWritten = true
    }

    private let encoder: InternalEncoder
    private let containerIndex: Int
    private var hasWritten = false

}
