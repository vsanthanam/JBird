// JBird
// PathParser.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Path {

    struct Parser {

        // MARK: - Initializers

        init(
            _ bytes: [UInt8]
        ) throws {
            var lexer = Lexer(bytes)
            self.current = try lexer.nextToken()
            self.lexer = lexer
        }

        // MARK: - API

        mutating func parse() throws -> JSON.Path {
            try expect(.root)
            let segments = try parseSegments()
            guard current == .eof else {
                throw JSON.PathError.unexpectedToken("Expected end of input, got '\(current)'")
            }
            return JSON.Path(segments: segments)
        }

        // MARK: - Private

        private var lexer: Lexer
        private var current: Token

        // MARK: - Token Handling

        private mutating func advance() throws {
            current = try lexer.nextToken()
        }

        private mutating func expect(
            _ expected: Token
        ) throws {
            guard current == expected else {
                throw JSON.PathError.unexpectedToken("Expected '\(expected)', got '\(current)'")
            }
            try advance()
        }

        // MARK: - Segments

        private mutating func parseSegments() throws -> [Segment] {
            var segments: [Segment] = []
            while current == .dot || current == .descendant || current == .leftBracket {
                if current == .descendant {
                    try segments.append(parseDescendantSegment())
                } else {
                    try segments.append(parseChildSegment())
                }
            }
            return segments
        }

        private mutating func parseChildSegment() throws -> Segment {
            if current == .leftBracket {
                return try .child(parseBracketedSelection())
            }
            try expect(.dot)
            if current == .wildcard {
                try advance()
                return .child([.wildcard])
            }
            return try .child([.name(parseMemberNameShorthand())])
        }

        private mutating func parseDescendantSegment() throws -> Segment {
            try expect(.descendant)
            if current == .leftBracket {
                return try .descendant(parseBracketedSelection())
            }
            if current == .wildcard {
                try advance()
                return .descendant([.wildcard])
            }
            return try .descendant([.name(parseMemberNameShorthand())])
        }

        private mutating func parseMemberNameShorthand() throws -> String {
            switch current {
            case let .name(n):
                try advance()
                return n
            case .true:
                try advance()
                return "true"
            case .false:
                try advance()
                return "false"
            case .null:
                try advance()
                return "null"
            default:
                throw JSON.PathError.unexpectedToken("Expected member name, got '\(current)'")
            }
        }

        // MARK: - Selectors

        private mutating func parseBracketedSelection() throws -> [Selector] {
            try expect(.leftBracket)
            var selectors: [Selector] = []
            try selectors.append(parseSelector())
            while current == .comma {
                try advance()
                try selectors.append(parseSelector())
            }
            try expect(.rightBracket)
            return selectors
        }

        private mutating func parseSelector() throws -> Selector {
            switch current {
            case let .string(s):
                try advance()
                return .name(s)
            case .wildcard:
                try advance()
                return .wildcard
            case .question:
                try advance()
                return try .filter(parseLogicalOrExpr())
            case let .number(n) where n.isInteger:
                let intVal = try n.convert(into: Int.self)
                try advance()
                if current == .colon {
                    return try parseSlice(start: intVal)
                }
                return .index(intVal)
            case .colon:
                return try parseSlice(start: nil)
            default:
                throw JSON.PathError.unexpectedToken("Expected selector, got '\(current)'")
            }
        }

        private mutating func parseSlice(
            start: Int?
        ) throws -> Selector {
            try expect(.colon)
            var end: Int?
            if case let .number(n) = current, n.isInteger {
                end = try n.convert(into: Int.self)
                try advance()
            }
            var step: Int?
            if current == .colon {
                try advance()
                if case let .number(n) = current, n.isInteger {
                    step = try n.convert(into: Int.self)
                    try advance()
                }
            }
            return .slice(start: start, end: end, step: step)
        }

        // MARK: - Expressions

        private mutating func parseLogicalOrExpr() throws -> Expression {
            var operands = try [parseLogicalAndExpr()]
            while current == .or {
                try advance()
                try operands.append(parseLogicalAndExpr())
            }
            return operands.count == 1 ? operands[0] : .or(operands)
        }

        private mutating func parseLogicalAndExpr() throws -> Expression {
            var operands = try [parseBasicExpr()]
            while current == .and {
                try advance()
                try operands.append(parseBasicExpr())
            }
            return operands.count == 1 ? operands[0] : .and(operands)
        }

        private mutating func parseBasicExpr() throws -> Expression {
            if current == .not {
                try advance()
                if current == .leftParen {
                    try advance()
                    let inner = try parseLogicalOrExpr()
                    try expect(.rightParen)
                    return .not(inner)
                }
                let inner = try parseTestExpr()
                return .not(inner)
            }
            if current == .leftParen {
                try advance()
                let inner = try parseLogicalOrExpr()
                try expect(.rightParen)
                return inner
            }
            if current == .root || current == Token.current {
                return try parseQueryOrComparison()
            }
            if case .name = current {
                return try parseFunctionOrComparison()
            }
            let lhs = try ComparisonOperand.literal(parseLiteral())
            let op = try parseComparisonOp()
            let rhs = try parseComparable()
            return .comparison(lhs, op, rhs)
        }

        private mutating func parseTestExpr() throws -> Expression {
            if current == .root || current == Token.current {
                let isRelative = current == Token.current
                try advance()
                let segments = try parseSegments()
                let fq: FilterQuery = isRelative ? .relative(segments) : .absolute(segments)
                return .query(fq)
            }
            if case let .name(name) = current {
                try advance()
                return try .function(parseFunctionCall(name: name))
            }
            throw JSON.PathError.unexpectedToken("Expected query or function, got '\(current)'")
        }

        private mutating func parseQueryOrComparison() throws -> Expression {
            let isRelative = current == Token.current
            try advance()
            let segments = try parseSegments()
            if isComparisonOp(current) {
                let singularSegments = try toSingularSegments(segments)
                let sq: SingularQuery = isRelative ? .relative(singularSegments) : .absolute(singularSegments)
                let lhs = ComparisonOperand.singularQuery(sq)
                let op = try parseComparisonOp()
                let rhs = try parseComparable()
                return .comparison(lhs, op, rhs)
            }
            let fq: FilterQuery = isRelative ? .relative(segments) : .absolute(segments)
            return .query(fq)
        }

        private mutating func parseFunctionOrComparison() throws -> Expression {
            guard case let .name(name) = current else {
                throw JSON.PathError.unexpectedToken("Expected function name, got '\(current)'")
            }
            try advance()
            let fc = try parseFunctionCall(name: name)
            if isComparisonOp(current) {
                let lhs = ComparisonOperand.function(fc)
                let op = try parseComparisonOp()
                let rhs = try parseComparable()
                return .comparison(lhs, op, rhs)
            }
            return .function(fc)
        }

        // MARK: - Comparisons

        private mutating func parseComparable() throws -> ComparisonOperand {
            if current == .root || current == Token.current {
                let isRelative = current == Token.current
                try advance()
                let segments = try parseSegments()
                let singularSegments = try toSingularSegments(segments)
                let sq: SingularQuery = isRelative ? .relative(singularSegments) : .absolute(singularSegments)
                return .singularQuery(sq)
            }
            if case let .name(name) = current {
                try advance()
                return try .function(parseFunctionCall(name: name))
            }
            return try .literal(parseLiteral())
        }

        private mutating func parseComparisonOp() throws -> ComparisonOperator {
            let op: ComparisonOperator
            switch current {
            case .equal:
                op = .equal
            case .notEqual:
                op = .notEqual
            case .lessThan:
                op = .lessThan
            case .lessEqual:
                op = .lessEqual
            case .greaterThan:
                op = .greaterThan
            case .greaterEqual:
                op = .greaterEqual
            default:
                throw JSON.PathError.unexpectedToken("Expected comparison operator, got '\(current)'")
            }
            try advance()
            return op
        }

        // MARK: - Literals

        private mutating func parseLiteral() throws -> Literal {
            let literal: Literal
            switch current {
            case let .number(n):
                literal = .number(n)
            case let .string(s):
                literal = .string(s)
            case .true:
                literal = .bool(true)
            case .false:
                literal = .bool(false)
            case .null:
                literal = .null
            default:
                throw JSON.PathError.unexpectedToken("Expected literal, got '\(current)'")
            }
            try advance()
            return literal
        }

        // MARK: - Functions

        private mutating func parseFunctionCall(
            name: String
        ) throws -> FunctionCall {
            try expect(.leftParen)
            var arguments: [FunctionArgument] = []
            if current != .rightParen {
                try arguments.append(parseFunctionArgument())
                while current == .comma {
                    try advance()
                    try arguments.append(parseFunctionArgument())
                }
            }
            try expect(.rightParen)
            return FunctionCall(name: name, arguments: arguments)
        }

        private mutating func parseFunctionArgument() throws -> FunctionArgument {
            if current == .not || current == .leftParen {
                return try .logicalExpression(parseLogicalOrExpr())
            }
            if current == .root || current == Token.current {
                let isRelative = current == Token.current
                try advance()
                let segments = try parseSegments()
                if isComparisonOp(current) {
                    let singularSegments = try toSingularSegments(segments)
                    let sq: SingularQuery = isRelative ? .relative(singularSegments) : .absolute(singularSegments)
                    let lhs = ComparisonOperand.singularQuery(sq)
                    let op = try parseComparisonOp()
                    let rhs = try parseComparable()
                    return .logicalExpression(.comparison(lhs, op, rhs))
                }
                let fq: FilterQuery = isRelative ? .relative(segments) : .absolute(segments)
                return .filterQuery(fq)
            }
            if case let .name(name) = current {
                try advance()
                let fc = try parseFunctionCall(name: name)
                if isComparisonOp(current) {
                    let lhs = ComparisonOperand.function(fc)
                    let op = try parseComparisonOp()
                    let rhs = try parseComparable()
                    return .logicalExpression(.comparison(lhs, op, rhs))
                }
                return .functionExpression(fc)
            }
            if isLiteral(current) {
                let lit = try parseLiteral()
                if isComparisonOp(current) {
                    let lhs = ComparisonOperand.literal(lit)
                    let op = try parseComparisonOp()
                    let rhs = try parseComparable()
                    return .logicalExpression(.comparison(lhs, op, rhs))
                }
                return .literal(lit)
            }
            throw JSON.PathError.unexpectedToken("Expected function argument, got '\(current)'")
        }

        // MARK: - Helpers

        private func isComparisonOp(
            _ token: Token
        ) -> Bool {
            switch token {
            case .equal, .notEqual, .lessThan, .lessEqual, .greaterThan, .greaterEqual:
                true
            default:
                false
            }
        }

        private func isLiteral(
            _ token: Token
        ) -> Bool {
            switch token {
            case .number, .string, .true, .false, .null:
                true
            default:
                false
            }
        }

        private func toSingularSegments(
            _ segments: [Segment]
        ) throws -> [SingularSegment] {
            try segments.map { segment in
                switch segment {
                case let .child(selectors):
                    guard selectors.count == 1 else {
                        throw JSON.PathError.unexpectedToken("Singular query segments must have exactly one selector")
                    }
                    switch selectors[0] {
                    case let .name(n):
                        return .name(n)
                    case let .index(i):
                        return .index(i)
                    default:
                        throw JSON.PathError.unexpectedToken("Singular query selectors must be name or index")
                    }
                case .descendant:
                    throw JSON.PathError.unexpectedToken("Descendant segments are not allowed in singular queries")
                }
            }
        }

    }

}
