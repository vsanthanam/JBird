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
        #expect(pointer.string == string)
        #expect(pointer.description == string)
    }

    @Test("Data Initializer Parses UTF-8 Bytes")
    func dataInitializer() throws {
        let pointer = try JSON.Pointer(Data("/foo/0/bar".utf8))
        #expect(pointer.tokens == ["foo", "0", "bar"])

        // A URI fragment is detected the same way as the string initializer.
        let fragment = try JSON.Pointer(Data("#/a~1b".utf8))
        #expect(fragment.tokens == ["a/b"])
    }

    @Test("Data Initializer Rejects Invalid UTF-8")
    func dataInitializerInvalidUTF8() {
        #expect(throws: JSON.Pointer.DeserializationError.invalidEncoding) {
            try JSON.Pointer(Data([0xFF, 0xFE]))
        }
    }

    @Test("Data Initializer Rejects A Malformed Pointer")
    func dataInitializerMalformed() {
        #expect(throws: JSON.Pointer.DeserializationError.missingLeadingSlash("foo")) {
            try JSON.Pointer(Data("foo".utf8))
        }
    }

    @Test("Appending Returns A New Pointer")
    func appending() throws {
        let base = try JSON.Pointer("/users/0")
        let child = base.appending("name")
        #expect(child.tokens == ["users", "0", "name"])
    }

    @Test("Appending Escapes The New Token")
    func appendingEscapesToken() {
        let pointer = JSON.Pointer.wholeDocument.appending("a/b").appending("c~d")
        #expect(pointer.tokens == ["a/b", "c~d"])
        #expect(pointer.string == "/a~1b/c~0d")
    }

    @Test("Append Mutates In Place")
    func appendMutates() throws {
        var pointer = try JSON.Pointer("/users")
        pointer.append("0")
        pointer.append("name")
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Appending Multiple Tokens At Once")
    func appendingVariadic() throws {
        let pointer = try JSON.Pointer("/users").appending("0", "name")
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Appending The Contents Of A Collection")
    func appendingContentsOf() throws {
        let pointer = try JSON.Pointer("/users").appending(contentsOf: ["0", "name"])
        #expect(pointer.tokens == ["users", "0", "name"])
        // Appending an empty collection leaves the pointer unchanged.
        #expect(pointer.appending(contentsOf: [] as [JSON.Pointer.Token]) == pointer)
    }

    @Test("Append Multiple Tokens In Place")
    func appendVariadicMutates() throws {
        var pointer = try JSON.Pointer("/users")
        pointer.append("0", "name")
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Append The Contents Of A Collection In Place")
    func appendContentsOfMutates() throws {
        var pointer = try JSON.Pointer("/users")
        pointer.append(contentsOf: ["0", "name"])
        #expect(pointer.tokens == ["users", "0", "name"])
    }

    @Test("Appending The Contents Of Another Pointer")
    func appendingContentsOfPointer() throws {
        let base = try JSON.Pointer("/users/0")
        let suffix = try JSON.Pointer("/name/first")
        let combined = base.appending(contentsOf: suffix)
        #expect(combined.tokens == ["users", "0", "name", "first"])
        // The original pointer is left unchanged.
        #expect(base.tokens == ["users", "0"])
        // Appending the whole-document pointer is a no-op.
        #expect(base.appending(contentsOf: JSON.Pointer.wholeDocument) == base)
    }

    @Test("Append The Contents Of Another Pointer In Place")
    func appendContentsOfPointerMutates() throws {
        var pointer = try JSON.Pointer("/users/0")
        try pointer.append(contentsOf: JSON.Pointer("/name/first"))
        #expect(pointer.tokens == ["users", "0", "name", "first"])
    }

    @Test("Initializes From Any StringProtocol, Such As A Substring")
    func stringProtocolInitializer() throws {
        let substring: Substring = "x/users/0".dropFirst()
        #expect(try JSON.Pointer(substring).tokens == ["users", "0"])
    }

    @Test(
        "Parses URI fragments (RFC 6901 §6)",
        arguments: [
            ("#", []),
            ("#/foo", ["foo"]),
            ("#/foo/0", ["foo", "0"]),
            ("#/", [""]),
            ("#/a~1b", ["a/b"]),
            ("#/c%25d", ["c%d"]),
            ("#/e%5Ef", ["e^f"]),
            ("#/g%7Ch", ["g|h"]),
            ("#/i%5Cj", [#"i\j"#]),
            ("#/k%22l", [#"k"l"#]),
            ("#/%20", [" "]),
            ("#/m~0n", ["m~n"]),
        ] as [(fragment: String, tokens: [String])]
    )
    func parsesURIFragment(fragment: String, tokens: [String]) throws {
        // The initializer is format-agnostic: a leading "#" selects the URI fragment representation.
        #expect(try JSON.Pointer(fragment).tokens == tokens)
    }

    @Test(
        "Round trips through its URI fragment form",
        arguments: ["#", "#/foo", "#/foo/0", "#/", "#/a~1b", "#/c%25d", "#/e%5Ef", "#/%20", "#/m~0n", "#/i%5Cj"]
    )
    func roundTripsURIFragment(fragment: String) throws {
        let pointer = try JSON.Pointer(fragment)
        #expect(pointer.uriFragment == fragment)
    }

    @Test("URI fragment decodes multibyte UTF-8")
    func uriFragmentMultibyte() throws {
        // "é" is U+00E9 → UTF-8 0xC3 0xA9 → "%C3%A9"
        let pointer = try JSON.Pointer("#/caf%C3%A9")
        #expect(pointer.tokens == ["café"])
        #expect(pointer.uriFragment == "#/caf%C3%A9")
    }

    @Test(
        "URI fragment rejects invalid percent-encoding",
        arguments: [
            "#/%2", // truncated escape
            "#/%zz", // non-hex digits
            "#/%FF", // valid escape, but 0xFF is not valid UTF-8
        ]
    )
    func uriFragmentInvalidEncoding(fragment: String) {
        #expect(throws: JSON.Pointer.DeserializationError.invalidEncoding) {
            try JSON.Pointer(fragment)
        }
    }

    @Test("URI fragment accepts lowercase percent-encoding")
    func uriFragmentLowercaseHex() throws {
        // RFC 3986 percent-encoding is case-insensitive in its hex digits.
        let pointer = try JSON.Pointer("#/caf%c3%a9")
        #expect(pointer.tokens == ["café"])
    }

    @Test("URI fragment leaves sub-delimiters unescaped")
    func uriFragmentSubDelimiters() {
        // Sub-delims (! $ & ' ( ) * + , ; =) are permitted unencoded in a fragment.
        let pointer = JSON.Pointer(tokens: ["a=b!c$d&e"])
        #expect(pointer.uriFragment == "#/a=b!c$d&e")
    }

    @Test("JSON Value Is The String Representation")
    func jsonValue() throws {
        let pointer = try JSON.Pointer("/a~1b/0/name")
        #expect(JSON(pointer) == "/a~1b/0/name")
    }

    @Test("Initializes From A JSON String")
    func initFromJSON() throws {
        let pointer = try JSON.Pointer(json: .string("/a~1b/0/name"))
        #expect(pointer.tokens == ["a/b", "0", "name"])
    }

    @Test("Round Trips Through JSONRepresentable")
    func jsonRepresentableRoundTrip() throws {
        let pointer = try JSON.Pointer("/users/0/name")
        #expect(try JSON.Pointer(json: pointer.jsonValue) == pointer)
    }

    @Test("Initializing From A Non-String JSON Throws")
    func initFromNonStringJSON() {
        #expect(throws: JSON.OperationError.illegalStringConversion) {
            try JSON.Pointer(json: 42)
        }
    }

    @Test("Initializing From A Malformed Pointer String Throws")
    func initFromMalformedJSON() {
        #expect(throws: JSON.Pointer.DeserializationError.missingLeadingSlash("foo")) {
            try JSON.Pointer(json: .string("foo"))
        }
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

    @Suite("Codable")
    struct CodableTests {

        /// Canonical RFC 6901 string forms covering the whole document, escaped
        /// tokens, and an empty trailing token.
        static let strings = ["", "/", "/foo", "/foo/0", "/foo/", "/a~1b", "/m~0n", "/~01"]

        @Test("Round-trips through Codable", arguments: CodableTests.strings)
        func roundTrip(string: String) throws {
            let pointer = try JSON.Pointer(string)
            let data = try JSONEncoder().encode(pointer)
            #expect(try JSONDecoder().decode(JSON.Pointer.self, from: data) == pointer)
        }

        @Test("Encodes as its RFC 6901 string", arguments: CodableTests.strings)
        func encodesAsString(string: String) throws {
            let pointer = try JSON.Pointer(string)
            let data = try JSONEncoder().encode(pointer)
            // The encoded value is a JSON string holding the pointer's string form.
            #expect(try JSONDecoder().decode(String.self, from: data) == pointer.string)
        }

        @Test("Decodes from a JSON string", arguments: CodableTests.strings)
        func decodesFromString(string: String) throws {
            let data = try JSONEncoder().encode(string)
            let pointer = try JSONDecoder().decode(JSON.Pointer.self, from: data)
            #expect(try pointer == JSON.Pointer(string))
        }

        @Test("Decodes the URI fragment form")
        func decodesURIFragment() throws {
            let data = try JSONEncoder().encode("#/a~1b")
            let pointer = try JSONDecoder().decode(JSON.Pointer.self, from: data)
            #expect(pointer.tokens == ["a/b"])
        }

        @Test("The whole-document pointer round-trips")
        func wholeDocument() throws {
            let data = try JSONEncoder().encode(JSON.Pointer.wholeDocument)
            #expect(try JSONDecoder().decode(String.self, from: data) == "")
            #expect(try JSONDecoder().decode(JSON.Pointer.self, from: data) == .wholeDocument)
        }

        @Test("Decoding a malformed pointer string throws")
        func decodeMalformedThrows() throws {
            let data = try JSONEncoder().encode("no-leading-slash")
            #expect(throws: JSON.Pointer.DeserializationError.missingLeadingSlash("no-leading-slash")) {
                try JSONDecoder().decode(JSON.Pointer.self, from: data)
            }
        }

        @Test("Decoding a non-string JSON throws")
        func decodeNonStringThrows() {
            #expect(throws: JSON.OperationError.illegalStringConversion) {
                try JSONDecoder().decode(JSON.Pointer.self, from: Data("42".utf8))
            }
        }

        @Test("A pointer round-trips inside another Codable type")
        func nestedInCodableType() throws {
            struct Holder: Codable, Equatable {
                let pointer: JSON.Pointer
            }
            let holder = Holder(pointer: ["foo", "0"])
            let data = try JSONEncoder().encode(holder)
            #expect(try JSONDecoder().decode(Holder.self, from: data) == holder)
        }
    }

}
