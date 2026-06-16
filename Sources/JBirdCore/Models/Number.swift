// JBird
// Number.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// A JSON number
    public struct Number: Equatable, Hashable, Sendable, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, CustomStringConvertible {

        // MARK: - Initializers

        /// Create a JSON number from a ``JSONNumberConvertible`` type
        /// - Parameter convertible: An instance of the type to convert to a JSON number
        public init(_ convertible: some JSONNumberConvertible) {
            self = convertible.jsonNumber
        }

        // MARK: - API

        /// Whether or not the number value is an integer
        public var isInteger: Bool {
            switch storage {
            case .int:
                true
            case .double:
                false
            }
        }

        /// Whether or not the number value is a double
        public var isFloatingPoint: Bool {
            switch storage {
            case .int:
                false
            case .double:
                true
            }
        }

        /// Whether or not the number represents a finite value
        public var isFinite: Bool {
            switch storage {
            case let .double(value):
                value.isFinite
            case .int:
                true
            }
        }

        /// Whether or not the number represents an infinite value
        public var isInfinite: Bool {
            switch storage {
            case let .double(value):
                value.isInfinite
            case .int:
                false
            }
        }

        /// Whether or not the number is NaN (not a number)
        public var isNaN: Bool {
            switch storage {
            case let .double(value):
                value.isNaN
            case .int:
                false
            }
        }

        /// A number representing zero (`0`)
        public static let zero: Number = 0

        /// A NaN ("not a number") floating point value
        public static let nan: Number = .init(Double.nan)

        /// An infinite floating point value
        public static let infinity: Number = .init(Double.infinity)

        /// Whether or not the number is a non-conforming floating point values, such as `NaN`
        ///
        /// JSON numbers cannot legally be non-conforming floating point values.
        /// When serialized these values need to be removed or altered.
        ///
        /// For more information, see ``JSON/SerializationOptions/allowNonConformingFloatingPointValues``.
        public var isNonConformingFloatingPointValue: Bool {
            isInfinite || isNaN
        }

        /// The untyped representation of the JSON literal
        /// - Returns: An `AnyHashable` containing an `Int` or a `Double` representing the JSON number.
        public func unboxed() -> AnyHashable {
            switch storage {
            case let .int(int):
                int
            case let .double(double):
                double
            }
        }

        /// Convert the JSON number into a ``JSONNumberInitializable`` type
        /// - Parameter type: The type to convert into
        /// - Returns: The converted value
        /// - Throws: An error, if the JSON number cannot be converted into the provided type
        public func convert<T>(
            into type: T.Type = T.self
        ) throws -> T where T: JSONNumberInitializable {
            try T(jsonNumber: self)
        }

        // MARK: - ExpressibleByIntegerLiteral

        public typealias IntegerLiteralType = Int

        public init(
            integerLiteral value: IntegerLiteralType
        ) {
            self.init(.int(value))
        }

        // MARK: - ExpressibleByFloatLiteral

        public typealias FloatLiteralType = Double

        public init(
            floatLiteral value: FloatLiteralType
        ) {
            self.init(.double(value))
        }

        // MARK: - Equatable

        public static func == (lhs: Number, rhs: Number) -> Bool {
            switch (lhs.storage, rhs.storage) {
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
            switch storage {
            case let .int(int):
                int.description
            case let .double(double):
                double.description
            }
        }

        // MARK: - Private

        init(_ storage: Storage) {
            self.storage = storage
        }

        enum Storage: Hashable {
            case int(Int)
            case double(Double)
        }

        let storage: Storage

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public prefix func - (_ number: JSON.Number) -> JSON.Number {
    switch number.storage {
    case let .double(double):
        JSON.Number(-double)
    case let .int(integer):
        JSON.Number(-integer)
    }
}
