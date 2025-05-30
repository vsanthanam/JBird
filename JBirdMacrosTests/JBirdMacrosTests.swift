// JBird
// JBirdMacrosTests.swift
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
import JBirdMacros
import JBirdBuilders
import Testing

@JSONCodable
private struct Foo: Equatable {

    init(
        fooBar: Int?,
        nested: TestNested?,
        id: String
    ) {
        self.fooBar = fooBar
        self.nested = nested
        self.id = id
    }

    @JSONKey(.snakeCase)
    let fooBar: Int?

    @OmitIfNil
    let nested: TestNested?

    let id: String

    @JSONCodable
    struct TestNested: Equatable {

        init(name: String) {
            self.name = name
        }

        let name: String

    }

}

@Test("Test @JSONCodable Sample")
func jsonCodableSample() throws {

    let model = Foo(fooBar: 12, nested: nil, id: "123")
    let json = JSON(model)
    let decoded = try Foo(json: json)
    #expect(model == decoded)
    #expect(json == [
        "foo_bar": 12,
        "id": "123"
    ])

}
