// JBird
// PatchTests.swift
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

@Suite("Patch Tests")
struct PatchTests {

    @Test("A patch is empty by default")
    func emptyByDefault() {
        #expect(JSON.Patch().operations.isEmpty)
    }

    @Test("A patch can be created from operations")
    func fromOperations() {
        let operations: [JSON.Patch.Operation] = [
            .add(path: ["a"], value: 1),
            .remove(path: ["b"]),
        ]
        #expect(JSON.Patch(operations: operations).operations == operations)
    }

    @Test("isEmpty reflects whether the patch has operations")
    func isEmpty() {
        #expect(JSON.Patch().isEmpty)
        #expect(JSON.Patch(operations: []).isEmpty)
        #expect(!JSON.Patch().add(1, to: ["a"]).isEmpty)
    }

    @Suite("Builders")
    struct Builders {

        @Test("add appends an add operation")
        func add() {
            #expect(JSON.Patch().add(1, to: ["a"]).operations == [.add(path: ["a"], value: 1)])
        }

        @Test("remove appends a remove operation")
        func remove() {
            #expect(JSON.Patch().remove(at: ["a"]).operations == [.remove(path: ["a"])])
        }

        @Test("replace appends a replace operation")
        func replace() {
            #expect(JSON.Patch().replace(at: ["a"], with: 2).operations == [.replace(path: ["a"], value: 2)])
        }

        @Test("move appends a move operation")
        func move() {
            #expect(JSON.Patch().move(from: ["a"], to: ["b"]).operations == [.move(from: ["a"], path: ["b"])])
        }

        @Test("copy appends a copy operation")
        func copy() {
            #expect(JSON.Patch().copy(from: ["a"], to: ["b"]).operations == [.copy(from: ["a"], path: ["b"])])
        }

        @Test("test appends a test operation")
        func test() {
            #expect(JSON.Patch().test(for: 3, at: ["a"]).operations == [.test(path: ["a"], value: 3)])
        }

        @Test("Chaining appends operations in order")
        func chaining() {
            let patch = JSON.Patch()
                .add(1, to: ["a"])
                .remove(at: ["b"])
                .test(for: 2, at: ["c"])
            #expect(patch.operations == [
                .add(path: ["a"], value: 1),
                .remove(path: ["b"]),
                .test(path: ["c"], value: 2),
            ])
        }

        @Test("Builders do not mutate the original patch")
        func valueSemantics() {
            let base = JSON.Patch()
            let extended = base.add(1, to: ["a"])
            #expect(base.operations.isEmpty)
            #expect(extended.operations.count == 1)
        }

        @Test("Value builders accept any JSONConvertible value")
        func convertibleValues() {
            // The value parameters take `some JSONConvertible`, so Swift values
            // can be passed directly without wrapping them in `JSON`.
            #expect(JSON.Patch().add(true, to: ["a"]).operations == [.add(path: ["a"], value: true)])
            #expect(JSON.Patch().replace(at: ["a"], with: "s").operations == [.replace(path: ["a"], value: "s")])
            #expect(JSON.Patch().test(for: 4, at: ["a"]).operations == [.test(path: ["a"], value: 4)])
        }
    }

    @Suite("String Pointer Builders")
    struct StringPointerBuilders {

        @Test("Builders accept JSON Pointer strings")
        func valid() throws {
            #expect(try JSON.Patch().add(1, to: "/a") == JSON.Patch().add(1, to: ["a"]))
            #expect(try JSON.Patch().remove(at: "/a") == JSON.Patch().remove(at: ["a"]))
            #expect(try JSON.Patch().replace(at: "/a", with: 2) == JSON.Patch().replace(at: ["a"], with: 2))
            #expect(try JSON.Patch().move(from: "/a", to: "/b") == JSON.Patch().move(from: ["a"], to: ["b"]))
            #expect(try JSON.Patch().copy(from: "/a", to: "/b") == JSON.Patch().copy(from: ["a"], to: ["b"]))
            #expect(try JSON.Patch().test(for: 3, at: "/a") == JSON.Patch().test(for: 3, at: ["a"]))
        }

        @Test("Nested and escaped pointer strings are parsed")
        func nested() throws {
            #expect(try JSON.Patch().add(1, to: "/a/0") == JSON.Patch().add(1, to: ["a", "0"]))
            #expect(try JSON.Patch().remove(at: "/a~1b") == JSON.Patch().remove(at: ["a/b"]))
        }

        @Test("Invalid add pointer string throws")
        func invalidAdd() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().add(1, to: "no-leading-slash")
            }
        }

        @Test("Invalid remove pointer string throws")
        func invalidRemove() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().remove(at: "no-leading-slash")
            }
        }

        @Test("Invalid replace pointer string throws")
        func invalidReplace() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().replace(at: "no-leading-slash", with: 1)
            }
        }

        @Test("Invalid move pointer strings throw")
        func invalidMove() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().move(from: "bad", to: "/b")
            }
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().move(from: "/a", to: "bad")
            }
        }

        @Test("Invalid copy pointer strings throw")
        func invalidCopy() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().copy(from: "bad", to: "/b")
            }
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().copy(from: "/a", to: "bad")
            }
        }

        @Test("Invalid test pointer string throws")
        func invalidTest() {
            #expect(throws: JSON.Pointer.DeserializationError.self) {
                try JSON.Patch().test(for: 1, at: "no-leading-slash")
            }
        }
    }

    @Suite("JSON Conversion")
    struct JSONConversion {

        static let patch = JSON.Patch()
            .add(1, to: ["a"])
            .remove(at: ["b"])

        @Test("jsonValue is an array of the operations' JSON")
        func jsonValue() {
            let patch = JSONConversion.patch
            #expect(patch.jsonValue == .array(patch.operations.map(\.jsonValue)))
        }

        @Test("An empty patch converts to an empty array")
        func emptyArray() {
            #expect(JSON.Patch().jsonValue == [])
        }

        @Test("Round-trips through its jsonValue")
        func roundTrip() throws {
            let patch = JSONConversion.patch
            #expect(try JSON.Patch(json: patch.jsonValue) == patch)
        }

        @Test("init(json:) decodes an array of operations")
        func fromArray() throws {
            let json: JSON = [["op": "add", "path": "/a", "value": 1]]
            #expect(try JSON.Patch(json: json) == JSON.Patch().add(1, to: ["a"]))
        }

        @Test("init(json:) from a non-array throws")
        func nonArray() {
            #expect(throws: JSON.OperationError.illegalArrayConversion) {
                try JSON.Patch(json: ["op": "add"])
            }
        }
    }

    @Suite("Codable")
    struct Codable {

        @Test("Round-trips through Codable")
        func roundTrip() throws {
            let patch = JSON.Patch()
                .add(1, to: ["a"])
                .test(for: 2, at: ["b"])
            let data = try JSONEncoder().encode(patch)
            #expect(try JSONDecoder().decode(JSON.Patch.self, from: data) == patch)
        }

        @Test("Encodes to a JSON array")
        func encodedShape() throws {
            let patch = JSON.Patch().add(1, to: ["a"])
            let data = try JSONEncoder().encode(patch)
            #expect(try JSONDecoder().decode(JSON.self, from: data) == patch.jsonValue)
        }

        @Test("An empty patch round-trips")
        func empty() throws {
            let data = try JSONEncoder().encode(JSON.Patch())
            #expect(try JSONDecoder().decode(JSON.Patch.self, from: data) == JSON.Patch())
        }
    }
}
