// JBird
// ExportedImportTests.swift
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

import JBird
import Testing

@JSONCodable
struct User: Equatable {

    init(
        username: String,
        age: Int,
        tags: [String]
    ) {
        self.username = username
        self.age = age
        self.tags = tags
    }

    let username: String
    let age: Int
    let tags: [String]

}

// Ensures the API surface of `JBirdCore`, `JBirdBuilders` and `JBirdMacros` is available through the single `JBird` import
@Test("Test user encode/decode")
func userEncode() throws {
    let json: JSON = [
        "username": "sjobs",
        "age": 50,
        "tags": ["ios", "swift"]
    ]
    let user = try User(json: json)
    let expected = User(username: "sjobs", age: 50, tags: ["ios", "swift"])
    #expect(user == expected)
}
