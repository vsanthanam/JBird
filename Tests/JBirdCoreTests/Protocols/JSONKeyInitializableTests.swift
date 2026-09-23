// JBird
// JSONKeyInitializableTests.swift
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

enum RawRepKey: String, JSONKeyInitializable, Equatable {
    case foo
    case bar
}

@Test("Test Raw Representable Key")
func rawRepKey() throws {
    let foo = try RawRepKey(jsonKey: "foo")
    #expect(foo == .foo)
    let bar = try RawRepKey(jsonKey: "bar")
    #expect(bar == .bar)
    #expect(throws: JSON.OperationError.invalidRawRepresentable) {
        _ = try RawRepKey(jsonKey: "baz")
    }
}

@Test("Test Substring Key Round Trip")
func substringKey() throws {
    let base = "foobarbaz"
    let substring = base.dropFirst(3).dropLast(3)
    #expect(substring.jsonKey == "bar")
    let decoded = try Substring(jsonKey: "bar")
    #expect(decoded == "bar")
    #expect(String(decoded) == "bar")
    let empty = try Substring(jsonKey: "")
    #expect(empty.isEmpty)
    let unicode = try Substring(jsonKey: "héllo 🌍")
    #expect(unicode.jsonKey == "héllo 🌍")
}

@Test("Test UTF8View Key Round Trip")
func utf8ViewKey() throws {
    #expect("foo".utf8.jsonKey == "foo")
    let decoded = try String.UTF8View(jsonKey: "héllo 🌍")
    #expect(String(decoded) == "héllo 🌍")
    #expect(Array(decoded) == Array("héllo 🌍".utf8))
    #expect(decoded.jsonKey == "héllo 🌍")
}

@Test("Test UTF16View Key Round Trip")
func utf16ViewKey() throws {
    #expect("foo".utf16.jsonKey == "foo")
    let decoded = try String.UTF16View(jsonKey: "héllo 🌍")
    #expect(String(decoded) == "héllo 🌍")
    #expect(Array(decoded) == Array("héllo 🌍".utf16))
    #expect(decoded.jsonKey == "héllo 🌍")
}

@Test("Test Dictionary With Substring Keys")
func substringKeyedDictionary() throws {
    let json = JSON.object(["foo": .bool(true), "bar": .bool(false)])
    let dictionary = try json.convert(into: [Substring: Bool].self)
    #expect(dictionary == ["foo": true, "bar": false])
    #expect(dictionary.jsonValue == json)
}
