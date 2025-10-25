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

import Foundation
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
            throw MacroExpansionErrorMessage("@JSONCodable macro can only be applied to structs or enums.")
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
            return try buildStructMembers(from: structDecl)
        } else if let enumDecl = declaration.as(EnumDeclSyntax.self) {
            return try buildEnumMembers(from: enumDecl)
        } else {
            throw MacroExpansionErrorMessage("@JSONCodable macro can only be applied to structs or enums.")
        }
    }

    // MARK: - Private

    private struct StoredProperty {
        let name: String
        let key: String
        let omitIfNil: Bool
    }

    private static func buildStructMembers(
        from structDecl: StructDeclSyntax
    ) throws -> [DeclSyntax] {
        let stored = try parseStoredProperties(in: structDecl)

        if Set(stored.map(\.key)).count != stored.count {
            throw MacroExpansionErrorMessage("Cannot generate JSONCodable conformance. Duplicate keys found.")
        }

        let encodeItems = stored
            .map { prop in
                if prop.omitIfNil {
                    """
                    if let \(prop.name) {
                        "\(prop.key)" => \(prop.name)
                    }
                    """
                } else {
                    "\"\(prop.key)\" => \(prop.name)"
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

        let decodeItems = stored
            .map { prop in
                if prop.omitIfNil {
                    """
                    if let \(prop.name) = try? json["\(prop.key)"] {
                        self.\(prop.name) = try \(prop.name).decode()
                    } else {
                        self.\(prop.name) = nil
                    }
                    """
                } else {
                    "self.\(prop.name) = try json[\"\(prop.key)\"]"
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

    private static func parseStoredProperties(in structDecl: StructDeclSyntax) throws -> [StoredProperty] {
        var result: [StoredProperty] = []

        for member in structDecl.memberBlock.members {
            guard let property = member.decl.as(VariableDeclSyntax.self) else { continue }
            guard property.bindings.count == 1 else {
                throw MacroExpansionErrorMessage("@JSONCodable can only be applied to single-value stored properties")
            }

            let binding = try property.bindings.first.mustExist()
            guard binding.accessorBlock == nil else { continue }

            let name = try binding.pattern
                .as(IdentifierPatternSyntax.self)
                .mustExist()
                .identifier.text

            let key = try resolveJSONKey(for: property, defaultName: name)
            let omitIfNil = try resolveOmitIfNil(for: property, binding: binding)

            result.append(StoredProperty(name: name, key: key, omitIfNil: omitIfNil))
        }

        return result
    }

    private static func resolveJSONKey(for property: VariableDeclSyntax, defaultName name: String) throws -> String {
        guard let keyAttribute = try findAttribute(named: "JSONKey", in: property.attributes) else {
            return name
        }

        if let arguments = keyAttribute.arguments,
           let labeledList = arguments.as(LabeledExprListSyntax.self),
           let first = labeledList.first {
            if let config = first.expression.as(MemberAccessExprSyntax.self) {
                switch config.declName.baseName.text {
                case "copy":
                    return name
                case "snakeCase":
                    return try snakeCase(name)
                default:
                    return name
                }
            } else if let str = first.expression.as(StringLiteralExprSyntax.self),
                      let segment = str.segments.first?.as(StringSegmentSyntax.self) {
                return segment.content.text
            }
        }

        return name
    }

    private static func resolveOmitIfNil(for property: VariableDeclSyntax, binding: PatternBindingSyntax) throws -> Bool {
        if let omitIfNilAttribute = try findAttribute(named: "OmitIfNil", in: property.attributes) {
            if let arguments = omitIfNilAttribute.arguments,
               let labeledList = arguments.as(LabeledExprListSyntax.self),
               let first = labeledList.first,
               let boolExpr = first.expression.as(BooleanLiteralExprSyntax.self) {
                boolExpr.literal.text == "true"
            } else {
                true
            }
        } else {
            isOptionalType(binding.typeAnnotation?.type)
        }
    }

    private static func findAttribute(named name: String, in attributes: AttributeListSyntax?) throws -> AttributeSyntax? {
        guard let attributes, !attributes.isEmpty else { return nil }
        for attribute in attributes {
            let attr = try attribute.as(AttributeSyntax.self).mustExist()
            if let memberName = attr.attributeName.as(MemberTypeSyntax.self) {
                if memberName.name.text == name { return attr }
            } else if let identifierName = attr.attributeName.as(IdentifierTypeSyntax.self) {
                if identifierName.name.text == name { return attr }
            }
        }
        return nil
    }

    private static func buildEnumMembers(from enumDecl: EnumDeclSyntax) throws -> [DeclSyntax] {
        let enumCases: [EnumCaseElementSyntax] = enumDecl.memberBlock.members.compactMap { member in
            member.decl.as(EnumCaseDeclSyntax.self)?.elements
        }.flatMap { Array($0) }

        guard !enumCases.isEmpty else {
            throw MacroExpansionErrorMessage("Enums annotated with @JSONCodable must contain at least one enum case.")
        }

        var encodeSwitchCases: [String] = []
        var decodeFunctions: [String] = []
        var decodeAttempts: [String] = []

        for element in enumCases {
            if let parameterClause = element.parameterClause {
                let usesObject = parameterClause.parameters.contains { $0.firstName != nil }
                let (vars, keys) = enumAssociatedVarsAndKeys(from: parameterClause)

                let varsAsArgument = vars.joined(separator: ", ")

                if usesObject {
                    let varsAsBody = vars.map { varName in
                        let key = keys[varName]!
                        return "\"\(key)\" => \(varName)"
                    }.joined(separator: "\n")

                    encodeSwitchCases.append(
                        """
                        case let .\(element.name)(\(varsAsArgument)):
                            JSON {
                                "\(element.name.text)" => JSON {
                                    \(varsAsBody)
                                }
                            }
                        """
                    )

                    let associatedDecode = vars.map { varName in
                        "let \(varName) = try associatedValues[\"\(keys[varName]!)\"]"
                    }.joined(separator: "\n")

                    let varsAsEnumCases = vars.map { varName in
                        let key = keys[varName]!
                        if UInt(key) != nil {
                            return "try \(varName).decode()"
                        } else {
                            return "\(varName): try \(varName).decode()"
                        }
                    }.joined(separator: ", ")

                    let fnName = "decode_case_\(element.name.text)"
                    let fn = """
                    func \(fnName)() throws -> Self {
                        let associatedValues = try json[\"\(element.name.text)\"]
                        \(associatedDecode)
                        return .\(element.name.text)(\(varsAsEnumCases))
                    }
                    """
                    decodeFunctions.append(fn)
                    decodeAttempts.append("""
                    if let value = try? \(fnName)() {
                        self = value
                        return
                    }
                    """)
                } else {
                    let varsAsBody = vars.joined(separator: "\n")
                    encodeSwitchCases.append(
                        """
                        case let .\(element.name)(\(varsAsArgument)):
                            JSON {
                                "\(element.name.text)" => JSON {
                                    \(varsAsBody)
                                }
                            }
                        """
                    )

                    let indices = Array(0..<vars.count)
                    let associatedDecode = indices.map { idx in
                        "let \(vars[idx]) = try associatedValues[\(idx)]"
                    }.joined(separator: "\n")

                    let varsAsEnumCases = vars.map { varName in
                        "try \(varName).decode()"
                    }.joined(separator: ", ")

                    let fnName = "decode_case_\(element.name.text)"
                    let fn = """
                    func \(fnName)() throws -> Self {
                        let associatedValues = try json[\"\(element.name.text)\"]
                        \(associatedDecode)
                        return .\(element.name.text)(\(varsAsEnumCases))
                    }
                    """
                    decodeFunctions.append(fn)
                    decodeAttempts.append("""
                    if let value = try? \(fnName)() {
                        self = value
                        return
                    }
                    """)
                }
            } else {
                encodeSwitchCases.append(
                    """
                    case .\(element.name.text):
                        \"\(element.name.text)\"
                    """
                )

                let fnName = "decode_case_\(element.name.text)"
                let fn = """
                func \(fnName)() throws -> Self {
                    let raw = try json.decode(into: String.self)
                    guard raw == \"\(element.name.text)\" else {
                        throw JBirdMacros.JSONDecodingError(\"Enum case decoding failure\")
                    }
                    return .\(element.name.text)
                }
                """
                decodeFunctions.append(fn)
                decodeAttempts.append("""
                if let value = try? \(fnName)() {
                    self = value
                    return
                }
                """)
            }
        }

        let encodable = DeclSyntax(
            """
            public func encodeToJSON() -> JSON {
                switch self {
                    \(raw: encodeSwitchCases.joined(separator: "\n"))
                }
            }
            """
        )

        var decodeBodySections: [String] = []
        let decodeFunctionsTogether = decodeFunctions.joined(separator: "\n")
        if !decodeFunctionsTogether.isEmpty { decodeBodySections.append(decodeFunctionsTogether) }
        let decodeAttemptsBody = decodeAttempts.joined(separator: "\n")
        if !decodeAttemptsBody.isEmpty { decodeBodySections.append(decodeAttemptsBody) }
        decodeBodySections.append("throw JBirdMacros.JSONDecodingError(\"Enum case decoding failure\")")

        let decodable = DeclSyntax(
            """
            public init(json: JSON) throws {
                \(raw: decodeBodySections.joined(separator: "\n\n"))
            }
            """
        )

        return [encodable, decodable]
    }

    private static func enumAssociatedVarsAndKeys(from clause: EnumCaseParameterClauseSyntax) -> ([String], [String: String]) {
        var vars: [String] = []
        var keys: [String: String] = [:]

        for (i, param) in clause.parameters.enumerated() {
            let varName: String = if let firstName = param.firstName?.text {
                firstName.lowercased()
            } else {
                param.type.description.lowercased()
            }
            vars.append(varName)
            keys[varName] = param.firstName?.text ?? String(i)
        }

        return (vars, keys)
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

    private static func snakeCase(
        _ name: String
    ) throws -> String {
        if #available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *) {
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
            do {
                let camelSegmentPattern = "([a-z0-9])([A-Z])"
                let acronymBoundaryPattern = "([A-Z])([A-Z][a-z])"

                let camelSegmentRegex = try NSRegularExpression(pattern: camelSegmentPattern, options: [])
                let acronymBoundaryRegex = try NSRegularExpression(pattern: acronymBoundaryPattern, options: [])

                var result = name

                let camelSegmentRange = NSRange(location: 0, length: result.utf16.count)
                result = camelSegmentRegex.stringByReplacingMatches(
                    in: result,
                    options: [],
                    range: camelSegmentRange,
                    withTemplate: "$1_$2"
                )

                let acronymBoundaryRange = NSRange(location: 0, length: result.utf16.count)
                result = acronymBoundaryRegex.stringByReplacingMatches(
                    in: result,
                    options: [],
                    range: acronymBoundaryRange,
                    withTemplate: "$1_$2"
                )

                return result.lowercased()
            } catch {
                throw MacroExpansionErrorMessage("Unknown Macro Expansion Failure")
            }
        }
    }

}
