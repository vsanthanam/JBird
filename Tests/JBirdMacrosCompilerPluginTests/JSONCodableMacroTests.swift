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

    fileprivate let testMacros: [String: any Macro.Type] = [
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

                    @JBirdCore.JSON.Builder
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

    func test_enums() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                enum Foo {

                    case foo, bar
                    case baz(String)
                    case qux(String?, [String: Int])
                    case quux(foo: String, Double)
                    case corge(foo: Int, bar: Double)

                }
                """,
                expandedSource: """
                enum Foo {

                    case foo, bar
                    case baz(String)
                    case qux(String?, [String: Int])
                    case quux(foo: String, Double)
                    case corge(foo: Int, bar: Double)

                    public func encodeToJSON() -> JSON {
                        switch self {
                            case .foo:
                        "foo"
                        case .bar:
                            "bar"
                        case let .baz(string):
                            JSON {
                                "baz" => string
                            }
                        case let .qux(string, dictionary_string_int):
                            JSON {
                                "qux" => JSON {
                                    string
                                dictionary_string_int
                                }
                            }
                        case let .quux(foo, double):
                            JSON {
                                "quux" => JSON {
                                    "foo" => foo
                                "1" => double
                                }
                            }
                        case let .corge(foo, bar):
                            JSON {
                                "corge" => JSON {
                                    "foo" => foo
                                "bar" => bar
                                }
                            }
                        }
                    }

                    public init(json: JSON) throws {
                        func decode_case_foo() throws -> Self {
                        let raw = try json.decode(into: String.self)
                        guard raw == "foo" else {
                            throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
                        }
                        return .foo
                        }
                        func decode_case_bar() throws -> Self {
                            let raw = try json.decode(into: String.self)
                            guard raw == "bar" else {
                                throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
                            }
                            return .bar
                        }
                        func decode_case_baz() throws -> Self {
                            let value = try json["baz"]
                            return .baz(try value.decode())
                        }
                        func decode_case_qux() throws -> Self {
                            let associatedValues = try json["qux"]
                            let string = try associatedValues[0]
                        let dictionary_string_int = try associatedValues[1]
                            return .qux(try string.decode(), try dictionary_string_int.decode())
                        }
                        func decode_case_quux() throws -> Self {
                            let associatedValues = try json["quux"]
                            let foo = try associatedValues["foo"]
                        let double = try associatedValues["1"]
                            return .quux(foo: try foo.decode(), try double.decode())
                        }
                        func decode_case_corge() throws -> Self {
                            let associatedValues = try json["corge"]
                            let foo = try associatedValues["foo"]
                        let bar = try associatedValues["bar"]
                            return .corge(foo: try foo.decode(), bar: try bar.decode())
                        }

                        if let value = try? decode_case_foo() {
                            self = value
                            return
                        }
                        if let value = try? decode_case_bar() {
                            self = value
                            return
                        }
                        if let value = try? decode_case_baz() {
                            self = value
                            return
                        }
                        if let value = try? decode_case_qux() {
                            self = value
                            return
                        }
                        if let value = try? decode_case_quux() {
                            self = value
                            return
                        }
                        if let value = try? decode_case_corge() {
                            self = value
                            return
                        }

                        throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
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

    func test_nonfinal_class() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                class Foo {

                    let name: String

                }
                """,
                expandedSource: """
                class Foo {

                    let name: String

                    @JBirdCore.JSON.Builder
                    public func encodeToJSON() -> JSON {
                        "name" => name
                    }

                    public required init(json: JSON) throws {
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

    func test_final_class() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONCodable
                final class Foo {

                    let name: String

                }
                """,
                expandedSource: """
                final class Foo {

                    let name: String

                    @JBirdCore.JSON.Builder
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
