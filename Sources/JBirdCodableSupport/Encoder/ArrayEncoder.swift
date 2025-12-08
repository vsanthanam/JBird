// JBird
// ArrayEncoder.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
final class ArrayEncoder: UnkeyedEncodingContainer {

    // MARK: - Initializer

    init(
        encoder: InternalEncoder,
        autoPopContainers: Bool,
    ) {
        self.encoder = encoder
        containerIndex = encoder.pushContainer(.array(JSON.Array()))
        self.autoPopContainers = autoPopContainers
    }

    // MARK: - UnkeyedEncodingContainer

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    var count: Int {
        encoder.array(at: containerIndex).count
    }

    func encodeNil() throws {
        append(.null)
    }

    func encode(
        _ value: Bool
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: String
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Double
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Float
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Int
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Int8
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Int16
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Int32
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: Int64
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: UInt
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: UInt8
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: UInt16
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: UInt32
    ) throws {
        append(JSON(value))
    }

    func encode(
        _ value: UInt64
    ) throws {
        append(JSON(value))
    }

    func encode<T>(
        _ value: T
    ) throws where T: Encodable {
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [IndexKey(count)],
            userInfo: encoder.userInfo,
            autoPopContainers: false,
            onValueChange: nil
        )
        try value.encode(to: nestedEncoder)
        let encoded = nestedEncoder.popContainer()
        append(encoded)
    }

    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey: CodingKey {
        let index = append(.object(JSON.Object()))
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var array = encoder.array(at: containerIndex)
            array[index] = json
            encoder.store(container: .array(array), at: containerIndex)
        }
        let container = ObjectEncoder<NestedKey>(encoder: nestedEncoder, autoPopContainers: true)
        return KeyedEncodingContainer(container)
    }

    func nestedUnkeyedContainer() -> any UnkeyedEncodingContainer {
        let index = append(.array(JSON.Array()))
        let nestedEncoder = InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var array = encoder.array(at: containerIndex)
            array[index] = json
            encoder.store(container: .array(array), at: containerIndex)
        }
        return ArrayEncoder(encoder: nestedEncoder, autoPopContainers: true)
    }

    func superEncoder() -> any Encoder {
        let index = append(.null)
        return InternalEncoder(
            storage: encoder.storage,
            codingPath: codingPath + [IndexKey(index)],
            userInfo: encoder.userInfo,
            autoPopContainers: true
        ) { [encoder, containerIndex] json in
            var array = encoder.array(at: containerIndex)
            array[index] = json
            encoder.store(container: .array(array), at: containerIndex)
        }
    }

    // MARK: - Private

    @discardableResult
    private func append(
        _ json: JSON
    ) -> Int {
        var array = encoder.array(at: containerIndex)
        array.append(json)
        encoder.store(container: .array(array), at: containerIndex)
        return array.index(before: array.endIndex)
    }

    private let encoder: InternalEncoder
    private let containerIndex: Int
    private let autoPopContainers: Bool

    // MARK: - Deinit

    deinit {
        if autoPopContainers {
            _ = encoder.popContainer()
        }
    }

}
