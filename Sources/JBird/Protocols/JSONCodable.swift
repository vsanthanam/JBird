// JBird
// JSONCodable.swift
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

/// A type that can convert itself into and out of an external `JSON` representation.
///
/// `JSONCodable` is a type alias for the `JSONEncodable` and `JSONDecodable` protocols.
/// When you use `JSONCodable` as a type or a generic constraint, it matches any type that conforms to both protocols.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public typealias JSONCodable = JSONDecodable & JSONEncodable

/// A type that can encode itself to an external  `JSON` representation.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONEncodable {

    /// Encode this value to a typed `JSON` representation.
    /// - Returns: The `JSON` value that represents the current instance.
    func encodeToJSON() -> JSON

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Data {

    /// Create a byte buffer from an instance of a ``JSONEncodable`` type.
    /// - Parameter encodable: The type to encode.
    public init(
        encoding encodable: some JSONEncodable
    ) throws {
        self = try JSON(encodable).serialize()
    }

}

/// A type that can decode itself from an external `JSON` representation.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONDecodable {

    /// Create an instance of the type from an externaled `JSON` representation.
    /// - Parameter json: The `JSON` value to decode from.
    init(json: JSON) throws

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONDecodable {

    /// Create an instance of the type from a byte buffer by deserializing it into a ``JSON`` representation, then decoding it.
    /// - Parameter data: The byte buffer to decode from.
    public init(
        decoding data: Data
    ) throws {
        self = try JSON(data).decode()
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON: JSONCodable {

    public func encodeToJSON() -> JSON {
        self
    }

    public init(json: JSON) throws {
        self = json
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Bool: JSONCodable {

    public func encodeToJSON() -> JSON {
        self ? .literal(.true) : .literal(.false)
    }

    public init(json: JSON) throws {
        self = try json.boolValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Literal: JSONCodable {

    public func encodeToJSON() -> JSON {
        .literal(self)
    }

    public init(json: JSON) throws {
        self = try json.literalValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int: JSONCodable {

    public func encodeToJSON() -> JSON {
        .numeric(.int(self))
    }

    public init(json: JSON) throws {
        self = try json.intValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Double: JSONCodable {

    public func encodeToJSON() -> JSON {
        .numeric(.double(self))
    }

    public init(json: JSON) throws {
        self = try json.doubleValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Numeric: JSONCodable {

    public func encodeToJSON() -> JSON {
        .numeric(self)
    }

    public init(json: JSON) throws {
        self = try json.numericValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension String: JSONCodable {

    public func encodeToJSON() -> JSON {
        .string(self)
    }

    public init(json: JSON) throws {
        self = try json.stringValue
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Array: JSONEncodable where Element: JSONEncodable {

    public func encodeToJSON() -> JSON {
        .array(map(JSON.init))
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Array: JSONDecodable where Element: JSONDecodable {

    public init(json: JSON) throws {
        self = try json.arrayValue.map(Element.init)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Dictionary: JSONEncodable where Key == String, Value: JSONEncodable {

    public func encodeToJSON() -> JSON {
        .object(mapValues(JSON.init))
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Dictionary: JSONDecodable where Key == String, Value: JSONDecodable {

    public init(json: JSON) throws {
        self = try json.objectValue.mapValues(Value.init)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONEncodable where Self: RawRepresentable, RawValue: JSONEncodable {

    public func encodeToJSON() -> JSON {
        JSON(rawValue)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONDecodable where Self: RawRepresentable, RawValue: JSONDecodable {

    public init(json: JSON) throws {
        let rawValue = try RawValue(json: json)
        guard let value = Self(rawValue: rawValue) else {
            throw JSONError.invalidRawRepresentable
        }
        self = value
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Optional: JSONEncodable where Wrapped: JSONEncodable {

    public func encodeToJSON() -> JSON {
        switch self {
        case .none:
            nil
        case let .some(wrapped):
            JSON(wrapped)
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Optional: JSONDecodable where Wrapped: JSONDecodable {

    public init(json: JSON) throws {
        if json == nil {
            self = .none
        } else {
            self = try .some(Wrapped(json: json))
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Set: JSONEncodable where Element: JSONEncodable {

    public func encodeToJSON() -> JSON {
        .array(map(JSON.init))
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Set: JSONDecodable where Element: JSONDecodable {

    public init(json: JSON) throws {
        try self.init(json.arrayValue.map(Element.init))
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension URL: JSONCodable {

    public func encodeToJSON() -> JSON {
        JSON(absoluteString)
    }

    public init(json: JSON) throws {
        let str = try json.stringValue
        guard let url = URL(string: str) else {
            throw JSONError.urlDecodingFailure(str)
        }
        self = url
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UUID: JSONCodable {

    public func encodeToJSON() -> JSON {
        JSON(uuidString)
    }

    public init(json: JSON) throws {
        let str = try json.stringValue
        guard let uuid = UUID(uuidString: str) else {
            throw JSONError.uuidDecodingFailure(str)
        }
        self = uuid
    }

}
