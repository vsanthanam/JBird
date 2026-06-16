// JBird
// JBirdMacros.swift
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

import Foundation
import JBirdBuilders
import JBirdCore

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public enum JSONKeyComputationRule {
    case copy
    case snakeCase
}

/// A macro that automatically implements ``/JBirdCore/JSONRepresentable`` conformance to the types it annotates
///
/// You can only apply this macro to types that meet the following conditions:
/// - The type must be a `struct`, `class`, or `enum`
/// - If the type must only have stored properties that conform to `JSONRepresentable`.
/// - If the type is an enum, it must only have associated values that conform to `JSONRepresentable`.
///
/// - Note: The macro may not work correctly when applied to a class with a superclass, depending on its initializer requirements.
/// When applying `@JSONRepresentable` to a non-final class, a the macro will generate a `required` initializer. Subclasses will need to manually implement conformance and ensure that it works correctly.
///
/// When applied, this Swift code:
///
/// ```swift
/// @JSONRepresentable struct User {
///
///     let username: String
///
///     let age: Int
///
///     let tags: [String]
/// }
/// ```
///
/// would be expanded to this Swift code:
///
/// ```swift
/// @JSONRepresentable struct User {
///
///     let username: String
///
///     let age: Int
///
///     let tags: [String]
///
///     @JSON.Builder
///     public func encodeToJSON() -> JSON {
///         "username" => username
///         "age" => age
///         "tags" => tags
///     }
///
///     public init(json: JSON) throws {
///         self.username = try json["username"]
///         self.age = try json["age"]
///         self.tags = try json["tags"]
///     }
///
/// }
///
/// extension User: JSONRepresentable {}
/// ```
///
/// You can further customize what keys are used to represent stored properties.
/// See ``JBirdMacros/JSONKey(_:)-3i5us``, ``JBirdMacros/JSONKey(_:)-uxxr``, and ``JBirdMacros/OmitIfNil(_:)`` for more information.
///
/// - Note: If you are using this macro as part of `JBirdMacros`, you must also import `JBirdCore` and `JBirdBuilders` for the macro to properly expand.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@attached(
    extension,
    conformances: JSONConvertible, JSONInitializable
)
@attached(
    member,
    names: named(init(json:)), named(jsonValue)
)
public macro JSONRepresentable() = #externalMacro(
    module: "JBirdMacrosCompilerPlugin",
    type: "JSONRepresentableMacro"
)

/// A macro that allows you to determine how the key for for a stored property of a `@JSONRepresentable` type is computed.
///
/// This macro enables a stored property in a ``JBirdMacros/JSONRepresentable()`` annotated struct to determine what kind of key computation rule is used.
///
/// Example:
///
/// ```swift
/// @JSONRepresentable struct User {
///
///     @JSONKey(.snakeCase) let firstName: String
///
///     @JSONKey(.snakeCase) let lastName: String
///
/// }
/// ```
///
/// In this example, the JSON object used to represent instances of `User` will store the `firstName` property using a key called `"first_name"`, and the last `lastName` property using a key called `"last_name"`.
///
/// See the ``JSONKeyComputationRule`` enumeration for more information
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@attached(peer)
public macro JSONKey(
    _ keyRule: JSONKeyComputationRule = .copy
) = #externalMacro(
    module: "JBirdMacrosCompilerPlugin",
    type: "JSONKeyMacro"
)

/// A macro that allows you to use a custom key name for a stored property of a `@JSONRepresentable` type.
///
/// This macro enables a stored property in a ``JBirdMacros/JSONRepresentable()`` annotated struct to determine what key is used encode the value when it is represented as JSON
///
/// Example:
///
/// ```swift
/// @JSONRepresentable struct User {
///
///     @JSONKey("ldap") let name: String
/// }
/// ```
///
/// In this example, the JSON object used to represent instances of `User` will store the `name` property using a key called `"ldap"`, rather than the default value of `"name"`.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@attached(peer)
public macro JSONKey(
    _ key: String
) = #externalMacro(
    module: "JBirdMacrosCompilerPlugin",
    type: "JSONKeyMacro"
)

/// A macro that allows optional properties to be omitted from JSON encoding when their value is nil.
///
/// This macro must only be applied to stored properties with optional types.
///
/// Example:
///
/// ```swift
/// @JSONRepresentable struct User {
///
///     let id: String
///
///     @OmitIfNil var nickname: String?
///
/// }
/// ```
///
/// In this example, when encoding a `User` to JSON where `nickname` is nil,
/// the resulting JSON will not contain the `nickname` key.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@attached(peer)
public macro OmitIfNil(
    _ omitIfNil: Bool = true
) = #externalMacro(
    module: "JBirdMacrosCompilerPlugin",
    type: "OmitIfNilMacro"
)
