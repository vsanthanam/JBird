// JBird
// JSONKeyCodable.swift
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

/// A type that can convert itself into and out of an external `JSON.Key` representation.
///
/// `JSONKeyCodable` is a type alias for the `JSONKeyEncodable` and `JSONKeyDecodable` protocols.
/// When you use `JSONKeyCodable` as a type or a generic constraint, it matches any type that conforms to both protocols.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public typealias JSONKeyCodable = JSONKeyDecodable & JSONKeyEncodable

/// A type that can encode itself to an external  `JSON.Key` representation.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public protocol JSONKeyEncodable {

    /// Encode this value to a typed `JSON.Key` representation.
    /// - Returns: The `JSON.Key` value that represents the current instance.
    func encodeToJSONKey() -> JSON.Key

}

/// A type that can decode itself from an external `JSON` representation.
@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
public protocol JSONKeyDecodable {

    /// Create an instance of the type from an externaled `JSON.Key` representation.
    /// - Parameter jsonKey: The `JSON.Key` value to decode from.
    init(jsonKey: JSON.Key) throws

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension String: JSONKeyCodable {

    public func encodeToJSONKey() -> JSON.Key {
        self
    }

    public init(jsonKey: JSON.Key) throws {
        self = jsonKey
    }

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension JSONKeyEncodable where Self: RawRepresentable, RawValue: JSONKeyEncodable {

    public func encodeToJSONKey() -> JSON.Key {
        JSON.Key(rawValue)
    }

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension JSONKeyDecodable where Self: RawRepresentable, RawValue: JSONKeyDecodable {

    public init(jsonKey: JSON.Key) throws {
        let rawValue = try RawValue(jsonKey: jsonKey)
        guard let val = Self(rawValue: rawValue) else {
            throw JSONError.invalidRawRepresentable
        }
        self = val
    }

}

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension JSON.Key {

    public init(
        _ encodable: some JSONKeyEncodable
    ) {
        self = encodable.encodeToJSONKey()
    }

}
