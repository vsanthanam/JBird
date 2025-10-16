// JBird
// Literal.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A JSON literal
    public enum Literal: Equatable, Hashable, Sendable, ExpressibleByBooleanLiteral, ExpressibleByNilLiteral, CustomStringConvertible {

        // MARK: - Initializers

        /// Create a literal from a `JSONLiteralConvertible`-conforming tyoe
        /// - Parameter convertible: The convertible type
        @available(*, deprecated, renamed: "init(_:)", message: "Use `init(_:)` instead")
        @_disfavoredOverload
        public init(
            _ convertible: some JSONLiteralConvertible
        ) {
            self = convertible.jsonLiteral
        }

        /// Create a `JSON.Literal` value from a ``JSONLiteralEncodable`` type
        /// - Parameter encodable: The encodable type to convert to a JSON literal
        public init(
            _ encodable: some JSONLiteralEncodable
        ) {
            self = encodable.encodeToJSONLiteral()
        }

        // MARK: - API

        /// A `true` literal
        case `true`

        /// A `false` literal
        case `false`

        /// A `null` literal
        case null

        /// The value as a Swift `bool`
        public var boolValue: Bool {
            get throws {
                switch self {
                case .true:
                    true
                case .false:
                    false
                case .null:
                    throw JSONError.illegalBoolConversion
                }
            }
        }

        /// Whether or not the literal value is a Boolean value.
        public var isBool: Bool {
            switch self {
            case .false, .true:
                true
            case .null:
                false
            }
        }

        /// Whether or not the literal value is `null`.
        public var isNull: Bool {
            switch self {
            case .true, .false:
                false
            case .null:
                true
            }
        }

        /// The untyped representation of the JSON literal
        ///
        /// This property returns the JSON literal as a native Swift type:
        /// - `true` and `false` literals are represented as `Bool`
        /// - `null` literals are represented as `nil`
        @available(*, deprecated, renamed: "unboxed()", message: "Use unboxed() instead. This property will be removed in a future version.")
        public var untyped: Any? {
            switch self {
            case .true:
                true
            case .false:
                false
            case .null:
                nil
            }
        }

        /// The untyped representation of the JSON literal
        /// - Returns: An `AnyHashable` containing a boolean or `NSNull` representing the JSON literal
        public func unboxed() -> AnyHashable {
            switch self {
            case .true:
                true
            case .false:
                false
            case .null:
                NSNull()
            }
        }

        // MARK: - ExpressibleByBooleanLiteral

        public typealias BooleanLiteralType = Bool

        public init(
            booleanLiteral value: BooleanLiteralType
        ) {
            self.init(value)
        }

        // MARK: - ExpressiblebyNilLiteral

        public init(
            nilLiteral: Void
        ) {
            self = .null
        }

        // MARK: - CustomStringConvertible

        public var description: String {
            switch self {
            case .true:
                "true"
            case .false:
                "false"
            case .null:
                "null"
            }
        }
    }

}
