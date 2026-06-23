// JBird
// PointerErrorTests.swift
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

@Test("PointerError Description Tests")
func pointerErrorDescriptionTests() {

    let missingLeadingSlash = JSON.PointerError.missingLeadingSlash("hello/world")
    #expect(missingLeadingSlash.description == "JSON Pointer 'hello/world' must be empty or begin with '/'")

    let invalidEscapeSequence = JSON.PointerError.invalidEscapeSequence("~1")
    #expect(invalidEscapeSequence.description == "JSON Pointer reference token '~1' contains an invalid escape sequence")

    let invalidEncoding = JSON.PointerError.invalidEncoding
    #expect(invalidEncoding.description == "JSON Pointers must be represented as UTF-8 encoded strings")

}
