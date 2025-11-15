// JBird
// ObjectBuilder.swift
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

@available(macOS 12.0, macCatalyst 15.0, iOS 15.0, watchOS 8.0, tvOS 15.0, visionOS 1.0, *)
extension JSON {

    /// Create a JSON object declaratively
    /// - Parameter fields: The fields in the object
    @available(*, deprecated, renamed: "init(builder:)", message: "Use the univeral builder initializer intead. This initializer will be removed in a future release.")
    @_disfavoredOverload
    public init(
        @ObjectBuilder fields: () -> JSON
    ) {
        self = fields()
    }

    /// A result builder for JSON objects
    @available(*, deprecated, renamed: "Builder", message: "Use the universal builder instead. This builder will be removed in a future release.")
    @resultBuilder
    public enum ObjectBuilder {

        public static func buildExpression(
            _ expression: Void
        ) -> [(Key, Value)] {
            []
        }

        public static func buildExpression(
            _ expression: Never
        ) -> Never {}

        public static func buildExpression(
            _ expression: (Key, Value)
        ) -> [(Key, Value)] {
            [expression]
        }

        @_disfavoredOverload
        public static func buildExpression<Key, Value>(
            _ expression: (Key, Value)
        ) -> [(JSON.Key, JSON.Value)] where Key: JSONKeyCodable, Value: JSONEncodable {
            let (key, value) = expression
            return [(JSON.Key(key), JSON.Value(value))]
        }

        public static func buildBlock() -> [(Key, Value)] {
            []
        }

        public static func buildExpression(
            _ expression: Object
        ) -> [(Key, Value)] {
            expression.map(\.self)
        }

        public static func buildBlock(
            _ components: [(Key, Value)]
        ) -> [(Key, Value)] {
            components
        }

        public static func buildBlock(
            _ components: [(Key, Value)]...
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

        public static func buildArray(
            _ components: [[(Key, Value)]]
        ) -> [(Key, Value)] {
            components.flatMap(\.self)
        }

        public static func buildFinalResult(
            _ component: [(Key, Value)]
        ) -> JSON {
            let dict = component.reduce(into: Object()) { prev, pair in
                let (key, value) = pair
                prev[key] = value
            }
            return JSON(dict)
        }

    }

}
