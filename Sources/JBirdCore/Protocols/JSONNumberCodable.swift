// JBird
// JSONNumberCodable.swift
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

/// A type that can convert itself into and out of an external `JSON.Number` representation.
///
/// `JSONNumberCodable` is a type alias for the ``JSONNumberEncodable`` and ``JSONNumberDecodable`` protocols.
/// When you use `JSONNumberCodable` as a type or a generic constraint, it matches any type that conforms to both protocols.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public typealias JSONNumberCodable = JSONNumberDecodable & JSONNumberEncodable

/// A type that can encode itself to an external  `JSON.Number` representation.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONNumberEncodable {

    /// Encode this value to a typed `JSON.Number` representation.
    /// - Returns: The `JSON.Number` value that represents the current instance.
    func encodeToJSONNumber() -> JSON.Number

}

/// A type that can decode itself from an external `JSON.Number` representation.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONNumberDecodable {

    /// Create an instance of the type from an externaled `JSON.Number` representation.
    /// - Parameter jsonNumber: The `JSON.Number` value to decode from.
    init(jsonNumber: JSON.Number) throws

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Number: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        self
    }

    public init(jsonNumber: JSON.Number) throws {
        self = jsonNumber
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(self)
    }

    public init(jsonNumber: JSON.Number) throws {
        switch jsonNumber {
        case let .int(value):
            self = value
        case let .double(value):
            if value.truncatingRemainder(dividingBy: 1.0) == 0,
               let int = Int(exactly: value) {
                self = int
            } else {
                throw JSONError.illegalNumberConversion
            }
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Double: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .double(self)
    }

    public init(jsonNumber: JSON.Number) throws {
        switch jsonNumber {
        case let .int(value):
            self = Double(value)
        case let .double(value):
            self = value
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UInt: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = UInt(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UInt8: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = UInt8(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UInt16: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = UInt16(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UInt32: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = UInt32(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension UInt64: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = UInt64(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int8: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = Int8(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int16: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = Int16(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int32: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = Int32(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Int64: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .int(Int(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let int = try Int(jsonNumber: jsonNumber)
        self = Int64(int)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Float: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        .double(Double(self))
    }

    public init(jsonNumber: JSON.Number) throws {
        let double = try Double(jsonNumber: jsonNumber)
        self = Float(double)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Decimal: JSONNumberCodable {

    public func encodeToJSONNumber() -> JSON.Number {
        var original = self
        var floored = Decimal()
        NSDecimalRound(&floored, &original, 0, .down)
        let isWhole = (floored == self)

        if isWhole {
            let ns = NSDecimalNumber(decimal: self)
            let i64 = ns.int64Value
            if Decimal(i64) == self,
               i64 >= Int64(Int.min), i64 <= Int64(Int.max) {
                return .int(Int(i64))
            }
        }
        return .double(NSDecimalNumber(decimal: self).doubleValue)
    }

    public init(jsonNumber: JSON.Number) throws {
        switch jsonNumber {
        case let .int(number):
            self = Decimal(number)
        case let .double(number):
            self = Decimal(number)
        }
    }

}
