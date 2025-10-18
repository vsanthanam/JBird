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

public struct JSONCodableMacro: ExtensionMacro, MemberMacro {

    // MARK: - ExtensionMacro

    public static func expansion(
        of node: AttributeSyntax,
        attachedTo declaration: some DeclGroupSyntax,
        providingExtensionsOf type: some TypeSyntaxProtocol,
        conformingTo protocols: [TypeSyntax],
        in context: some MacroExpansionContext
    ) throws -> [ExtensionDeclSyntax] {
        let name: String

        if let structDecl = declaration.as(StructDeclSyntax.self) {
            name = structDecl.name.text
        } else if let enumDecl = declaration.as(EnumDeclSyntax.self) {
            name = enumDecl.name.text
        } else {
            throw MacroExpansionErrorMessage("@JSONCodable macro can only be applied to structs or enums")
        }

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
        if let structDecl = declaration.as(StructDeclSyntax.self) {
            return try expansionForStruct(structDecl)
        } else if let enumDecl = declaration.as(EnumDeclSyntax.self) {
            return try expansionForEnum(enumDecl)
        } else {
            throw MacroExpansionErrorMessage("@JSONCodable macro can only be applied to structs or enums")
        }

    }

    // MARK: - Private

    private static func expansionForStruct(_ declaration: StructDeclSyntax) throws -> [DeclSyntax] {
        let members = declaration.memberBlock.members

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

    private static func expansionForEnum(_ declaration: EnumDeclSyntax) throws -> [DeclSyntax] {
        let cases = declaration.memberBlock.members
            .compactMap { member -> EnumCaseDeclSyntax? in
                member.decl.as(EnumCaseDeclSyntax.self)
            }
            .flatMap { caseDecl -> [EnumCaseElementSyntax] in
                Array(caseDecl.elements)
            }

        let caseInfos: [EnumCaseInfo] = cases.map { element in
            let associatedValues: [AssociatedValue] = if let parameters = element.parameterClause?.parameters {
                parameters.enumerated().map { index, parameter in
                    let labelText: String? = if let firstName = parameter.firstName, firstName.text != "_" {
                        firstName.text
                    } else {
                        nil
                    }
                    let bindingName = labelText ?? "value\(index)"
                    let key = labelText ?? "_\(index)"
                    return AssociatedValue(label: labelText, key: key, bindingName: bindingName)
                }
            } else {
                []
            }
            return EnumCaseInfo(name: element.name.text, associatedValues: associatedValues)
        }

        let encodeCases = caseInfos
            .map { info -> String in
                if info.associatedValues.isEmpty {
                    return """
                        case .\(info.name):
                            return [\"\(info.name)\": .object([:])]
                    """
                } else {
                    let pattern = info.associatedValues
                        .enumerated()
                        .map { _, value -> String in
                            if let label = value.label {
                                "\(label): \(value.bindingName)"
                            } else {
                                value.bindingName
                            }
                        }
                        .joined(separator: ", ")

                    let payloadEntries = info.associatedValues
                        .enumerated()
                        .map { index, value -> String in
                            let suffix = index < info.associatedValues.count - 1 ? "," : ""
                            return "            \"\(value.key)\": JSON(\(value.bindingName))\(suffix)"
                        }
                        .joined(separator: "\n")

                    return """
                        case let .\(info.name)(\(pattern)):
                            return [\"\(info.name)\": .object([
                    \(payloadEntries)
                            ])]
                    """
                }
            }
            .joined(separator: "\n")

        let encodable = DeclSyntax(
            """
            public func encodeToJSON() -> JSON {
                switch self {
                    \(raw: encodeCases)
                }
            }
            """
        )

        let decodeCases = caseInfos
            .map { info -> String in
                if info.associatedValues.isEmpty {
                    return """
                        if json.containsValue(forKey: \"\(info.name)\") {
                            self = .\(info.name)
                            return
                        }
                    """
                } else {
                    let argumentExpressions = info.associatedValues
                        .map { value -> String in
                            if let label = value.label {
                                "\(label): try payload[\"\(value.key)\"]"
                            } else {
                                "try payload[\"\(value.key)\"]"
                            }
                        }

                    let arguments: String
                    if argumentExpressions.count > 1 {
                        let joined = argumentExpressions.joined(separator: ",\n                ")
                        arguments = "\n                \(joined)\n            "
                    } else {
                        arguments = argumentExpressions.joined(separator: ", ")
                    }

                    return """
                        if json.containsValue(forKey: \"\(info.name)\") {
                            let payload = try json[\"\(info.name)\"]
                            self = .\(info.name)(\(arguments))
                            return
                        }
                    """
                }
            }
            .joined(separator: "\n")

        let decodable = DeclSyntax(
            """
            public init(json: JSON) throws {
                \(raw: decodeCases)
                throw JBirdCore.JSONError.invalidRawRepresentable
            }
            """
        )

        return [encodable, decodable]
    }

    private struct EnumCaseInfo {

        let name: String
        let associatedValues: [AssociatedValue]

    }

    private struct AssociatedValue {

        let label: String?
        let key: String
        let bindingName: String

    }

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
    }

}
