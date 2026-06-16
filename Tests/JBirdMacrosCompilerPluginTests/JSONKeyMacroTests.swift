// JBird
// JSONKeyMacroTests.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
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
        "JSONKey": MacroSpec(type: JSONKeyMacro.self)
    ]
#endif

@Suite("@JSONKey Tests")
struct JSONKeyMacroTests {

    @Test("Annotated stored property")
    func storedProperty() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @JSONKey("custom")
                    let name: String
                }
                """,
                expandedSource: """
                struct Foo {
                    let name: String
                }
                """,
                macroSpecs: macroSpecs
            ) { failures in
                Issue.record("An unexpected failure occured")
            }
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test("Annotated on function")
    func appliedToFunction() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @JSONKey("custom")
                    func bar() -> String {
                        return "bar"
                    }
                }
                """,
                expandedSource: """
                struct Foo {
                    func bar() -> String {
                        return "bar"
                    }
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@JSONKey can only be applied to stored properties", line: 2, column: 5)
                ],
                macroSpecs: macroSpecs
            ) { failures in
                Issue.record("An unexpected failure occured")
            }
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test("Annotated computed property")
    func computedProperty() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @JSONKey("custom")
                    var name: String {
                        get { "name" }
                    }
                }
                """,
                expandedSource: """
                struct Foo {
                    var name: String {
                        get { "name" }
                    }
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "@JSONKey can only be applied to stored properties, not computed properties", line: 2, column: 5)
                ],
                macroSpecs: macroSpecs
            ) { failures in
                Issue.record("An unexpected failure occured")
            }
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    @Test("Annotated multiple bindings at once")
    func multipleBindings() {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @JSONKey("custom")
                    let name: String, nickname: String
                }
                """,
                expandedSource: """
                struct Foo {
                    let name: String, nickname: String
                }
                """,
                diagnostics: [
                    DiagnosticSpec(message: "peer macro can only be applied to a single variable", line: 2, column: 5)
                ],
                macroSpecs: macroSpecs
            ) { failures in
                Issue.record("An unexpected failure occured")
            }
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

    /// The `bindings.count == 1` guard cannot be reached via `assertMacroExpansion`: the macro
    /// expansion framework rejects a peer macro on a multi-binding variable with its own
    /// "peer macro can only be applied to a single variable" diagnostic before the macro body
    /// runs. To exercise the guard, invoke the expansion directly with a two-binding declaration.
    @Test("Multiple bindings throws single stored property error")
    func multipleBindingsThrowsError() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            let variable = DeclSyntax(
                """
                @JSONKey("custom")
                let name: String, nickname: String
                """
            ).cast(VariableDeclSyntax.self)
            let attribute = try #require(variable.attributes.first?.cast(AttributeSyntax.self))
            let context = BasicMacroExpansionContext()

            var thrownMessage: String?
            do {
                _ = try JSONKeyMacro.expansion(
                    of: attribute,
                    providingPeersOf: variable,
                    in: context
                )
            } catch let error as SwiftSyntaxMacros.MacroExpansionErrorMessage {
                thrownMessage = error.message
            }

            #expect(thrownMessage == "@JSONKey can only be applied to a single stored property")
        #else
            Issue.record("macros are only supported when running tests for the host platform")
        #endif
    }

}
