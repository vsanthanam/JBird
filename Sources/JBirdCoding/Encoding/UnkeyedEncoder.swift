// JBird
// UnkeyedEncoder.swift
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

final class UnkeyedEncoder: UnkeyedEncodingContainer {

    init(
        encoder: InternalEncoder,
        array: JSON.Array
    ) {
        self.encoder = encoder
        self.array = array
    }

    var codingPath: [any CodingKey] {
        encoder.codingPath
    }

    var count: Int {
        array.count
    }

    func encodeNil() throws {
        append(.null)
    }

    func encode(_ value: Bool) throws {
        append(JSON(value))
    }

    func encode(_ value: String) throws {
        append(JSON(value))
    }

    func encode(_ value: Double) throws {
        append(JSON(value))
    }

    func encode(_ value: Float) throws {
        append(JSON(value))
    }

    func encode(_ value: Int) throws {
        append(JSON(value))
    }

    func encode(_ value: Int8) throws {
        append(JSON(value))
    }

    func encode(_ value: Int16) throws {
        append(JSON(value))
    }

    func encode(_ value: Int32) throws {
        append(JSON(value))
    }

    func encode(_ value: Int64) throws {
        append(JSON(value))
    }

    func encode(_ value: UInt) throws {
        append(JSON(value))
    }

    func encode(_ value: UInt8) throws {
        append(JSON(value))
    }

    func encode(_ value: UInt16) throws {
        append(JSON(value))
    }

    func encode(_ value: UInt32) throws {
        append(JSON(value))
    }

    func encode(_ value: UInt64) throws {
        append(JSON(value))
    }

    func encode<T>(_ value: T) throws where T : Encodable {
        let key = IndexCodingKey(count)
        let nested = InternalEncoder(
            codingPath: codingPath + [key],
            userInfo: encoder.userInfo
        )
        try value.encode(to: nested)
        let encoded = try nested.finalize()
        append(encoded)
    }

    func nestedContainer<NestedKey>(
        keyedBy keyType: NestedKey.Type
    ) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        let index = reserveSlot()
        let nestedEncoder = makeReferencingEncoder(forIndex: index)
        return nestedEncoder.container(keyedBy: keyType)
    }

    func nestedUnkeyedContainer() -> any UnkeyedEncodingContainer {
        let index = reserveSlot()
        let nestedEncoder = makeReferencingEncoder(forIndex: index)
        return nestedEncoder.unkeyedContainer()
    }

    func superEncoder() -> any Encoder {
        let index = reserveSlot()
        return makeReferencingEncoder(forIndex: index)
    }

    // MARK: - Private

    private let encoder: InternalEncoder

    private var array: JSON.Array {
        didSet {
            encoder.update(to: JSON(array))
        }
    }

    private func append(_ json: JSON) {
        array.append(json)
    }

    private func reserveSlot() -> Int {
        let index = array.count
        array.append(.null)
        return index
    }

    private func assign(
        _ json: JSON,
        at index: Int
    ) {
        if array.indices.contains(index) {
            array[index] = json
        } else if index == array.count {
            array.append(json)
        } else {
            assertionFailure("Attempted to assign value beyond current array bounds.")
        }
    }

    private func makeReferencingEncoder(
        forIndex index: Int
    ) -> InternalEncoder {
        InternalEncoder(
            codingPath: codingPath + [IndexCodingKey(index)],
            userInfo: encoder.userInfo,
            onUpdate: { [weak self] json in
                self?.assign(json, at: index)
            }
        )
    }

}
