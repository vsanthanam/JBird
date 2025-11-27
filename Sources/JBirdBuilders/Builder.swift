// JBird
// Builder.swift
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

    @resultBuilder
    public enum Builder {

        public static func buildExpression(
            _ expression: Never
        ) -> Never {}

        public static func buildExpression(
            _ expression: Array
        ) -> Array {
            expression
        }

        public static func buildExpression(
            _ expression: JSON
        ) -> Array {
            [expression]
        }

        @_disfavoredOverload
        public static func buildExpression(
            _ expression: some JSONConvertible
        ) -> Array {
            [JSON(expression)]
        }

        public static func buildExpression(
            @Builder _ expression: () -> JSON
        ) -> Array {
            [expression()]
        }

        public static func buildBlock(
            _ components: Array...
        ) -> Array {
            components.flatMap(\.self)
        }

        public static func buildArray(
            _ components: [Array]
        ) -> Array {
            components.flatMap(\.self)
        }

        public static func buildEither(
            first component: Array
        ) -> Array {
            component
        }

        public static func buildEither(
            second component: Array
        ) -> Array {
            component
        }

        public static func buildOptional(
            _ component: Array?
        ) -> Array {
            component ?? []
        }

        public static func buildFinalResult(
            _ component: Array
        ) -> JSON {
            .array(component)
        }

        public static func buildExpression(
            _ expression: Object
        ) -> [(Key, Value)] {
            expression.map(\.self)
        }

        public static func buildExpression(
            _ expression: (Key, Value)
        ) -> [(Key, Value)] {
            [expression]
        }

        @_disfavoredOverload
        public static func buildExpression(
            _ expression: (some JSONKeyConvertible, some JSONConvertible)
        ) -> [(Key, Value)] {
            let (key, value) = expression
            return [(Key(key), Value(value))]
        }

        public static func buildBlock() -> [(Key, Value)] {
            []
        }

        public static func buildBlock(
            _ components: [(Key, Value)]...
        ) -> [(Key, Value)] {
            components.flatMap(\.self)
        }

        public static func buildArray(
            _ components: [[(Key, Value)]]
        ) -> [(Key, Value)] {
            components.flatMap(\.self)
        }

        public static func buildEither(
            first component: [(Key, Value)]
        ) -> [(Key, Value)] {
            component
        }

        public static func buildEither(
            second component: [(Key, Value)]
        ) -> [(Key, Value)] {
            component
        }

        public static func buildOptional(
            _ component: [(Key, Value)]?
        ) -> [(Key, Value)] {
            component ?? []
        }

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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@_disfavoredOverload
public func => <Key>(
    lhs: Key,
    @JSON.Builder rhs: () -> JSON
) -> (Key, JSON.Value) where Key: JSONKeyConvertible {
    (lhs, rhs())
}
