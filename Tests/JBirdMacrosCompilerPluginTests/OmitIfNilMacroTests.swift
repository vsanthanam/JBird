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
import SwiftSyntaxMacros
import SwiftSyntaxMacrosGenericTestSupport
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(JBirdMacrosCompilerPlugin)
    import JBirdMacrosCompilerPlugin

    fileprivate let testMacros: [String: any Macro.Type] = [
        "OmitIfNil": OmitIfNilMacro.self,
    ]
#endif

final class OmitIfNilMacroTests: XCTestCase {

    func test_optionalType() throws {
        #if canImport(JBirdMacrosCompilerPlugin)
            assertMacroExpansion(
                """
                struct Foo {
                    @OmitIfNil
                    let name: String?
                }
                """,
                expandedSource: """
                struct Foo {
                    let name: String?
                }
                """,
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_optionalTypeWithQuestionMark() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_implicitlyUnwrappedOptional() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_optionalTypeWithOptionalKeyword() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_nonOptionalType() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_computedProperty() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_multipleBindings() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_noTypeAnnotation() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_appliedToFunction() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

    func test_nestedOptionalType() throws {
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
                macros: testMacros
            )
        #else
            throw XCTSkip("macros are only supported when running tests for the host platform")
        #endif
    }

}
