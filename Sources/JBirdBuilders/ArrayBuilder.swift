// JBird
// ArrayBuilder.swift
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

    /// Create a JSON array declaratively
    /// - Parameter elements: The elements in the array
    public init(
        @ArrayBuilder elements: () -> JSON
    ) {
        self = elements()
    }

    /// A result builder for JSON arrays
    @resultBuilder
    public enum ArrayBuilder {

        public static func buildExpression(
            _ expression: Void
        ) -> Array {
            []
        }

        public static func buildExpression(
            _ expression: Never
        ) -> Never {}

        public static func buildExpression(
            _ expression: JSON
        ) -> Array {
            [expression]
        }

        @_disfavoredOverload
        public static func buildExpression(
            _ expression: some JSONEncodable
        ) -> Array {
            [JSON(expression)]
        }

        public static func buildBlock() -> Array {
            []
        }

        public static func buildBlock(
            _ components: Array...
        ) -> Array {
            components
                .flatMap(\.self)
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

        public static func buildArray(
            _ components: [Array]
        ) -> Array {
            components
                .flatMap(\.self)
        }

        public static func buildFinalResult(
            _ component: Array
        ) -> JSON {
            .array(component)
        }

    }

}
