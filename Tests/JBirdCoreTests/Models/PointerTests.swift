// JBird
// PointerTests.swift
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
import JBirdCore
import Testing

@Suite("Pointer Tests")
struct PointerTests {

    @Test(
        "Parses string into tokens",
        arguments: [
            ("", []),
            ("/", [""]),
            ("/foo", ["foo"]),
            ("/foo/0", ["foo", "0"]),
            ("/foo/", ["foo", ""]),
            ("/a~1b", ["a/b"]),
            ("/m~0n", ["m~n"]),
            ("/~01", ["~1"]), // escape order: "~01" decodes to "~1", not "/1"
        ] as [(string: String, tokens: [String])]
    )
    func parses(string: String, tokens: [String]) throws {
        let pointer = try JSON.Pointer(string)
        #expect(pointer.tokens == tokens)
        #expect(pointer.isWholeDocument == tokens.isEmpty)
    }

    @Test(
        "Rejects malformed pointers",
        arguments: [
            ("foo", JSON.Pointer.DeserializationError.missingLeadingSlash("foo")),
            ("/~2", .invalidEscapeSequence("~2")),
            ("/x~", .invalidEscapeSequence("x~")),
        ] as [(string: String, error: JSON.Pointer.DeserializationError)]
    )
    func rejects(string: String, error: JSON.Pointer.DeserializationError) {
        #expect(throws: error) {
            try JSON.Pointer(string)
        }
    }

    @Test(
        "Round trips through its string form",
        arguments: ["", "/", "/foo", "/foo/0", "/foo/", "/a~1b", "/m~0n", "/~01"]
    )
    func roundTrips(string: String) throws {
        let pointer = try JSON.Pointer(string)
        #expect(pointer.stringify() == string)
        #expect(pointer.description == string)
    }

    @Test("Serialize Produces UTF-8 Data")
    func serializeData() throws {
        let pointer = try JSON.Pointer("/a~1b")
        #expect(pointer.serialize() == Data("/a~1b".utf8))
    }

    @Test("Data Initializer Parses UTF-8 Bytes")
    func dataInitializer() throws {
        let pointer = try JSON.Pointer(Data("/foo/bar".utf8))
        #expect(pointer.tokens == ["foo", "bar"])
    }

    @Test("Data Initializer Rejects Invalid UTF-8")
    func invalidEncoding() {
        #expect(throws: JSON.Pointer.DeserializationError.invalidEncoding) {
            try JSON.Pointer(Data([0xFF, 0xFE]))
        }
    }

    @Test("Codable Round Trips")
    func codableRoundTrip() throws {
        let pointer = try JSON.Pointer("/a~1b/0/name")
        let data = try JSONEncoder().encode(pointer)
        #expect(try JSONDecoder().decode(JSON.Pointer.self, from: data) == pointer)
    }

    @Test("Tokens Initializer")
    func tokensInitializer() {
        let pointer = JSON.Pointer(tokens: ["a/b", "c"])
        #expect(pointer.tokens == ["a/b", "c"])
    }

    @Test("Array Literal")
    func arrayLiteral() {
        let pointer: JSON.Pointer = ["users", "0", "name"]
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Whole Document Constant")
    func wholeDocumentConstant() {
        #expect(JSON.Pointer.wholeDocument.tokens.isEmpty)
        #expect(JSON.Pointer.wholeDocument.isWholeDocument)
    }

    @Test("Equatable And Hashable")
    func equatableHashable() throws {
        let a = try JSON.Pointer("/foo/0")
        let b: JSON.Pointer = ["foo", "0"]
        let c: JSON.Pointer = ["foo", "1"]
        #expect(a == b)
        #expect(a != c)
        #expect(Set([a, b, c]).count == 2)
    }

}
