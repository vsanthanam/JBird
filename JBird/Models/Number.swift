// JBird
// Number.swift
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

    /// A JSON number
    public enum Number: Equatable, Hashable, Sendable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, CustomStringConvertible {

        // MARK: - Initializers

        public init(
            _ convertible: some JSONNumberConvertible
        ) {
            self = convertible.jsonNumber
        }

        // MARK: - Cases

        case int(Int)

        case double(Double)

        // MARK: - API

        /// The number value as a Swift integer
        public var intValue: Int {
            get throws {
                switch self {
                case let .int(int):
                    int
                case .double:
                    throw JSONError.illegalIntConversion
                }
            }
        }

        /// The number value as a Swift double
        public var doubleValue: Double {
            get throws {
                switch self {
                case let .double(double):
                    double
                case .int:
                    throw JSONError.illegalDoubleConversion
                }
            }
        }

        /// Whether or not the number value is an integer
        public var isInt: Bool {
            switch self {
            case .int:
                true
            case .double:
                false
            }
        }

        /// Whether or not the number value is a double
        public var isDouble: Bool {
            switch self {
            case .int:
                false
            case .double:
                true
            }
        }

        /// The untyped representation of the JSON number value
        ///
        /// This property returns the JSON number value as a native Swift type:
        /// - Strings are represented as `String`
        /// - Integers are represented as `Int`
        /// - Floating point numbers are represented as `Double`
        public var untyped: Any? {
            switch self {
            case let .int(int):
                int
            case let .double(double):
                double
            }
        }

        // MARK: - ExpressibleByIntegerLiteral

        public typealias IntegerLiteralType = Int

        public init(
            integerLiteral value: IntegerLiteralType
        ) {
            self = .int(value)
        }

        // MARK: - ExpressibleByFloatLiteral

        public typealias FloatLiteralType = Double

        public init(
            floatLiteral value: FloatLiteralType
        ) {
            self = .double(value)
        }

        // MARK: - Equatable

        public static func == (lhs: Number, rhs: Number) -> Bool {
            switch (lhs, rhs) {
            case let (.int(lhs), .int(rhs)):
                lhs == rhs
            case let (.double(lhs), .double(rhs)):
                lhs == rhs
            case let (.int(lhs), .double(rhs)):
                if rhs.truncatingRemainder(dividingBy: 1.0) == 0 {
                    lhs == (Int(rhs))
                } else {
                    false
                }
            case let (.double(lhs), .int(rhs)):
                if lhs.truncatingRemainder(dividingBy: 1.0) == 0 {
                    (Int(lhs)) == rhs
                } else {
                    false
                }
            }
        }

        // MARK: - CustomStringConvertible

        public var description: String {
            switch self {
            case let .int(int):
                int.description
            case let .double(double):
                double.description
            }
        }

    }

}

/// Add two JSON numbers together
/// - Parameters:
///   - lhs: A JSON number
///   - rhs: Another JSON number
/// - Returns: The combined JSON number
public func + (lhs: JSON.Number, rhs: JSON.Number) -> JSON.Number {
    switch (lhs, rhs) {
    case let (.int(lhs), .int(rhs)):
        .int(lhs + rhs)
    case let (.double(lhs), .double(rhs)):
        .double(lhs + rhs)
    case let (.int(lhs), .double(rhs)):
        .double(Double(lhs) + rhs)
    case let (.double(lhs), .int(rhs)):
        .double(lhs + Double(rhs))
    }
}

/// Add two JSON numbers togetherb
/// - Parameters:
///   - lhs: A JSON number
///   - rhs: Another JSON number
public func += (lhs: inout JSON.Number, rhs: JSON.Number) {
    lhs = lhs + rhs
}
