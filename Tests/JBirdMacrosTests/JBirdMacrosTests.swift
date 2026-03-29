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
import JBirdBuilders
import JBirdCore
import JBirdMacros
import Testing

struct JSONRepresentableTests {

    @Test
    func `@JSONRepresentable Class Support`() throws {
        let model = TestSubClass(foo: nil, bar: "foo")
        let json = JSON(model)
        let decoded = try TestClass(json: json)
        #expect(decoded.foo == model.foo)
        #expect(decoded.bar == model.bar)
        #expect(json == [
            "foo": nil,
            "bar": "foo"
        ])
    }

    @Test
    func `@JSONRepresentable Struct Support`() throws {

        let model = Foo(
            fooBar: 12,
            nested: nil,
            id: "123",
            optionalWithoutAnnotation: nil,
            nilIfMissing: nil
        )
        let json = JSON(model)
        let decoded = try Foo(json: json)
        #expect(model == decoded)
        #expect(json == [
            "foo_bar": 12,
            "id": "123",
            "nilIfMissing": .null
        ])

    }

    struct EnumSupport {

        @Test
        func `Basic enum decode`() throws {
            let model = TestEnum.foo
            let json = JSON(model)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == "foo")
        }

        @Test
        func `Enum with unlabled value`() throws {
            let model = TestEnum.baz(12)
            let json = JSON(model)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == ["baz": 12])
        }

        @Test
        func `Enum with multiple unlabled values`() throws {
            let model = TestEnum.corge("foo", nil)
            let json = JSON(model)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == ["corge": ["foo", nil]])
        }

        @Test
        func `Enum with multiple unlabled values of the same type`() throws {
            let model = TestEnum.qux("foo", "bar")
            let json = JSON(model)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == ["qux": ["foo", "bar"]])
        }

        @Test
        func `Enum with mixed label associated values`() throws {
            let model = TestEnum.quux(foo: 12, 3.4)
            let json = JSON(model)
            print(json)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == ["quux": ["foo": 12, "1": 3.4]])
        }

        @Test
        func `Enum with multiple labeled associated values`() throws {
            let model = TestEnum.grault(foo: "bar", bar: "foo")
            let json = JSON(model)
            print(json)
            let decoded = try TestEnum(json: json)
            #expect(model == decoded)
            #expect(json == ["grault": ["foo": "bar", "bar": "foo"]])
        }

    }

}

@JSONRepresentable
struct Foo: Equatable {
    
    init(
        fooBar: Int?,
        nested: TestNested?,
        id: String,
        optionalWithoutAnnotation: Int?,
        nilIfMissing: Double?
    ) {
        self.fooBar = fooBar
        self.nested = nested
        self.id = id
        self.optionalWithoutAnnotation = optionalWithoutAnnotation
        self.nilIfMissing = nilIfMissing
    }

    @JSONKey(.snakeCase)
    let fooBar: Int?

    @OmitIfNil
    let nested: TestNested?

    let id: String

    let optionalWithoutAnnotation: Int?

    @OmitIfNil(false)
    let nilIfMissing: Double?

}

@JSONRepresentable
struct TestNested: Equatable {

    let name: String

}

@JSONRepresentable
enum TestEnum: Equatable {

    case foo, bar
    case baz(Int)
    case qux(String, String?)
    case quux(foo: Int, Double)
    case corge(String, Int?)
    case grault(foo: String?, bar: String)
    case taco([Int])
    case burrito([String: String])

}

@JSONRepresentable
class TestClass {

    init(foo: Int?, bar: String) {
        self.foo = foo
        self.bar = bar
    }

    @OmitIfNil(false)
    let foo: Int?

    let bar: String

}

final class TestSubClass: TestClass {}
