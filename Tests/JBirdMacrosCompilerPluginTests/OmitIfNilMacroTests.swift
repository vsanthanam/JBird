// JBird
// OmitIfNilMacroTests.swift
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
        "OmitIfNil": MacroSpec(type: OmitIfNilMacro.self)
    ]
#endif

struct OmitIfNullMacroTestsV2 {

    @Test
    func `Annotated Optional Type With Question Mark`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    var age: Int?
                }
                """,
                expandedSource: """
                struct Foo {
                    var age: Int?
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
    func `Annotated Explicit Optional`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let data: Optional<Data>
                }
                """,
                expandedSource: """
                struct Foo {
                    let data: Optional<Data>
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
    func `Annotated IUO`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let value: String!
                }
                """,
                expandedSource: """
                struct Foo {
                    let value: String!
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
    func `Annotated non-optional`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let name: String
                }
                """,
                expandedSource: """
                struct Foo {
                    let name: String
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@OmitIfNil can only be applied to properties with optional types", line: 2, column: 5)
                ],
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
    func `Annotated computed property`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    var name: String? {
                        get { nil }
                    }
                }
                """,
                expandedSource: """
                struct Foo {
                    var name: String? {
                        get { nil }
                    }
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@OmitIfNil can only be applied to stored properties, not computed properties", line: 2, column: 5)
                ],
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
    func `Annotated multiple bindings at once`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let name: String?, age: Int?
                }
                """,
                expandedSource: """
                struct Foo {
                    let name: String?, age: Int?
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "peer macro can only be applied to a single variable", line: 2, column: 5)
                ],
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
    func `Annotated without type annotation`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let name = "test"
                }
                """,
                expandedSource: """
                struct Foo {
                    let name = "test"
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@OmitIfNil can only be applied to properties with explicit type annotations", line: 2, column: 5)
                ],
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
    func `Annotated on function`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    func bar() -> String? {
                        return nil
                    }
                }
                """,
                expandedSource: """
                struct Foo {
                    func bar() -> String? {
                        return nil
                    }
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@OmitIfNil can only be applied to stored properties", line: 2, column: 5)
                ],
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
    func `Annotated nested optional type`() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let value: [String?]?
                }
                """,
                expandedSource: """
                struct Foo {
                    let value: [String?]?
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
