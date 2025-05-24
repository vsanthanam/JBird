// JBird
// JBirdCompilerPluginTests.swift
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

import Testing

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(JBirdCompilerPlugin)
    @testable import JBirdCompilerPlugin
#endif

@Test("testMacors")
func jbirdCompilerPluginTests() {
    #if canImport(JBirdCompilerPlugin)
        let plugin = JBirdCompilerPlugin()
        #expect(plugin.providingMacros.count == 3)
        #expect(plugin.providingMacros[0] is JSONCodableMacro.Type)
        #expect(plugin.providingMacros[1] is JSONKeyMacro.Type)
        #expect(plugin.providingMacros[2] is OmitIfNilMacro.Type)
    #else
        Issue.record("macros are only supported when running tests for the host platform")
    #endif
}
