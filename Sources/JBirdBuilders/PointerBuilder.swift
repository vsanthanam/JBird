// JBird
// PointerBuilder.swift
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
extension JSON.Pointer {

    /// Declaratively create a JSON Pointer
    /// - Parameter builder: The builder closure
    public init(
        @Builder builder: () -> JSON.Pointer
    ) {
        self = builder()
    }

    /// A [result builder](https://docs.swift.org/swift-book/documentation/the-swift-programming-language/advancedoperators/#Result-Builders) for composing ``JBirdCore/JSON/Pointer`` values declaratively.
    ///
    /// You rarely reference `Builder` directly. Instead, apply it implicitly through ``JSON/Pointer/init(builder:)``,
    /// where each statement in the trailing closure contributes one or more reference tokens to the pointer.
    ///
    /// ```swift
    /// let pointer = JSON.Pointer {
    ///     "users"
    ///     0
    ///     "name"
    /// }
    /// // /users/0/name
    /// ```
    ///
    /// The builder accepts string tokens, unsigned-integer tokens, and existing ``JBirdCore/JSON/Pointer`` values
    /// (whose tokens are spliced in), along with `if`, `if`/`else`, optional, and `for` control flow.
    @resultBuilder
    public enum Builder {

        /// Converts an unsigned integer into a one-element array of reference tokens.
        public static func buildExpression(
            _ expression: UInt
        ) -> [Token] {
            [expression.description]
        }

        /// Converts any unsigned integer into a one-element array of reference tokens.
        @_disfavoredOverload
        public static func buildExpression(
            _ expression: some UnsignedInteger
        ) -> [Token] {
            [expression.description]
        }

        /// Converts a string into a one-element array of reference tokens.
        public static func buildExpression(
            _ expression: some StringProtocol
        ) -> [Token] {
            [Token(expression)]
        }

        /// Expands an existing ``JBirdCore/JSON/Pointer`` into its reference tokens.
        public static func buildExpression(
            _ expression: JSON.Pointer
        ) -> [Token] {
            expression.tokens
        }

        /// Concatenates the reference tokens produced by each statement in a block.
        public static func buildBlock(
            _ components: [Token]...
        ) -> [Token] {
            components
                .flatMap(\.self)
        }

        /// Selects the reference tokens from the first branch of an `if`/`else` statement.
        public static func buildEither(
            first component: [Token]
        ) -> [Token] {
            component
        }

        /// Selects the reference tokens from the second branch of an `if`/`else` statement.
        public static func buildEither(
            second component: [Token]
        ) -> [Token] {
            component
        }

        /// Supplies no reference tokens when an optional `if` statement has no value.
        public static func buildOptional(
            _ component: [Token]?
        ) -> [Token] {
            if let component {
                component
            } else {
                []
            }
        }

        /// Concatenates the reference tokens produced by each iteration of a `for` loop.
        public static func buildArray(
            _ components: [[Token]]
        ) -> [Token] {
            components
                .flatMap(\.self)
        }

        /// Produces a ``JBirdCore/JSON/Pointer`` from the accumulated reference tokens.
        public static func buildFinalResult(
            _ component: [Token]
        ) -> JSON.Pointer {
            .init(tokens: component)
        }
    }

}
