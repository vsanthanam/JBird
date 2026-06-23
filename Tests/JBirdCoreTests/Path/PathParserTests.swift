// JBird
// PathParserTests.swift
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
import Testing

@Suite("Path Parser Tests")
struct PathParserTests {

    // MARK: - Basic Queries

    @Test("Parses root-only query")
    func rootOnly() throws {
        let path = try JSON.Path("$")
        #expect(path.segments.isEmpty)
    }

    @Test("Parses simple dot notation")
    func dotNotation() throws {
        let path = try JSON.Path("$.store.book")
        #expect(path.segments.count == 2)
        #expect(path.segments[0] == .child([.name("store")]))
        #expect(path.segments[1] == .child([.name("book")]))
    }

    @Test("Parses bracket notation with double quotes")
    func bracketNotationDouble() throws {
        let path = try JSON.Path("$[\"store\"][\"book\"]")
        #expect(path.segments.count == 2)
        #expect(path.segments[0] == .child([.name("store")]))
        #expect(path.segments[1] == .child([.name("book")]))
    }

    @Test("Parses bracket notation with single quotes")
    func bracketNotationSingle() throws {
        let path = try JSON.Path("$['store']['book']")
        #expect(path.segments.count == 2)
        #expect(path.segments[0] == .child([.name("store")]))
        #expect(path.segments[1] == .child([.name("book")]))
    }

    @Test("Parses mixed dot and bracket notation")
    func mixedNotation() throws {
        let path = try JSON.Path("$.store['book']")
        #expect(path.segments.count == 2)
        #expect(path.segments[0] == .child([.name("store")]))
        #expect(path.segments[1] == .child([.name("book")]))
    }

    @Test("Parses keywords as member names after dot")
    func keywordsAsMemberNames() throws {
        let pathTrue = try JSON.Path("$.true")
        #expect(pathTrue.segments[0] == .child([.name("true")]))
        let pathFalse = try JSON.Path("$.false")
        #expect(pathFalse.segments[0] == .child([.name("false")]))
        let pathNull = try JSON.Path("$.null")
        #expect(pathNull.segments[0] == .child([.name("null")]))
    }

    // MARK: - Wildcard

    @Test("Parses dot wildcard")
    func dotWildcard() throws {
        let path = try JSON.Path("$.store.*")
        #expect(path.segments[1] == .child([.wildcard]))
    }

    @Test("Parses bracket wildcard")
    func bracketWildcard() throws {
        let path = try JSON.Path("$.store[*]")
        #expect(path.segments[1] == .child([.wildcard]))
    }

    // MARK: - Index

    @Test("Parses positive index")
    func positiveIndex() throws {
        let path = try JSON.Path("$.book[0]")
        #expect(path.segments[1] == .child([.index(0)]))
    }

    @Test("Parses negative index")
    func negativeIndex() throws {
        let path = try JSON.Path("$.book[-1]")
        #expect(path.segments[1] == .child([.index(-1)]))
    }

    // MARK: - Slice

    @Test("Parses slice with start and end")
    func sliceStartEnd() throws {
        let path = try JSON.Path("$.book[0:2]")
        #expect(path.segments[1] == .child([.slice(start: 0, end: 2, step: nil)]))
    }

    @Test("Parses slice with start only")
    func sliceStartOnly() throws {
        let path = try JSON.Path("$.book[1:]")
        #expect(path.segments[1] == .child([.slice(start: 1, end: nil, step: nil)]))
    }

    @Test("Parses slice with end only")
    func sliceEndOnly() throws {
        let path = try JSON.Path("$.book[:3]")
        #expect(path.segments[1] == .child([.slice(start: nil, end: 3, step: nil)]))
    }

    @Test("Parses slice with step only")
    func sliceStepOnly() throws {
        let path = try JSON.Path("$.book[::2]")
        #expect(path.segments[1] == .child([.slice(start: nil, end: nil, step: 2)]))
    }

    @Test("Parses full slice with all three parts")
    func fullSlice() throws {
        let path = try JSON.Path("$.book[1:5:2]")
        #expect(path.segments[1] == .child([.slice(start: 1, end: 5, step: 2)]))
    }

    @Test("Parses slice with negative bounds")
    func sliceNegativeBounds() throws {
        let path = try JSON.Path("$.book[-3:-1]")
        #expect(path.segments[1] == .child([.slice(start: -3, end: -1, step: nil)]))
    }

    @Test("Parses bare colon slice")
    func bareColonSlice() throws {
        let path = try JSON.Path("$.book[:]")
        #expect(path.segments[1] == .child([.slice(start: nil, end: nil, step: nil)]))
    }

    // MARK: - Multiple Selectors

    @Test("Parses multiple selectors in brackets")
    func multipleSelectors() throws {
        let path = try JSON.Path("$.book[0,1,2]")
        #expect(path.segments[1] == .child([.index(0), .index(1), .index(2)]))
    }

