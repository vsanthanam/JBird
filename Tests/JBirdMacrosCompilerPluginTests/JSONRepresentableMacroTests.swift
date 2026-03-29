// JBird
// JSONRepresentableMacroTests.swift
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
import SwiftSyntaxMacroExpansion
import SwiftSyntaxMacros
import SwiftSyntaxMacrosGenericTestSupport
import Testing

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(JBirdMacrosCompilerPlugin)
    import JBirdMacrosCompilerPlugin

    fileprivate let macroSpecs: [String: MacroSpec] = [
        "JSONRepresentable": MacroSpec(type: JSONRepresentableMacro.self)
    ]
#endif

struct JSONRepresentableMacroTests {

    @Test
    func basic() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
                struct Foo {

                    let name: String

                }
                """,
                expandedSource: """
                struct Foo {

                    let name: String

                    @JBirdCore.JSON.Builder
                    public var jsonValue: JBirdCore.JSON {
                        "name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Custom Key`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
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
                    public var jsonValue: JBirdCore.JSON {
                        "custom_name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["custom_name"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Snake Case`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
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
                    public var jsonValue: JBirdCore.JSON {
                        "foo_bar" => fooBar
                    }

                    public init(json: JSON) throws {
                        self.fooBar = try json["foo_bar"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Omit If Nil No Annotation`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
                struct Foo {

                    let name: String?

                }
                """,
                expandedSource: """
                struct Foo {

                    let name: String?

                    @JBirdCore.JSON.Builder
                    public var jsonValue: JBirdCore.JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.convert()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Omit If Nil With Annotation`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
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
                    public var jsonValue: JBirdCore.JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.convert()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Omit If Nil With Annotation True`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable(true)
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
                    public var jsonValue: JBirdCore.JSON {
                        if let name {
                        "name" => name
                        }
                    }

                    public init(json: JSON) throws {
                        if let name = try? json["name"] {
                        self.name = try name.convert()
                        } else {
                        self.name = nil
                        }
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Omit If Nil With Annotation False`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
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
                    public var jsonValue: JBirdCore.JSON {
                        "name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func enums() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
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

                    public var jsonValue: JBirdCore.JSON {
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
                        func convert_case_foo() throws -> Self {
                        let raw = try json.convert(into: String.self)
                        guard raw == "foo" else {
                            throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
                        }
                        return .foo
                        }
                        func convert_case_bar() throws -> Self {
                            let raw = try json.convert(into: String.self)
                            guard raw == "bar" else {
                                throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
                            }
                            return .bar
                        }
                        func convert_case_baz() throws -> Self {
                            let value = try json["baz"]
                            return .baz(try value.convert())
                        }
                        func convert_case_qux() throws -> Self {
                            let associatedValues = try json["qux"]
                            let string = try associatedValues[0]
                        let dictionary_string_int = try associatedValues[1]
                            return .qux(try string.convert(), try dictionary_string_int.convert())
                        }
                        func convert_case_quux() throws -> Self {
                            let associatedValues = try json["quux"]
                            let foo = try associatedValues["foo"]
                        let double = try associatedValues["1"]
                            return .quux(foo: try foo.convert(), try double.convert())
                        }
                        func convert_case_corge() throws -> Self {
                            let associatedValues = try json["corge"]
                            let foo = try associatedValues["foo"]
                        let bar = try associatedValues["bar"]
                            return .corge(foo: try foo.convert(), bar: try bar.convert())
                        }

                        if let value = try? convert_case_foo() {
                            self = value
                            return
                        }
                        if let value = try? convert_case_bar() {
                            self = value
                            return
                        }
                        if let value = try? convert_case_baz() {
                            self = value
                            return
                        }
                        if let value = try? convert_case_qux() {
                            self = value
                            return
                        }
                        if let value = try? convert_case_quux() {
                            self = value
                            return
                        }
                        if let value = try? convert_case_corge() {
                            self = value
                            return
                        }

                        throw JBirdMacros.JSONMacroDecodingError("Enum case decoding failure")
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Non-Final Class`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
                class Foo {

                    let name: String

                }
                """,
                expandedSource: """
                class Foo {

                    let name: String

                    @JBirdCore.JSON.Builder
                    public var jsonValue: JBirdCore.JSON {
                        "name" => name
                    }

                    public required init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test
    func `Final Class`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                @JSONRepresentable
                final class Foo {

                    let name: String

                }
                """,
                expandedSource: """
                final class Foo {

                    let name: String

                    @JBirdCore.JSON.Builder
                    public var jsonValue: JBirdCore.JSON {
                        "name" => name
                    }

                    public init(json: JSON) throws {
                        self.name = try json["name"]
                    }

                }

                extension Foo: JBirdCore.JSONConvertible {
                }

                extension Foo: JBirdCore.JSONInitializable {
                }
                """,
                macroSpecs: macroSpecs,
                failureHandler: { failures in
                    Issue.record("An unexpected failure occured")
                }
            )
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

}
