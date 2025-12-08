// JBird
// ObjectEncoderTests.swift
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
import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Object Encoder Tests")
struct ObjectEncoderTests {

    @Test("Encode Keyed Scalars")
    func encodeAllScalars() throws {
        let val = AllScalars(
            foo: "foo",
            bar: 1.2,
            baz: 2.3,
            int: 1,
            int8: 2,
            int16: 3,
            int32: 4,
            int64: 5,
            uint: 6,
            uint8: 7,
            uint16: 8,
            uint32: 9,
            uint64: 10,
            bool: true,
            optional: nil,
            nested: .init(foo: 1.2, bar: false)
        )
        let foundationEncoder = JSONEncoder()
        foundationEncoder.outputFormatting = [.sortedKeys]
        let foundation = try foundationEncoder.encode(val)
        var jbirdEncoder = JSON.Encoder()
        jbirdEncoder.serializationOptions = [.sortedKeys]
        let jbird = try jbirdEncoder.encode(val)
        #expect(foundation == jbird)
    }

    @Test("Keyed Subclass")
    func keyedSubClass() throws {
        let value = SomeSub(foo: "bar", bar: "foo", qux: .init(quux: false, grault: 1.2))
        let foundationEncoder = JSONEncoder()
        foundationEncoder.outputFormatting = [.sortedKeys]
        let foundation = try foundationEncoder.encode(value)
        var jbirdEncoder = JSON.Encoder()
        jbirdEncoder.serializationOptions = [.sortedKeys]
        let jbird = try jbirdEncoder.encode(value)
        #expect(foundation == jbird)
    }

    @Test("Keyed Subclass With Key")
    func keyedSubClassWithKey() throws {
        let value = SomeSubWitihKey(foo: "bar", bar: "foo", qux: .init(quux: false, grault: 1.2))
        let foundationEncoder = JSONEncoder()
        foundationEncoder.outputFormatting = [.sortedKeys]
        let foundation = try foundationEncoder.encode(value)
        var jbirdEncoder = JSON.Encoder()
        jbirdEncoder.serializationOptions = [.sortedKeys]
        let jbird = try jbirdEncoder.encode(value)
        #expect(foundation == jbird)
    }
}
