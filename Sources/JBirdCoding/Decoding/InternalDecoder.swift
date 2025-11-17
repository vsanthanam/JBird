// JBird
// InternalDecoder.swift
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

final class InternalDecoder: Decoder {

    // MARK: - Initializers

    convenience init(
        value: JSON
    ) {
        self.init(
            value: value,
            codingPath: [],
            userInfo: [:]
        )
    }

    init(
        value: JSON,
        codingPath: [any CodingKey],
        userInfo: [CodingUserInfoKey : Any]
    ) {
        self.value = value
        self.codingPath = codingPath
        self.userInfo = userInfo
    }

    // MARK: - Decoder

    let codingPath: [any CodingKey]

    let userInfo: [CodingUserInfoKey : Any]

    func container<Key>(
        keyedBy type: Key.Type
    ) throws -> KeyedDecodingContainer<Key> where Key: CodingKey {
        do {
            let object = try value.objectValue
            let container = KeyedDecoder<Key>(
                decoder: self,
                object: object
            )
            return KeyedDecodingContainer(container)
        } catch {
            throw typeMismatch(
                for: JSON.Object.self,
                value: value,
                codingPath: codingPath
            )
        }
    }

    func unkeyedContainer() throws -> any UnkeyedDecodingContainer {
        do {
            let array = try value.arrayValue
            return UnkeyedDecoder(
                decoder: self,
                array: array
            )
        } catch {
            throw typeMismatch(
                for: JSON.Array.self,
                value: value,
                codingPath: codingPath
            )
        }
    }

    func singleValueContainer() throws -> any SingleValueDecodingContainer {
        SingleDecoder(
            decoder: self,
            value: value
        )
    }

    // MARK: - Private

    private let value: JSON

}
