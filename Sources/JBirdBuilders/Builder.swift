// JBird
// Builder.swift
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

import JBirdCore

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// Declaratively create a JSON value
    /// - Parameter builder: The builder closure
    public init(
        @Builder builder: () -> JSON
    ) {
        self = builder()
    }

    /// A [result builder](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Result-Builders) for composing ``JBirdCore/JSON`` values declaratively.
    ///
    /// You rarely reference `Builder` directly. Instead, apply it implicitly through ``JSON/init(builder:)``,
    /// where each statement in the trailing closure becomes an element of an array or a key-value pair of an object.
    ///
    /// ```swift
    /// let json = JSON {
    ///     "name" => "Alice"
    ///     "roles" => ["admin", "editor"]
    /// }
    /// ```
    ///
    /// The builder accepts both `JSON` array elements and `key => value` object entries, along with
    /// `if`, `if`/`else`, `switch`, optional, and `for` control flow.
    @resultBuilder
    public enum Builder {

        /// Builds an empty array branch from an uninhabited expression, allowing `Never`-typed statements to participate in a build.
        public static func buildExpression(
            _ expression: Never
        ) -> Never {}

        /// Passes an already-built array of elements through unchanged.
        public static func buildExpression(
            _ expression: Array
        ) -> Array {
            expression
        }

        /// Wraps a single ``JBirdCore/JSON`` value as a one-element array of array elements.
        public static func buildExpression(
            _ expression: JSON
        ) -> Array {
            [expression]
        }

        /// Converts a `JSONConvertible` value into a one-element array of array elements.
        @_disfavoredOverload
        public static func buildExpression(
            _ expression: some JSONConvertible
        ) -> Array {
            [JSON(expression)]
        }

        /// Evaluates a nested builder closure and wraps its result as a one-element array of array elements.
        public static func buildExpression(
            @Builder _ expression: () -> JSON
        ) -> Array {
            [expression()]
        }

        /// Concatenates the array elements produced by each statement in a block.
        public static func buildBlock(
            _ components: Array...
        ) -> Array {
            components.flatMap(\.self)
        }

        /// Concatenates the array elements produced by each iteration of a `for` loop.
        public static func buildArray(
            _ components: [Array]
        ) -> Array {
            components.flatMap(\.self)
        }

        /// Selects the array elements from the first branch of an `if`/`else` statement.
        public static func buildEither(
            first component: Array
        ) -> Array {
            component
        }

        /// Selects the array elements from the second branch of an `if`/`else` statement.
        public static func buildEither(
            second component: Array
        ) -> Array {
            component
        }

        /// Supplies an empty array of elements when an optional `if` statement has no value.
        public static func buildOptional(
            _ component: Array?
        ) -> Array {
            component ?? []
        }

        /// Produces a ``JBirdCore/JSON`` array from the accumulated array elements.
        public static func buildFinalResult(
            _ component: Array
        ) -> JSON {
            .array(component)
        }

        /// Expands an existing ``JBirdCore/JSON`` object into its constituent key-value pairs.
        public static func buildExpression(
            _ expression: Object
        ) -> [(Key, Value)] {
            expression.map(\.self)
        }

        /// Wraps a single key-value pair as a one-element array of object entries.
        public static func buildExpression(
            _ expression: (Key, Value)
        ) -> [(Key, Value)] {
            [expression]
        }

        /// Converts a convertible key and value into a one-element array of object entries.
        @_disfavoredOverload
        public static func buildExpression(
            _ expression: (some JSONKeyConvertible, some JSONConvertible)
        ) -> [(Key, Value)] {
            let (key, value) = expression
            return [(Key(key), Value(value))]
        }

        /// Supplies no object entries for an empty block.
        public static func buildBlock() -> [(Key, Value)] {
            []
        }

        /// Concatenates the object entries produced by each statement in a block.
        public static func buildBlock(
            _ components: [(Key, Value)]...
        ) -> [(Key, Value)] {
            components.flatMap(\.self)
        }

        /// Concatenates the object entries produced by each iteration of a `for` loop.
        public static func buildArray(
            _ components: [[(Key, Value)]]
        ) -> [(Key, Value)] {
            components.flatMap(\.self)
        }

        /// Selects the object entries from the first branch of an `if`/`else` statement.
        public static func buildEither(
            first component: [(Key, Value)]
        ) -> [(Key, Value)] {
            component
        }

        /// Selects the object entries from the second branch of an `if`/`else` statement.
        public static func buildEither(
            second component: [(Key, Value)]
        ) -> [(Key, Value)] {
            component
        }

        /// Supplies no object entries when an optional `if` statement has no value.
        public static func buildOptional(
            _ component: [(Key, Value)]?
        ) -> [(Key, Value)] {
            component ?? []
        }

        /// Produces a ``JBirdCore/JSON`` object from the accumulated key-value pairs.
        public static func buildFinalResult(
            _ component: [(Key, Value)]
        ) -> JSON {
            let dict = component.reduce(into: Object()) { prev, pair in
                let (key, value) = pair
                prev[key] = value
            }
            return .object(dict)
        }

    }

}

/// An infix operator allowing key value assignment, for use with a ``JBirdCore/JSON/Builder``
infix operator => : AdditionPrecedence

/// An infix operator allowing key value assignment, for use with a ``JBirdCore/JSON/Builder``
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public func => (
    lhs: JSON.Key,
    rhs: JSON.Value
) -> (JSON.Key, JSON.Value) {
    (lhs, rhs)
}

/// An infix operator allowing key value assignment, for use with a ``JBirdCore/JSON/Builder``
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@_disfavoredOverload
public func => <Key, Value>(
    lhs: Key,
    rhs: Value
) -> (Key, Value) where Key: JSONKeyConvertible, Value: JSONConvertible {
    (lhs, rhs)
}

/// An infix operator allowing key value assignment, for use with a ``JBirdCore/JSON/Builder``
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public func => (
    lhs: JSON.Key,
    @JSON.Builder rhs: () -> JSON
) -> (JSON.Key, JSON.Value) {
    (lhs, rhs())
}

/// An infix operator allowing key value assignment, for use with a ``JBirdCore/JSON/Builder``
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@_disfavoredOverload
public func => <Key>(
    lhs: Key,
    @JSON.Builder rhs: () -> JSON
) -> (Key, JSON.Value) where Key: JSONKeyConvertible {
    (lhs, rhs())
}
