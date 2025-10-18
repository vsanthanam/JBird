// JBird
// JSONCodableMacro.swift
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

import RegexBuilder
import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros
import Foundation

public struct JSONCodableMacro: ExtensionMacro, MemberMacro {

    // MARK: - ExtensionMacro

    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let name = try declaration
            .as(StructDeclSyntax.self)
            .mustExist("@JSONCodable macro can only be applied to structs")
            .name.text

        let encodable = try DeclSyntax(
            """
            extension \(raw: name): JBirdCore.JSONEncodable {}
            """
        )
        .as(ExtensionDeclSyntax.self)
        .mustExist()

        let decodable = try DeclSyntax(
            """
            extension \(raw: name): JBirdCore.JSONDecodable {}
            """
        )
        .as(ExtensionDeclSyntax.self)
        .mustExist()

        return [encodable, decodable]
    }

    // MARK: - MemberMacro

    public static func expansion(
        of node: AttributeSyntax,
        providingMembersOf declaration: some DeclGroupSyntax,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [DeclSyntax] {
        let members = try declaration
            .as(StructDeclSyntax.self)
            .mustExist("@JSONCodable macro can only be applied to structs")
            .memberBlock.members

        var storedProperties = [(name: String, key: String, omitIfNil: Bool)]()

        for item in members {
            if let property = item.decl.as(VariableDeclSyntax.self) {
                guard property.bindings.count == 1 else {
                    throw MacroExpansionErrorMessage("@JSONCodable can only be applied to single-value stored properties")
                }

                let key: String
                let omitIfNil: Bool

                let binding = try property.bindings.first.mustExist()

                guard binding.accessorBlock == nil else {
                    continue
                }

                let name = try binding.pattern
                    .as(IdentifierPatternSyntax.self)
                    .mustExist()
                    .identifier.text

                if let keyAttribute = try property.attributes.first(where: { attribute in
                    let attribute = try attribute
                        .as(AttributeSyntax.self)
                        .mustExist()
                    if let memberAttributeName = attribute.attributeName.as(MemberTypeSyntax.self) {
                        return memberAttributeName.name.text == "JSONKey"
                    } else if let identiferAttributeName = attribute.attributeName.as(IdentifierTypeSyntax.self) {
                        return identiferAttributeName.name.text == "JSONKey"
                    } else {
                        return false
                    }
                }) {
                    if let arguments = keyAttribute.as(AttributeSyntax.self)?.arguments {
                        let argument = try arguments.as(LabeledExprListSyntax.self).mustExist().first.mustExist()
                        if let config = argument.expression.as(MemberAccessExprSyntax.self) {
                            switch config.declName.baseName.text {
                            case "copy":
                                key = name
                            case "snakeCase":
                                key = snakeCase(name)
                            default:
                                key = name
                            }
                        } else if let str = argument.expression.as(StringLiteralExprSyntax.self) {
                            key = try str.segments.first
                                .mustExist()
                                .as(StringSegmentSyntax.self)
                                .mustExist()
                                .content.text
                        } else {
                            key = name
                        }
                    } else {
                        key = name
                    }
                } else {
                    key = name
                }

                if let omitIfNilAttribute = try property.attributes.first(where: { attribute in
                    let attribute = try attribute
                        .as(AttributeSyntax.self)
                        .mustExist()
                    if let memberAttributeName = attribute.attributeName.as(MemberTypeSyntax.self) {
                        return memberAttributeName.name.text == "OmitIfNil"
                    } else if let identiferAttributeName = attribute.attributeName.as(IdentifierTypeSyntax.self) {
                        return identiferAttributeName.name.text == "OmitIfNil"
                    } else {
                        return false
                    }
                }) {
                    if let arguments = omitIfNilAttribute.as(AttributeSyntax.self)?.arguments {
                        let argument = try arguments.as(LabeledExprListSyntax.self)
                            .mustExist()
                            .first
                            .mustExist()
                            .expression
                            .as(BooleanLiteralExprSyntax.self)
                            .mustExist()
                        omitIfNil = argument.literal.text == "true"
                    } else {
                        omitIfNil = true
                    }
                } else {
                    // Default behavior: true for optional properties, false for non-optional
                    omitIfNil = isOptionalType(binding.typeAnnotation?.type)
                }

                storedProperties += [(name: name, key: key, omitIfNil: omitIfNil)]
            }
        }

        if Set(storedProperties.map(\.key)).count != storedProperties.count {
            throw MacroExpansionErrorMessage("Cannot generate JSONCodable conformance. Duplicate keys found.")
        }

        let encodeItems = storedProperties
            .map { name, key, omitIfNil in
                if omitIfNil {
                    """
                    if let \(name) {
                        \"\(key)\" => \(name)
                    }
                    """
                } else {
                    """
                    \"\(key)\" => \(name)
                    """
                }
            }
            .joined(separator: "\n")

        let encodable = DeclSyntax(
            """
            @JBirdCore.JSON.ObjectBuilder
            public func encodeToJSON() -> JSON {
                \(raw: encodeItems)
            }
            """
        )

        let decodeItems = storedProperties
            .map { name, key, omitIfNil in
                if omitIfNil {
                    """
                    if let \(name) = try? json[\"\(key)\"] {
                        self.\(name) = try \(name).decode()
                    } else {
                        self.\(name) = nil
                    }
                    """
                } else {
                    """
                    self.\(name) = try json[\"\(key)\"]
                    """
                }
            }
            .joined(separator: "\n")

        let decodable = DeclSyntax(
            """
            public init(json: JSON) throws {
                \(raw: decodeItems)
            }
            """
        )

        return [encodable, decodable]
    }

    // MARK: - Private

    private static func isOptionalType(_ type: TypeSyntax?) -> Bool {
        guard let type else { return false }

        // Check for Optional<T> syntax
        if let identifierType = type.as(IdentifierTypeSyntax.self),
           identifierType.name.text == "Optional" {
            return true
        }

        // Check for T? syntax
        if type.is(OptionalTypeSyntax.self) {
            return true
        }

        // Check for T! syntax
        if type.is(ImplicitlyUnwrappedOptionalTypeSyntax.self) {
            return true
        }

        return false
    }

    private static func snakeCase(_ name: String) -> String {
        if #available(macOS 13, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 9.0, visionOS 1.0, *) {
            let regex = Regex {
                ChoiceOf {
                    Regex {
                        Capture {
                            ChoiceOf {
                                CharacterClass.generalCategory(.lowercaseLetter)
                                CharacterClass.generalCategory(.decimalNumber)
                            }
                        }
                        Capture {
                            CharacterClass.generalCategory(.uppercaseLetter)
                        }
                    }
                    Regex {
                        Capture {
                            CharacterClass.generalCategory(.uppercaseLetter)
                        }
                        Capture {
                            CharacterClass.generalCategory(.uppercaseLetter)
                            CharacterClass.generalCategory(.lowercaseLetter)
                        }
                    }
                }
            }

            var result = name

            result = result.replacing(regex) { match in
                if let first = match.output.1 {
                    return "\(first)_\(match.output.2!)"
                } else if let third = match.output.3 {
                    return "\(third)_\(match.output.4!)"
                }
                return String(match.output.0)
            }

            return result.lowercased()
        } else {
            // Fallback implementation for platforms without RegexBuilder (macOS 12 and earlier)
            // Convert CamelCase/PascalCase (and mixed with numbers) into snake_case.
            guard !name.isEmpty else { return "" }

            func isUppercase(_ ch: Character) -> Bool {
                let s = String(ch)
                return s != s.lowercased() && s == s.uppercased()
            }

            func isLowercase(_ ch: Character) -> Bool {
                let s = String(ch)
                return s != s.uppercased() && s == s.lowercased()
            }

            func isNumber(_ ch: Character) -> Bool {
                return ch.unicodeScalars.allSatisfy { CharacterSet.decimalDigits.contains($0) }
            }

            let chars = Array(name)
            var result = String()
            result.reserveCapacity(chars.count * 2)

            for i in chars.indices {
                let c = chars[i]
                let upper = isUppercase(c)
                let lower = isLowercase(c)
                let number = isNumber(c)

                if i > 0 {
                    let prev = chars[i - 1]
                    let prevIsUnderscore = prev == "_"
                    let prevUpper = isUppercase(prev)
                    let prevLower = isLowercase(prev)
                    let prevNumber = isNumber(prev)

                    let nextLower: Bool = {
                        if i + 1 < chars.count {
                            return isLowercase(chars[i + 1])
                        }
                        return false
                    }()

                    if !prevIsUnderscore {
                        // lower|number -> UPPER (e.g., "userID" or "versionX")
                        if upper && (prevLower || prevNumber) {
                            result.append("_")
                        }
                        // UPPER followed by lower (e.g., "URLSession" -> "url_session")
                        else if upper && nextLower {
                            result.append("_")
                        }
                        // letter -> number (e.g., "version2")
                        else if number && (prevLower || prevUpper) {
                            result.append("_")
                        }
                        // number -> letter (e.g., "v2Alpha")
                        else if (prevNumber && (upper || lower)) {
                            result.append("_")
                        }
                    }
                }

                result.append(String(c).lowercased())
            }

            return result
        }
    }

}
