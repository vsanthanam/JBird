// JBird
// InternalDecoder.swift
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

import JBirdCore

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
final class InternalDecoder: Decoder {

    // MARK: - Initializers

    init(
        storage: Storage,
        value: JSON,
        codingPath: [any CodingKey],
        userInfo: [CodingUserInfoKey: Any],
        parent: InternalDecoder?
    ) {
        self.storage = storage
        self.codingPath = codingPath
        self.userInfo = userInfo
        self.parent = parent
        self.storage.push(container: value)
    }

    // MARK: - API

    static func root(for json: JSON, userInfo: [CodingUserInfoKey: Any]) -> InternalDecoder {
        .init(
            storage: Storage(),
            value: json,
            codingPath: [],
            userInfo: userInfo,
            parent: nil
        )
    }

    var value: JSON {
        storage.topContainer
    }

    final class Storage {

        init(containers: [JSON] = []) {
            self.containers = containers
        }

        var topContainer: JSON {
            guard let container = containers.last else {
                preconditionFailure("Attempted to read from an empty container stack.")
            }
            return container
        }

        func push(
            container: JSON
        ) {
            containers.append(container)
        }

        func popContainer() {
            precondition(!containers.isEmpty, "Attempted to pop from an empty container stack.")
            containers.removeLast()
        }

        private var containers: [JSON] = []

    }

    let storage: Storage

    // MARK: - Decoder

    var codingPath: [any CodingKey]

    var userInfo: [CodingUserInfoKey: Any]

    func container<Key: CodingKey>(
        keyedBy type: Key.Type
    ) throws -> KeyedDecodingContainer<Key> {
        do {
            let container = try ObjectDecoder<Key>(
                decoder: self,
                object: value.objectValue
            )
            return KeyedDecodingContainer(container)
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(JSON.Object.self) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                JSON.Object.self,
                context
            )
        }
    }

    func unkeyedContainer() throws -> any UnkeyedDecodingContainer {
        do {
            return try ArrayDecoder(
                decoder: self,
                array: value.arrayValue
            )
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(JSON.Array.self) but found \(value.backingTypeDescription)"
            )
            throw DecodingError.typeMismatch(
                JSON.Array.self,
                context
            )
        }
    }

    func singleValueContainer() throws -> any SingleValueDecodingContainer {
        ValueDecoder(
            decoder: self,
            value: value
        )
    }

    // MARK: - Private

    private let parent: InternalDecoder?

    // MARK: - Deinit

    deinit {
        storage.popContainer()
    }

}
