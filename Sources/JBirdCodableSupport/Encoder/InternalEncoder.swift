// JBird
// InternalEncoder.swift
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
final class InternalEncoder: Encoder {

    // MARK: - Initializers

    init(
        storage: Storage,
        codingPath: [any CodingKey],
        userInfo: [CodingUserInfoKey: Any],
        autoPopContainers: Bool,
        onValueChange: ((JSON) -> Void)?
    ) {
        self.storage = storage
        self.codingPath = codingPath
        self.userInfo = userInfo
        self.autoPopContainers = autoPopContainers
        self.onValueChange = onValueChange
        self.depth = storage.count
    }

    // MARK: - API

    static func root(
        userInfo: [CodingUserInfoKey: any Sendable]
    ) -> InternalEncoder {
        .init(
            storage: Storage(),
            codingPath: [],
            userInfo: userInfo,
            autoPopContainers: false,
            onValueChange: nil
        )
    }

    let storage: Storage

    final class Storage {

        // MARK: - API

        var count: Int {
            containers.count
        }

        func push(
            container: JSON
        ) -> Int {
            containers.append(container)
            return containers.index(before: containers.endIndex)
        }

        func popContainer() -> JSON {
            precondition(!containers.isEmpty, "Attempted to pop an empty container stack.")
            return containers.removeLast()
        }

        func container(
            at index: Int
        ) -> JSON {
            containers[index]
        }

        func replace(
            container: JSON,
            at index: Int
        ) {
            containers[index] = container
        }

        // MARK: - Private

        private var containers: [JSON] = []

    }

    func finalize() -> JSON {
        guard storage.count > depth else {
            preconditionFailure("No value encoded at coding path \(codingPath)")
        }
        guard storage.count == depth + 1 else {
            preconditionFailure("Multiple containers encoded at coding path \(codingPath)")
        }
        return storage.popContainer()
    }

    func object(
        at index: Int
    ) -> JSON.Object {
        do {
            return try storage.container(at: index).objectValue
        } catch {
            preconditionFailure("Expected object container at index \(index)")
        }
    }

    func array(
        at index: Int
    ) -> JSON.Array {
        do {
            return try storage.container(at: index).arrayValue
        } catch {
            preconditionFailure("Expected array container at index \(index)")
        }
    }

    @discardableResult
    func pushContainer(
        _ container: JSON
    ) -> Int {
        let index = storage.push(container: container)
        onValueChange?(container)
        return index
    }

    func store(
        container: JSON,
        at index: Int
    ) {
        storage.replace(
            container: container,
            at: index
        )
        onValueChange?(container)
    }

    func popContainer() -> JSON {
        guard storage.count > depth else {
            preconditionFailure("Attempted to pop container at coding path \(codingPath) with empty stack.")
        }
        let container = storage.popContainer()
        guard storage.count == depth else {
            preconditionFailure("Unbalanced container stack at coding path \(codingPath)")
        }
        onValueChange?(container)
        return container
    }

    // MARK: - Encoder

    var codingPath: [any CodingKey]

    var userInfo: [CodingUserInfoKey: Any]

    func container<Key>(
        keyedBy type: Key.Type
    ) -> KeyedEncodingContainer<Key> where Key: CodingKey {
        precondition(containerType == nil, "Attempted to create multiple containers at coding path \(codingPath)")
        containerType = .keyed
        let container = ObjectEncoder<Key>(
            encoder: self,
            autoPopContainers: autoPopContainers
        )
        return KeyedEncodingContainer(container)
    }

    func unkeyedContainer() -> any UnkeyedEncodingContainer {
        precondition(containerType == nil, "Attempted to create multiple containers at coding path \(codingPath)")
        containerType = .unkeyed
        return ArrayEncoder(
            encoder: self,
            autoPopContainers: autoPopContainers
        )
    }

    func singleValueContainer() -> any SingleValueEncodingContainer {
        precondition(containerType == nil, "Attempted to create multiple containers at coding path \(codingPath)")
        containerType = .singleValue
        return ValueEncoder(encoder: self)
    }

    // MARK: - Private

    private enum ContainerType {
        case keyed
        case unkeyed
        case singleValue
    }

    private let autoPopContainers: Bool
    private let depth: Int
    private let onValueChange: ((JSON) -> Void)?
    private var containerType: ContainerType?

    // MARK: - Deinit

    deinit {
        if autoPopContainers {
            while storage.count > depth {
                _ = storage.popContainer()
            }
        }
    }

}