    @Test("Parses mixed selectors in brackets")
    func mixedSelectors() throws {
        let path = try JSON.Path("$.book['title','author']")
        #expect(path.segments[1] == .child([.name("title"), .name("author")]))
    }

    // MARK: - Descendant

    @Test("Parses descendant with dot name")
    func descendantDotName() throws {
        let path = try JSON.Path("$..author")
        #expect(path.segments.count == 1)
        #expect(path.segments[0] == .descendant([.name("author")]))
    }

    @Test("Parses descendant with wildcard")
    func descendantWildcard() throws {
        let path = try JSON.Path("$..*")
        #expect(path.segments[0] == .descendant([.wildcard]))
    }

    @Test("Parses descendant with bracket")
    func descendantBracket() throws {
        let path = try JSON.Path("$..[0]")
        #expect(path.segments[0] == .descendant([.index(0)]))
    }

    @Test("Parses descendant with keywords")
    func descendantKeywords() throws {
        let path = try JSON.Path("$..true")
        #expect(path.segments[0] == .descendant([.name("true")]))
    }

    // MARK: - Filter Expressions

    @Test("Parses filter with less than")
    func filterLessThan() throws {
        let path = try JSON.Path("$.book[?@.price < 10]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(lhs, op, rhs) = expr {
            #expect(op == .lessThan)
            #expect(lhs == .singularQuery(.relative([.name("price")])))
            #expect(rhs == .literal(.number(JSON.Number(10))))
        } else {
            Issue.record("Expected filter with comparison")
        }
    }

