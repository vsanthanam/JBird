// JBird
// PointerBuilderTests.swift
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

import JBirdBuilders
import JBirdCore
import Testing

@Suite("Pointer Builder Tests")
struct PointerBuilderTests {

    // MARK: - Expressions

    @Test("Empty Builder Is Whole Document")
    func emptyBuilder() {
        let pointer = JSON.Pointer {}
        #expect(pointer == .wholeDocument)
    }

    @Test("Single String Token")
    func singleString() {
        let pointer = JSON.Pointer {
            "users"
        }
        #expect(pointer.tokens == ["users"])
    }

    @Test("Multiple String Tokens")
    func multipleStrings() {
        let pointer = JSON.Pointer {
            "users"
            "0"
            "name"
        }
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Unsigned Integer Literals")
    func unsignedIntegerLiterals() {
        let pointer = JSON.Pointer {
            "users"
            0
            42
        }
        #expect(pointer.tokens == ["users", "0", "42"])
    }

    @Test("Typed Unsigned Integers")
    func typedUnsignedIntegers() {
        // Exercises the `some UnsignedInteger` overload with non-`UInt` types.
        let small: UInt8 = 7
        let large: UInt64 = 1_000_000
        let pointer = JSON.Pointer {
            small
            large
        }
        #expect(pointer.tokens == ["7", "1000000"])
    }

    @Test("Substring Expression")
    func substringExpression() {
        // Exercises the `some StringProtocol` overload with a non-`String` type.
        let substring = "hello/world".split(separator: "/")[1] // Substring
        let pointer = JSON.Pointer {
            substring
        }
        #expect(pointer.tokens == ["world"])
    }

    @Test("Mixed Strings And Integers")
    func mixedStringsAndIntegers() {
        let pointer = JSON.Pointer {
            "users"
            0
            "roles"
            2
        }
        #expect(pointer.tokens == ["users", "0", "roles", "2"])
    }

    @Test("Tokens Are Escaped On Serialization")
    func escapedTokens() {
        let pointer = JSON.Pointer {
            "a/b"
            "c~d"
        }
        #expect(pointer.tokens == ["a/b", "c~d"])
        #expect(pointer.stringify() == "/a~1b/c~0d")
    }

    // MARK: - Control flow

    @Test(
        "If/else selects the matching branch",
        arguments: [
            (true, ["users", "admins"]),
            (false, ["users", "members"]),
        ] as [(admin: Bool, tokens: [String])]
    )
    func ifElse(admin: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "users"
            if admin {
                "admins"
            } else {
                "members"
            }
        }
        #expect(pointer.tokens == tokens)
    }

    @Test(
        "Branches may contain multiple statements",
        arguments: [
            (true, ["root", "a", "b"]),
            (false, ["root", "c"]),
        ] as [(deep: Bool, tokens: [String])]
    )
    func multiStatementBranch(deep: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "root"
            if deep {
                "a"
                "b"
            } else {
                "c"
            }
        }
        #expect(pointer.tokens == tokens)
    }

    @Test(
        "An empty branch contributes nothing",
        arguments: [
            (true, ["users", "extra"]),
            (false, ["users"]),
        ] as [(extra: Bool, tokens: [String])]
    )
    func emptyBranch(extra: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "users"
            if extra {
                "extra"
            } else {}
        }
        #expect(pointer.tokens == tokens)
    }

    @Test(
        "Optional if includes its tokens only when present",
        arguments: [
            (true, ["users", "extra"]),
            (false, ["users"]),
        ] as [(include: Bool, tokens: [String])]
    )
    func optionalIf(include: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "users"
            if include {
                "extra"
            }
        }
        #expect(pointer.tokens == tokens)
    }

    @Test("For Loop")
    func forLoop() {
        let pointer = JSON.Pointer {
            "root"
            for segment in ["a", "b", "c"] {
                segment
            }
        }
        #expect(pointer.tokens == ["root", "a", "b", "c"])
    }

    @Test("Empty For Loop Contributes Nothing")
    func emptyForLoop() {
        let segments: [String] = []
        let pointer = JSON.Pointer {
            "root"
            for segment in segments {
                segment
            }
        }
        #expect(pointer.tokens == ["root"])
    }

    @Test("For Loop With Multiple Statements And Integers")
    func forLoopMultiStatement() {
        let pointer = JSON.Pointer {
            "items"
            for index: UInt in [0, 1] {
                "item"
                index
            }
        }
        #expect(pointer.tokens == ["items", "item", "0", "item", "1"])
    }

    @Test(
        "Nested control flow",
        arguments: [
            (true, ["root", "read", "write"]),
            (false, ["root"]),
        ] as [(admin: Bool, tokens: [String])]
    )
    func nestedControlFlow(admin: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "root"
            if admin {
                for role in ["read", "write"] {
                    role
                }
            }
        }
        #expect(pointer.tokens == tokens)
    }

    @Test(
        "Combination of every feature",
        arguments: [
            (true, ["users", "0", "admins", "x", "y"]),
            (false, ["users", "0", "members", "x", "y"]),
        ] as [(admin: Bool, tokens: [String])]
    )
    func combination(admin: Bool, tokens: [String]) {
        let pointer = JSON.Pointer {
            "users"
            0
            if admin {
                "admins"
            } else {
                "members"
            }
            for tag in ["x", "y"] {
                tag
            }
        }
        #expect(pointer.tokens == tokens)
    }

    // MARK: - Composing pointers

    @Test("Embed Pointer")
    func embedPointer() {
        let base: JSON.Pointer = ["users", "0"]
        let pointer = JSON.Pointer {
            base
        }
        #expect(pointer.tokens == ["users", "0"])
    }

    @Test("Embed Pointer Among Tokens")
    func embedPointerAmongTokens() {
        let base: JSON.Pointer = ["users", "0"]
        let pointer = JSON.Pointer {
            base
            "name"
        }
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Compose Multiple Pointers")
    func composeMultiplePointers() {
        let a: JSON.Pointer = ["x"]
        let b: JSON.Pointer = ["y", "z"]
        let pointer = JSON.Pointer {
            a
            "mid"
            b
        }
        #expect(pointer.tokens == ["x", "mid", "y", "z"])
    }

    @Test("Embed Whole Document Adds Nothing")
    func embedWholeDocument() {
        let pointer = JSON.Pointer {
            "a"
            JSON.Pointer.wholeDocument
            "b"
        }
        #expect(pointer.tokens == ["a", "b"])
    }

    @Test(
        "Compose pointer within control flow",
        arguments: [
            (true, ["root", "base"]),
            (false, ["root"]),
        ] as [(include: Bool, tokens: [String])]
    )
    func composeWithinControlFlow(include: Bool, tokens: [String]) {
        let base: JSON.Pointer = ["base"]
        let pointer = JSON.Pointer {
            "root"
            if include {
                base
            }
        }
        #expect(pointer.tokens == tokens)
    }

    // MARK: - Serialization

    @Test("Round Trips To String")
    func roundTrips() {
        let pointer = JSON.Pointer {
            "users"
            0
            "name"
        }
        #expect(pointer.stringify() == "/users/0/name")
    }

}
