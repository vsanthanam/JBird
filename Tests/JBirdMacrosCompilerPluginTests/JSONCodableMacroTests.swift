// JBird
// JSONCodableMacroTests.swift
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

import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(JBirdMacrosCompilerPlugin)
    import JBirdMacrosCompilerPlugin

    let testMacros: [String: any Macro.Type] = [
        "JSONCodable": JSONCodableMacro.self,
    ]
#endif

final class JSONCodableMacroTests: XCTestCase {

    func test_basic() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    let name: String

                }
                """,
                expandedSource: """
                struct Foo {

                    let name: String

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        "name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_customKey() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @JSONKey("custom_name")
                    let name: String

                }
                """,
                expandedSource: """
                struct Foo {

                    @JSONKey("custom_name")
                    let name: String

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        "custom_name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["custom_name"]
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_snakeCase() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @JSONKey(.snakeCase)
                    let fooBar: String

                }
                """,
                expandedSource: """
                struct Foo {

                    @JSONKey(.snakeCase)
                    let fooBar: String

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        "foo_bar" => fooBar
                    }

                    public init(json: JSON) throws {
                        self.fooBar = try json["foo_bar"]
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_enum() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                enum Sample {

                    case plain
                    case single(Int)
                    case labeled(value: String)
                    case multiple(Int, String)

                }
                """,
                expandedSource: """
                enum Sample {

                    case plain
                    case single(Int)
                    case labeled(value: String)
                    case multiple(Int, String)

                    public func encodeToJSON() -> JSON {
                        switch self {
                                case .plain:
                            return ["plain": .object([:])]
                        case let .single(value0):
                            return ["single": .object([
                                "_0": JSON(value0)
                            ])]
                        case let .labeled(value: value):
                            return ["labeled": .object([
                                "value": JSON(value)
                            ])]
                        case let .multiple(value0, value1):
                            return ["multiple": .object([
                                "_0": JSON(value0),
                                "_1": JSON(value1)
                            ])]
                        }
                    }

                    public init(json: JSON) throws {
                            if json.containsValue(forKey: "plain") {
                            self = .plain
                            return
                        }
                        if json.containsValue(forKey: "single") {
                            let payload = try json["single"]
                            self = .single(try payload["_0"])
                            return
                        }
                        if json.containsValue(forKey: "labeled") {
                            let payload = try json["labeled"]
                            self = .labeled(value: try payload["value"])
                            return
                        }
                        if json.containsValue(forKey: "multiple") {
                            let payload = try json["multiple"]
                            self = .multiple(
                                    try payload["_0"],
                                    try payload["_1"]
                                )
                            return
                        }
                        throw JBirdCore.JSONError.invalidRawRepresentable
                    }

                }

                extension Sample: JBirdCore.JSONEncodable {
                }

                extension Sample: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif

    }

    func test_omitIfNil_noAnnotation() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    let name: String?

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.decode()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_omitIfNil_withAnnotation() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @OmitIfNil
                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    @OmitIfNil
                    let name: String?

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.decode()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_omitIfNil_withAnnotation_true() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable(true)
                struct Foo {

                    @OmitIfNil(true)
                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    @OmitIfNil(true)
                    let name: String?

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.decode()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_omitIfNil_withAnnotation_false() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                struct Foo {

                    @OmitIfNil(false)
                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    @OmitIfNil(false)
                    let name: String?

                    @JBirdCore.JSON.ObjectBuilder
                    public func encodeToJSON() -> JSON {
                        "name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONEncodable {
                }

                extension Foo: JBirdCore.JSONDecodable {
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

}
