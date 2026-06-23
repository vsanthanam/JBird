// JBird
// Path.swift
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

    /// A parsed RFC 9535 JSONPath query.
    public struct Path: Equatable, Hashable, Sendable, ExpressibleByArrayLiteral {

        // MARK: - Initializers

        /// Create a path from a list of segments.
        /// - Parameter segments: The segments of the path, in order from the root of the document. An empty
        ///   array represents the root document itself.
        public init(
            segments: [Segment] = []
        ) {
            self.segments = segments
        }

        /// Parse a JSONPath query from its string representation.
        ///
        /// ```swift
        /// let path = try JSON.Path("$.store.book[0].title")
        /// ```
        ///
        /// - Parameter string: An [RFC 9535](https://www.rfc-editor.org/rfc/rfc9535) JSONPath query string.
        /// - Throws: ``PathError`` if the string is not a valid JSONPath query.
        public init(
            _ string: String
        ) throws {
            try self.init(Data(string.utf8))
        }

        /// Parse a JSONPath query from a buffer of UTF-8 bytes.
        ///
        /// - Parameter bytes: The UTF-8 encoded JSONPath query.
        /// - Throws: ``PathError`` if the bytes do not form a valid JSONPath query.
        public init(
            _ bytes: Data
        ) throws {
            var parser = try Parser([UInt8](bytes))
            self = try parser.parse()
        }

        // MARK: - API

        /// The segments of the path, applied in order from the root.
        public let segments: [Segment]

        /// The element type for array literal initialization.
        public typealias ArrayLiteralElement = Segment

        /// Create a path from a list of segment literals.
        public init(
            arrayLiteral elements: ArrayLiteralElement...
        ) {
            self.init(segments: elements)
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Path {

    /// A segment of a JSONPath query.
    public enum Segment: Equatable, Hashable, Sendable {

        /// A child segment that selects immediate children.
        case child([Selector])

        /// A descendant segment that selects nodes at any depth.
        case descendant([Selector])

    }

    /// A selector within a JSONPath segment.
    public enum Selector: Equatable, Hashable, Sendable {

        /// Select an object member by name.
        case name(String)

        /// Select all children.
        case wildcard

        /// Select an array element by index. Negative indices count from the end.
        case index(Int)

        /// Select a range of array elements.
        case slice(start: Int?, end: Int?, step: Int?)

        /// Select children that satisfy a logical expression.
        case filter(Expression)

    }

    /// A logical expression used in a filter selector.
    public indirect enum Expression: Equatable, Hashable, Sendable {

        /// Logical disjunction of two or more expressions.
        case or([Expression])

        /// Logical conjunction of two or more expressions.
        case and([Expression])

        /// Logical negation of an expression.
        case not(Expression)

        /// A comparison between two operands.
        case comparison(ComparisonOperand, ComparisonOperator, ComparisonOperand)

        /// An existence test — true when the query produces at least one node.
        case query(FilterQuery)

        /// A function call used as a test expression.
        case function(FunctionCall)

    }

    /// A comparison operator in a filter expression.
    public enum ComparisonOperator: Equatable, Hashable, Sendable {

        /// Equal (`==`).
        case equal
        /// Not equal (`!=`).
        case notEqual
        /// Less than (`<`).
        case lessThan
        /// Less than or equal (`<=`).
        case lessEqual
        /// Greater than (`>`).
        case greaterThan
        /// Greater than or equal (`>=`).
        case greaterEqual

    }

    /// A value on either side of a comparison.
    public enum ComparisonOperand: Equatable, Hashable, Sendable {

        /// A literal value.
        case literal(Literal)

        /// A singular query that resolves to at most one node.
        case singularQuery(SingularQuery)

        /// A function call that produces a value.
        case function(FunctionCall)

    }

    /// A literal value in a filter expression.
    public enum Literal: Equatable, Hashable, Sendable {

        // MARK: - API

        /// A number literal.
        case number(JSON.Number)

        /// A string literal.
        case string(String)

        /// A boolean literal.
        case bool(Bool)

        /// A null literal.
        case null

    }

    /// A query used inside a filter expression for existence tests.
    public enum FilterQuery: Equatable, Hashable, Sendable {

        // MARK: - API

        /// A relative query rooted at the current node (`@`).
        case relative([Segment])

        /// An absolute query rooted at the document root (`$`).
        case absolute([Segment])

    }

    /// A deterministic query that resolves to at most one node, used in comparisons.
    public enum SingularQuery: Equatable, Hashable, Sendable {

        // MARK: - API

        /// A relative singular query rooted at the current node (`@`).
        case relative([SingularSegment])

        /// An absolute singular query rooted at the document root (`$`).
        case absolute([SingularSegment])

    }

    /// A segment in a singular query — either a name or an index.
    public enum SingularSegment: Equatable, Hashable, Sendable {

        // MARK: - API

        /// Access an object member by name.
        case name(String)

        /// Access an array element by index.
        case index(Int)

    }

    /// A function call in a filter expression.
    public struct FunctionCall: Equatable, Hashable, Sendable {

        // MARK: - Initializers

        /// Create a function call.
        /// - Parameters:
        ///   - name: The function name.
        ///   - arguments: The function arguments.
        public init(
            name: String,
            arguments: [FunctionArgument] = []
        ) {
            self.name = name
            self.arguments = arguments
        }

        // MARK: - API

        /// The function name.
        public var name: String

        /// The function arguments.
        public var arguments: [FunctionArgument]

    }

    /// An argument to a function call in a filter expression.
    public enum FunctionArgument: Equatable, Hashable, Sendable {

        // MARK: - API

        /// A literal value argument.
        case literal(Literal)

        /// A filter query argument.
        case filterQuery(FilterQuery)

        /// A logical expression argument.
        case logicalExpression(Expression)

        /// A nested function call argument.
        case functionExpression(FunctionCall)

    }

}
