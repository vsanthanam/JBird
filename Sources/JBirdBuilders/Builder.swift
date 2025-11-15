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

extension JSON {

    @resultBuilder
    public enum Builder {

        public static func buildExpression(
            _ expression: [JSON]
        ) -> [JSON] {
            expression
        }

        public static func buildExpression(
            _ expression: JSON
        ) -> [JSON] {
            [expression]
        }

        @_disfavoredOverload
        public static func buildExpression(
            _ expression: some JSONEncodable
        ) -> [JSON] {
            [JSON(expression)]
        }

        public static func buildExpression(
            @Builder _ expression: () -> JSON
        ) -> [JSON] {
            [expression()]
        }

        public static func buildBlock(
            _ components: [JSON]...
        ) -> [JSON] {
            components.flatMap(\.self)
        }

        public static func buildArray(
            _ components: [[JSON]]
        ) -> [JSON] {
            components.flatMap(\.self)
        }

        public static func buildEither(
            first component: [JSON]
        ) -> [JSON] {
            component
        }

        public static func buildEither(
            second component: [JSON]
        ) -> [JSON] {
            component
        }

        public static func buildOptional(
            _ component: [JSON]?
        ) -> [JSON] {
            component ?? []
        }

        public static func buildFinalResult(
            _ component: [JSON]
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
            _ expression: (some JSONKeyEncodable, some JSONEncodable)
        ) -> [(Key, Value)] {
            let (key, value) = expression
            return [(Key(key), Value(value))]
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

infix operator => : AdditionPrecedence

public func => (
    lhs: JSON.Key,
    rhs: JSON.Value
) -> (JSON.Key, JSON.Value) {
    (lhs, rhs)
}

@_disfavoredOverload
public func => <Key, Value>(
    lhs: Key,
    rhs: Value
) -> (Key, Value) where Key: JSONKeyEncodable, Value: JSONEncodable {
    (lhs, rhs)
}

public func => (
    lhs: JSON.Key,
    @JSON.Builder rhs: () -> JSON
) -> (JSON.Key, JSON.Value) {
    (lhs, rhs())
}

@_disfavoredOverload
public func => <Key>(
    lhs: Key,
    @JSON.Builder rhs: () -> JSON
) -> (Key, JSON.Value) where Key: JSONKeyEncodable {
    (lhs, rhs())
}
