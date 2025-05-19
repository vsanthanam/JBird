// JBird
// OmitIfNilMacro.swift
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

import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public struct OmitIfNilMacro: PeerMacro {

    // MARK: - PeerMacro

    public static func expansion(
        of node: AttributeSyntax,
        providingPeersOf declaration: some DeclSyntaxProtocol,
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        guard let varDecl = declaration.as(VariableDeclSyntax.self) else {
            throw MacroError("@OmitIfNil can only be applied to stored properties")
        }

        guard varDecl.bindings.count == 1 else {
            throw MacroError("@OmitIfNil can only be applied to a single stored property")
        }

        let binding = try varDecl.bindings.first.mustExist()

        guard binding.accessorBlock == nil else {
            throw MacroError("@OmitIfNil can only be applied to stored properties, not computed properties")
        }

        guard let typeAnnotation = binding.typeAnnotation else {
            throw MacroError("@OmitIfNil can only be applied to properties with explicit type annotations")
        }

        let type = typeAnnotation.type
        let isOptional = if let identifierType = type
            .as(IdentifierTypeSyntax.self),
            identifierType.name.text == "Optional" {
            true
        } else if type.is(OptionalTypeSyntax.self) {
            true
        } else if type.is(ImplicitlyUnwrappedOptionalTypeSyntax.self) {
            true
        } else {
            false
        }

        guard isOptional else {
            throw MacroError("@OmitIfNil can only be applied to properties with optional types")
        }

        return []
    }

}
