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

@JSONCodable
private struct Foo: Codable, Equatable {

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

    private enum CodingKeys: String, CodingKey {
        case fooBar = "foo_bar"
        case nested
        case id
        case optionalWithoutAnnotation
        case nilIfMissing
    }

}

@JSONCodable
struct TestNested: Codable, Equatable {

    init(name: String) {
        self.name = name
    }

    let name: String

}

@JSONCodable
private enum TestEnum: Codable, Equatable {

    case plain
    case single(Int)
    case labeled(value: String)
    case multiple(Int, String)
    case mixed(Int, label: Double)

}

@Test("Test @JSONCodable Sample")
func jsonCodableSample() throws {

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

@Test("Test @JSONCodable Enum")
func jsonCodableEnum() throws {

    let values: [TestEnum] = [
        .plain,
        .single(42),
        .labeled(value: "name"),
        .multiple(1, "two"),
        .mixed(3, label: 4.5)
    ]

    try values.forEach { value in
        let json = JSON(value)
        let decoded = try TestEnum(json: json)
        #expect(value == decoded)
    }

    let encoded = JSON(TestEnum.multiple(7, "eight"))
    #expect(encoded == [
        "multiple": [
            "_0": 7,
            "_1": "eight"
        ]
    ])

}

@Test("@JSONCodable matches Foundation.JSONEncoder output")
func jsonCodableMatchesFoundationJSONEncoderOutput() throws {

    let encoder = JSONEncoder()
    encoder.outputFormatting = [.sortedKeys]

    let model = Foo(
        fooBar: 12,
        nested: .init(name: "nested"),
        id: "abc",
        optionalWithoutAnnotation: 7,
        nilIfMissing: 42.5
    )

    func assertMatches<T: JSONEncodable & Codable>(_ value: T) throws {
        let jbirdData = try JSON(value).serialize()
        let appleData = try encoder.encode(value)

        let jbirdObject = try JSONSerialization.jsonObject(with: jbirdData)
        let appleObject = try JSONSerialization.jsonObject(with: appleData)

        func jsonObjectsEqual(_ lhs: Any, _ rhs: Any) -> Bool {
            switch (lhs, rhs) {
            case let (lhs as [String: Any], rhs as [String: Any]):
                guard lhs.count == rhs.count else {
                    return false
                }

                for (key, lhsValue) in lhs {
                    guard let rhsValue = rhs[key], jsonObjectsEqual(lhsValue, rhsValue) else {
                        return false
                    }
                }

                return true

            case let (lhs as [Any], rhs as [Any]):
                guard lhs.count == rhs.count else {
                    return false
                }

                for (lhsValue, rhsValue) in zip(lhs, rhs) {
                    guard jsonObjectsEqual(lhsValue, rhsValue) else {
                        return false
                    }
                }

                return true

            case (_ as NSNull, _ as NSNull):
                return true

            case let (lhs as NSNumber, rhs as NSNumber):
                return lhs == rhs

            case let (lhs as NSString, rhs as NSString):
                return lhs == rhs

            default:
                return false
            }
        }

        #expect(
            jsonObjectsEqual(jbirdObject, appleObject),
            "Expected @JSONCodable output to match Foundation.JSONEncoder output"
        )
    }

    try assertMatches(model)

    let enumValues: [TestEnum] = [
        .plain,
        .single(42),
        .labeled(value: "name"),
        .multiple(1, "two"),
        .mixed(3, label: 4.5)
    ]

    try enumValues.forEach { value in
        try assertMatches(value)
    }

}