    @Test("Parses filter with equality")
    func filterEquality() throws {
        let path = try JSON.Path("$.book[?@.category == 'fiction']")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, op, rhs) = expr {
            #expect(op == .equal)
            #expect(rhs == .literal(.string("fiction")))
        } else {
            Issue.record("Expected filter with equality")
        }
    }

    @Test("Parses filter with all comparison operators",
          arguments: [
              ("==", JSON.Path.ComparisonOperator.equal),
              ("!=", JSON.Path.ComparisonOperator.notEqual),
              ("<", JSON.Path.ComparisonOperator.lessThan),
              ("<=", JSON.Path.ComparisonOperator.lessEqual),
              (">", JSON.Path.ComparisonOperator.greaterThan),
              (">=", JSON.Path.ComparisonOperator.greaterEqual),
          ] as [(String, JSON.Path.ComparisonOperator)])
    func filterComparisonOperators(opStr: String, expected: JSON.Path.ComparisonOperator) throws {
        let path = try JSON.Path("$.x[?@.v \(opStr) 1]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, op, _) = expr {
            #expect(op == expected)
        } else {
            Issue.record("Expected comparison with operator \(opStr)")
        }
    }

    @Test("Parses existence test")
    func existenceTest() throws {
        let path = try JSON.Path("$.book[?@.isbn]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .query(fq) = expr {
            #expect(fq == .relative([.child([.name("isbn")])]))
        } else {
            Issue.record("Expected existence test")
        }
    }

    @Test("Parses negated existence test")
    func negatedExistenceTest() throws {
        let path = try JSON.Path("$.book[?!@.isbn]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .not(inner) = expr,
           case let .query(fq) = inner {
            #expect(fq == .relative([.child([.name("isbn")])]))
        } else {
            Issue.record("Expected negated existence test")
        }
    }

    @Test("Parses logical AND in filter")
    func filterAnd() throws {
        let path = try JSON.Path("$.book[?@.price > 5 && @.price < 20]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .and(operands) = expr {
            #expect(operands.count == 2)
        } else {
            Issue.record("Expected AND expression")
        }
    }

    @Test("Parses logical OR in filter")
    func filterOr() throws {
        let path = try JSON.Path("$.book[?@.a == 1 || @.b == 2]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .or(operands) = expr {
            #expect(operands.count == 2)
        } else {
            Issue.record("Expected OR expression")
        }
    }

    @Test("Parses grouped expression with parentheses")
    func groupedExpression() throws {
        let path = try JSON.Path("$.book[?(@.a == 1 || @.b == 2) && @.c == 3]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .and(operands) = expr {
            #expect(operands.count == 2)
            if case let .or(inner) = operands[0] {
                #expect(inner.count == 2)
            } else {
                Issue.record("Expected inner OR expression")
            }
        } else {
            Issue.record("Expected AND wrapping grouped OR")
        }
    }

    @Test("Parses negated grouped expression")
    func negatedGroupedExpression() throws {
        let path = try JSON.Path("$.book[?!(@.a == 1)]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case .not = expr {
            // OK
        } else {
            Issue.record("Expected NOT expression")
        }
    }

    @Test("Parses literal on left side of comparison")
    func literalOnLeft() throws {
        let path = try JSON.Path("$.book[?10 > @.price]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(lhs, op, _) = expr {
            #expect(op == .greaterThan)
            #expect(lhs == .literal(.number(JSON.Number(10))))
        } else {
            Issue.record("Expected comparison with literal on left")
        }
    }

    @Test("Parses boolean literal in comparison")
    func booleanLiteral() throws {
        let path = try JSON.Path("$.x[?@.active == true]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, _, rhs) = expr {
            #expect(rhs == .literal(.bool(true)))
        } else {
            Issue.record("Expected boolean literal comparison")
        }
    }

    @Test("Parses null literal in comparison")
    func nullLiteral() throws {
        let path = try JSON.Path("$.x[?@.v != null]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, _, rhs) = expr {
            #expect(rhs == .literal(.null))
        } else {
            Issue.record("Expected null literal comparison")
        }
    }

    @Test("Parses string literal in comparison")
    func stringLiteral() throws {
        let path = try JSON.Path("$.x[?@.name == 'hello']")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, _, rhs) = expr {
            #expect(rhs == .literal(.string("hello")))
        } else {
            Issue.record("Expected string literal comparison")
        }
    }

    @Test("Parses absolute query in comparison")
    func absoluteQueryComparison() throws {
        let path = try JSON.Path("$.book[?@.price < $.threshold]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(_, _, rhs) = expr {
            #expect(rhs == .singularQuery(.absolute([.name("threshold")])))
        } else {
            Issue.record("Expected absolute query in RHS")
        }
    }

    // MARK: - Functions

    @Test("Parses function call in filter")
    func functionInFilter() throws {
        let path = try JSON.Path("$.book[?length(@.authors) > 1]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .comparison(lhs, _, _) = expr,
           case let .function(fc) = lhs {
            #expect(fc.name == "length")
            #expect(fc.arguments.count == 1)
        } else {
            Issue.record("Expected function comparison")
        }
    }

    @Test("Parses function with multiple arguments")
    func functionMultipleArgs() throws {
        let path = try JSON.Path("$.x[?match(@.name, 'test.*')]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .function(fc) = expr {
            #expect(fc.name == "match")
            #expect(fc.arguments.count == 2)
        } else {
            Issue.record("Expected function test with two arguments")
        }
    }

    @Test("Parses function with no arguments")
    func functionNoArgs() throws {
        let path = try JSON.Path("$.x[?foo()]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .function(fc) = expr {
            #expect(fc.name == "foo")
            #expect(fc.arguments.isEmpty)
        } else {
            Issue.record("Expected function with no arguments")
        }
    }

    @Test("Parses function as test expression")
    func functionAsTest() throws {
        let path = try JSON.Path("$.x[?search(@.name, 'pat')]")
        if case let .child(selectors) = path.segments[1],
           case let .filter(expr) = selectors[0],
           case let .function(fc) = expr {
            #expect(fc.name == "search")
        } else {
            Issue.record("Expected function as test")
        }
    }

    // MARK: - Complex Queries

    @Test("Parses deeply nested path")
    func deeplyNested() throws {
        let path = try JSON.Path("$.a.b.c.d.e")
        #expect(path.segments.count == 5)
    }

    @Test("Parses mixed segments and selectors")
    func mixedSegmentsAndSelectors() throws {
        let path = try JSON.Path("$.store.book[0].author")
        #expect(path.segments.count == 4)
        #expect(path.segments[0] == .child([.name("store")]))
        #expect(path.segments[1] == .child([.name("book")]))
        #expect(path.segments[2] == .child([.index(0)]))
        #expect(path.segments[3] == .child([.name("author")]))
    }

    @Test("Parses path with whitespace in filter")
    func whitespaceInFilter() throws {
        let path = try JSON.Path("$.book[? @.price   <   10 ]")
        if case let .child(selectors) = path.segments[1],
           case .filter = selectors[0] {
            // OK — whitespace is insignificant
        } else {
            Issue.record("Expected filter selector")
        }
    }

    // MARK: - Array Literal Init

    @Test("Constructs path from array literal")
    func arrayLiteral() {
        let path: JSON.Path = [.child([.name("store")]), .child([.name("book")])]
        #expect(path.segments.count == 2)
    }

    // MARK: - Error Cases

    @Test("Rejects missing root")
    func rejectsMissingRoot() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path(".store")
        }
    }

    @Test("Rejects empty string")
    func rejectsEmptyString() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("")
        }
    }

    @Test("Rejects unclosed bracket")
    func rejectsUnclosedBracket() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$.store[0")
        }
    }

    @Test("Rejects trailing tokens")
    func rejectsTrailingTokens() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$.store $")
        }
    }

    @Test("Rejects unterminated string")
    func rejectsUnterminatedString() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$['store")
        }
    }

    @Test("Rejects lone ampersand")
    func rejectsLoneAmpersand() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$.book[?@.a & @.b]")
        }
    }

    @Test("Rejects lone pipe")
    func rejectsLonePipe() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$.book[?@.a | @.b]")
        }
    }

    @Test("Rejects lone equals")
    func rejectsLoneEquals() {
        #expect(throws: JSON.PathError.self) {
            _ = try JSON.Path("$.book[?@.a = 1]")
        }
    }

}
