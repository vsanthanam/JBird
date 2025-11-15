// JBird
// JSONLiteralCodable.swift
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

/// A type that can convert itself into and out of an external `JSON.Literal` representation.
///
/// `JSONLiteralCodable` is a type alias for the ``JSONLiteralEncodable`` and ``JSONLiteralDecodable`` protocols.
/// When you use `JSONLiteralCodable` as a type or a generic constraint, it matches any type that conforms to both protocols.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public typealias JSONLiteralCodable = JSONLiteralDecodable & JSONLiteralEncodable

/// A type that can encode itself to an external  `JSON.Literal` representation.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public protocol JSONLiteralEncodable {

    /// Encode this value to a typed `JSON.Literal` representation.
    /// - Returns: The `JSON.Literal` value that represents the current instance.
    func encodeToJSONLiteral() -> JSON.Literal

}

/// A type that can decode itself from an external `JSON.Literal` representation.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public protocol JSONLiteralDecodable {

    /// Create an instance of the type from an externaled `JSON.Literal` representation.
    /// - Parameter jsonLiteral: The `JSON.Literal` value to decode from.
    init(jsonLiteral: JSON.Literal) throws

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension Bool: JSONLiteralCodable {

    public func encodeToJSONLiteral() -> JSON.Literal {
        self ? .true : .false
    }

    public init(jsonLiteral: JSON.Literal) throws {
        self = try jsonLiteral.boolValue
    }

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension JSON.Literal: JSONLiteralCodable {

    public func encodeToJSONLiteral() -> JSON.Literal {
        self
    }

    public init(jsonLiteral: JSON.Literal) throws {
        self = jsonLiteral
    }

}
