// JBird
// SubscriptTests.swift
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

import JBird
import Testing

@Suite("Subscript Tests")
struct SubscriptTests {

    @Test("StringProtocol Init")
    func stringProtocolInit() {
        let key = JSON.Subscript(key: "foo")
        #expect(key == .key("foo"))
    }

    @Test("BinaryInteger Init")
    func binaryIntegerInit() {
        let index = JSON.Subscript(index: 12)
        #expect(index == .index(12))
    }

    @Test("SubscriptConvertibleInit")
    func subscriptConvertibleInit() {
        let key = JSON.Subscript("foo")
        #expect(key == .key("foo"))

        let index = JSON.Subscript(12)
        #expect(index == .index(12))

        enum CustomKey: String, JSONSubscriptConvertible {
            case foo
            case bar
        }

        let foo = JSON.Subscript(CustomKey.foo)
        #expect(foo == .key("foo"))

        let bar = JSON.Subscript(CustomKey.bar)
        #expect(bar == .key("bar"))

        enum CustomIndex: Int, JSONSubscriptConvertible {
            case one = 1
            case two = 2
        }

        let one = JSON.Subscript(CustomIndex.one)
        #expect(one == .index(1))

        let two = JSON.Subscript(CustomIndex.two)
        #expect(two == .index(2))
    }

    @Test("Key Description")
    func keyDescription() {
        let key = JSON.Subscript("foo")
        #expect(key.description == "foo")
    }

    @Test("Index Description")
    func indexDescription() {
        let index = JSON.Subscript(12)
        #expect(index.description == "12")
    }

}
