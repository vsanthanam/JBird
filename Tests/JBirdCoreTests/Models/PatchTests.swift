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

        @Test("Builders accept any StringProtocol pointer, such as a Substring")
        func stringProtocol() throws {
            // The value-bearing builders take `some StringProtocol`, so a Substring works directly.
            let path: Substring = "x/a/b".dropFirst()
            #expect(try JSON.Patch().add(1, to: path) == JSON.Patch().add(1, to: ["a", "b"]))
            #expect(try JSON.Patch().replace(at: path, with: 2) == JSON.Patch().replace(at: ["a", "b"], with: 2))
            #expect(try JSON.Patch().move(from: path, to: path) == JSON.Patch().move(from: ["a", "b"], to: ["a", "b"]))
            #expect(try JSON.Patch().copy(from: path, to: path) == JSON.Patch().copy(from: ["a", "b"], to: ["a", "b"]))
            #expect(try JSON.Patch().test(for: 3, at: path) == JSON.Patch().test(for: 3, at: ["a", "b"]))
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

    @Suite("Diff Tests")
    struct DiffTests {

        @Test("difference(to:) is equivalent to Patch(from:to:)")
        func methodMatchesInitializer() {
            let source: JSON = ["a": 1]
            let target: JSON = ["a": 2]
            #expect(source.difference(to: target) == JSON.Patch(from: source, to: target))
        }

        @Test("Equal values produce an empty patch")
        func equalValuesAreEmpty() {
            #expect(JSON.Patch(from: ["a": 1, "b": [1, 2]], to: ["a": 1, "b": [1, 2]]).isEmpty)
        }

        @Suite("Round Trips")
        struct RoundTrips {

            private func assertRoundTrips(
                from source: JSON,
                to target: JSON,
                sourceLocation: SourceLocation = #_sourceLocation
            ) throws {
                let patch = source.difference(to: target)
                #expect(try source.applying(patch) == target, sourceLocation: sourceLocation)
            }

            static let scalarCases: [(source: JSON, target: JSON)] = [
                (.null, 1),
                (1, .null),
                (true, false),
                (1, "s"),
                ("a", "b"),
                (1, 2.5),
            ]

            @Test("Scalar changes round-trip", arguments: scalarCases)
            func scalars(source: JSON, target: JSON) throws {
                try assertRoundTrips(from: source, to: target)
            }

            static let objectCases: [(source: JSON, target: JSON)] = [
                // Added key
                (["a": 1], ["a": 1, "b": 2]),
                // Removed key
                (["a": 1, "b": 2], ["a": 1]),
                // Changed value
                (["a": 1], ["a": 2]),
                // Simultaneous add, remove, and change
                (["a": 1, "b": 2], ["a": 9, "c": 3]),
                // Empty to populated and back
                ([:], ["a": 1]),
                (["a": 1], [:]),
                // Nested object changes
                (["a": ["b": 1]], ["a": ["b": 2, "c": 3]]),
            ]

            @Test("Object changes round-trip", arguments: objectCases)
            func objects(source: JSON, target: JSON) throws {
                try assertRoundTrips(from: source, to: target)
            }

            static let arrayCases: [(source: JSON, target: JSON)] = [
                // Element changed in place
                ([1, 2, 3], [1, 9, 3]),
                // Grew (append)
                ([1, 2], [1, 2, 3, 4]),
                // Shrank (truncate)
                ([1, 2, 3, 4], [1, 2]),
                // Emptied and filled
                ([1, 2], []),
                ([], [1, 2]),
                // Changed and resized at once
                ([1, 2, 3], [9, 8]),
                ([1], [9, 8, 7]),
                // Nested array changes
                ([[1, 2], [3]], [[1, 5], [3, 4]]),
            ]

            @Test("Array changes round-trip", arguments: arrayCases)
            func arrays(source: JSON, target: JSON) throws {
                try assertRoundTrips(from: source, to: target)
            }

            @Test("Deeply nested mixed changes round-trip")
            func nested() throws {
                let source: JSON = [
                    "user": ["name": "ada", "roles": ["admin", "dev"]],
                    "count": 3,
                    "stale": true,
                ]
                let target: JSON = [
                    "user": ["name": "ada", "roles": ["dev"], "active": true],
                    "count": 4,
                ]
                try assertRoundTrips(from: source, to: target)
            }

            @Test("Type changes between containers and scalars round-trip")
            func typeChanges() throws {
                try assertRoundTrips(from: ["a": [1, 2]], to: ["a": ["x": 1]])
                try assertRoundTrips(from: ["a": ["x": 1]], to: ["a": 5])
                try assertRoundTrips(from: 5, to: [1, 2, 3])
            }
        }

        @Suite("Operations")
        struct Operations {

            @Test("Removals precede additions and changes, which follow sorted key order")
            func objectShape() {
                let patch = JSON.Patch(from: ["a": 1, "old": 0], to: ["a": 2, "new": 9])
                // Removed keys come first, then the surviving target keys in sorted order:
                // "a" (changed → replace) precedes "new" (added → add).
                #expect(patch.operations == [
                    .remove(path: ["old"]),
                    .replace(path: ["a"], value: 2),
                    .add(path: ["new"], value: 9),
                ])
            }

            @Test("Object keys are diffed in sorted order regardless of literal order")
            func deterministicKeyOrder() {
                let patch = JSON.Patch(from: [:], to: ["c": 3, "a": 1, "b": 2])
                #expect(patch.operations == [
                    .add(path: ["a"], value: 1),
                    .add(path: ["b"], value: 2),
                    .add(path: ["c"], value: 3),
                ])
            }

            @Test("A grown array appends trailing elements")
            func arrayGrowth() {
                let patch = JSON.Patch(from: [1, 2], to: [1, 2, 3, 4])
                #expect(patch.operations == [
                    .add(path: ["2"], value: 3),
                    .add(path: ["3"], value: 4),
                ])
            }

            @Test("A shrunken array removes its surplus trailing elements")
            func arrayShrink() {
                // Each removal shifts the next surviving element down into the same index, so both
                // removals address index 2.
                let patch = JSON.Patch(from: [1, 2, 3, 4], to: [1, 2])
                #expect(patch.operations == [
                    .remove(path: ["2"]),
                    .remove(path: ["2"]),
                ])
            }

            @Test("An element inserted at the front costs a single add")
            func arrayFrontInsertion() {
                let patch = JSON.Patch(from: [1, 2, 3], to: [0, 1, 2, 3])
                #expect(patch.operations == [.add(path: ["0"], value: 0)])
            }

            @Test("An element removed from the middle costs a single remove")
            func arrayMiddleRemoval() {
                let patch = JSON.Patch(from: [1, 2, 3], to: [1, 3])
                #expect(patch.operations == [.remove(path: ["1"])])
            }

            @Test("An element changed in place is diffed recursively, not replaced wholesale")
            func arrayInPlaceChange() {
                let patch = JSON.Patch(from: [["a": 1]], to: [["a": 2]])
                #expect(patch.operations == [.replace(path: ["0", "a"], value: 2)])
            }

            @Test("A reordering is expressed as a remove plus an add")
            func arrayReorder() {
                let patch = JSON.Patch(from: [1, 2, 3], to: [1, 3, 2])
                #expect(patch.operations == [
                    .remove(path: ["1"]),
                    .add(path: ["2"], value: 2),
                ])
            }

            @Test("A scalar or type change becomes a single replace")
            func replace() {
                #expect(
                    JSON.Patch(
                        from: 1,
                        to: 2
                    ).operations == [.replace(path: .wholeDocument, value: 2)]
                )
                #expect(
                    JSON.Patch(
                        from: [1],
                        to: ["a": 1]
                    ).operations == [.replace(path: .wholeDocument, value: ["a": 1])]
                )
            }

            @Test("The diff emits no move, copy, or test operations")
            func onlyAddRemoveReplace() {
                let patch = JSON.Patch(
                    from: ["a": [1, 2, 3], "b": 1],
                    to: ["a": [1], "c": 2]
                )
                for operation in patch.operations {
                    switch operation {
                    case .add, .remove, .replace:
                        continue
                    case .move, .copy, .test:
                        Issue.record("Unexpected operation: \(operation)")
                    }
                }
            }
        }
    }

    @Suite("Combining")
    struct Combining {

        static let base = JSON.Patch().add(1, to: ["a"])
        static let removeB: JSON.Patch.Operation = .remove(path: ["b"])
        static let testC: JSON.Patch.Operation = .test(path: ["c"], value: 3)
        static let combined: [JSON.Patch.Operation] = [.add(path: ["a"], value: 1), removeB, testC]

        @Test("appending returns a new patch with the operations appended")
        func appendingVariadic() {
            let patch = Combining.base.appending(Combining.removeB, Combining.testC)
            #expect(patch.operations == Combining.combined)
            // The original patch is left unchanged.
            #expect(Combining.base.operations == [.add(path: ["a"], value: 1)])
        }

        @Test("append mutates the patch in place with the operations appended")
        func appendVariadic() {
            var patch = Combining.base
            patch.append(Combining.removeB, Combining.testC)
            #expect(patch.operations == Combining.combined)
        }

        @Test("appending(contentsOf:) appends a collection of operations")
        func appendingCollection() {
            let patch = Combining.base.appending(contentsOf: [Combining.removeB, Combining.testC])
            #expect(patch.operations == Combining.combined)
        }

        @Test("append(contentsOf:) mutates in place with a collection of operations")
        func appendCollection() {
            var patch = Combining.base
            patch.append(contentsOf: [Combining.removeB, Combining.testC])
            #expect(patch.operations == Combining.combined)
        }

        @Test("appending(contentsOf:) concatenates another patch")
        func appendingPatch() {
            let other = JSON.Patch(operations: [Combining.removeB, Combining.testC])
            #expect(Combining.base.appending(contentsOf: other).operations == Combining.combined)
        }

        @Test("append(contentsOf:) concatenates another patch in place")
        func appendPatch() {
            var patch = Combining.base
            patch.append(contentsOf: JSON.Patch(operations: [Combining.removeB, Combining.testC]))
            #expect(patch.operations == Combining.combined)
        }

        @Test("Appending nothing leaves the operations unchanged")
        func appendingEmpty() {
            #expect(Combining.base.appending(contentsOf: [] as [JSON.Patch.Operation]) == Combining.base)
            #expect(Combining.base.appending(contentsOf: JSON.Patch()) == Combining.base)
        }
    }

    @Suite("Array Literal")
    struct ArrayLiteral {

        @Test("A patch can be expressed as an array literal of operations")
        func arrayLiteral() {
            let patch: JSON.Patch = [
                .add(path: ["a"], value: 1),
                .remove(path: ["b"]),
            ]
            #expect(patch == JSON.Patch(operations: [.add(path: ["a"], value: 1), .remove(path: ["b"])]))
        }

        @Test("An empty array literal is an empty patch")
        func emptyArrayLiteral() {
            let patch: JSON.Patch = []
            #expect(patch.isEmpty)
        }
    }

}
