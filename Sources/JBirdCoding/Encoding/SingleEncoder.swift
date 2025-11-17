// JBird
// SingleEncoder.swift
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

import JBirdCore

final class SingleEncoder: SingleValueEncodingContainer {

    init(encoder: InternalEncoder) {
        self.encoder = encoder
    }

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    func encodeNil() throws {
        json = .null
    }

    func encode(_ value: Bool) throws {
        json = JSON(value)
    }

    func encode(_ value: String) throws {
        json = JSON(value)
    }

    func encode(_ value: Float) throws {
        json = JSON(value)
    }

    func encode(_ value: Double) throws {
        json = JSON(value)
    }

    func encode(_ value: Int) throws {
        json = JSON(value)
    }

    func encode(_ value: Int8) throws {
        json = JSON(value)
    }

    func encode(_ value: Int16) throws {
        json = JSON(value)
    }

    func encode(_ value: Int32) throws {
        json = JSON(value)
    }

    func encode(_ value: Int64) throws {
        json = JSON(value)
    }

    func encode(_ value: UInt) throws {
        json = JSON(value)
    }

    func encode(_ value: UInt8) throws {
        json = JSON(value)
    }

    func encode(_ value: UInt16) throws {
        json = JSON(value)
    }

    func encode(_ value: UInt32) throws {
        json = JSON(value)
    }

    func encode(_ value: UInt64) throws {
        json = JSON(value)
    }

    func encode<T>(_ value: T) throws where T : Encodable {
        let encoder = InternalEncoder(codingPath: codingPath, userInfo: encoder.userInfo)
        try value.encode(to: encoder)
        json = try encoder.finalize()
    }

    private let encoder: InternalEncoder
    private var json: JSON? {
        didSet {
            if let json {
                encoder.update(to: json)
            }
        }
    }

}
