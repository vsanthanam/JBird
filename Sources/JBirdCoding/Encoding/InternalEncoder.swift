// JBird
// InternalEncoder.swift
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

final class InternalEncoder: Encoder {

    init(
        codingPath: [any CodingKey],
        userInfo: [CodingUserInfoKey: Any],
        onUpdate: ((JSON) -> Void)? = nil
    ) {
        self.codingPath = codingPath
        self.userInfo = userInfo
        self.onUpdate = onUpdate
    }

    // MARK: - API

    func update(
        to value: JSON
    ) {
        current = value
        onUpdate?(value)
    }

    func finalize() throws -> JSON {
        guard let current else {
            throw EncodingError.invalidValue(
                JSON.null,
                .init(
                    codingPath: codingPath,
                    debugDescription: "Not Found"
                )
            )
        }
        return current
    }

    // MARK: - Encoder

    let codingPath: [any CodingKey]

    let userInfo: [CodingUserInfoKey: Any]

    func container<Key>(
        keyedBy type: Key.Type
    ) -> KeyedEncodingContainer<Key> where Key: CodingKey {
        let encoder = KeyedEncoder<Key>(encoder: self, object: [:])
        let container = KeyedEncodingContainer(encoder)
        return container
    }

    func unkeyedContainer() -> any UnkeyedEncodingContainer {
        UnkeyedEncoder(encoder: self, array: [])
    }

    func singleValueContainer() -> any SingleValueEncodingContainer {
        SingleEncoder(encoder: self)
    }

    private var current: JSON? = nil
    private let onUpdate: ((JSON) -> Void)?

}
