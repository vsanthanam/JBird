// JBird
// PatchOperationTests.swift
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

@Suite("Patch Operation Tests")
struct PatchOperationTests {

    /// Each of the six operations paired with its canonical RFC 6902 JSON object form.
    static let operations: [(name: String, operation: JSON.Patch.Operation, json: JSON)] = [
        ("add", .add(path: ["foo"], value: 1), ["op": "add", "path": "/foo", "value": 1]),
        ("remove", .remove(path: ["foo"]), ["op": "remove", "path": "/foo"]),
        ("replace", .replace(path: ["foo"], value: 2), ["op": "replace", "path": "/foo", "value": 2]),
        ("move", .move(from: ["a"], path: ["b"]), ["op": "move", "from": "/a", "path": "/b"]),
        ("copy", .copy(from: ["a"], path: ["b"]), ["op": "copy", "from": "/a", "path": "/b"]),
        ("test", .test(path: ["foo"], value: 3), ["op": "test", "path": "/foo", "value": 3]),
    ]

    @Suite("JSON Conversion")
    struct JSONConversion {

        @Test("jsonValue produces the RFC 6902 object", arguments: PatchOperationTests.operations)
        func jsonValue(name: String, operation: JSON.Patch.Operation, json: JSON) {
            #expect(operation.jsonValue == json)
        }

        @Test("init(json:) decodes the operation", arguments: PatchOperationTests.operations)
        func initFromJSON(name: String, operation: JSON.Patch.Operation, json: JSON) throws {
            #expect(try JSON.Patch.Operation(json: json) == operation)
        }

        @Test("Round-trips through its jsonValue", arguments: PatchOperationTests.operations)
        func roundTrip(name: String, operation: JSON.Patch.Operation, json: JSON) throws {
            #expect(try JSON.Patch.Operation(json: operation.jsonValue) == operation)
        }
    }

    @Suite("Codable")
    struct Codable {

        @Test("Round-trips through Codable", arguments: PatchOperationTests.operations)
        func roundTrip(name: String, operation: JSON.Patch.Operation, json: JSON) throws {
            let data = try JSONEncoder().encode(operation)
            #expect(try JSONDecoder().decode(JSON.Patch.Operation.self, from: data) == operation)
        }

        @Test("Encodes to the RFC 6902 object", arguments: PatchOperationTests.operations)
        func encodedShape(name: String, operation: JSON.Patch.Operation, json: JSON) throws {
            let data = try JSONEncoder().encode(operation)
            #expect(try JSONDecoder().decode(JSON.self, from: data) == json)
        }
    }

    @Suite("Decoding Failures")
    struct DecodingFailures {

        @Test("Unknown op throws invalidPatchOperation")
        func unknownOp() {
            #expect(throws: JSON.OperationError.invalidPatchOperation("bogus")) {
                try JSON.Patch.Operation(json: ["op": "bogus", "path": "/x"])
            }
        }

        @Test("Missing op throws keyNotFound")
        func missingOp() {
            #expect(throws: JSON.OperationError.keyNotFound("op")) {
                try JSON.Patch.Operation(json: ["path": "/x"])
            }
        }

        @Test("Non-object JSON throws invalidSubscript")
        func nonObject() {
            #expect(throws: JSON.OperationError.invalidSubscript(.key("op"))) {
                try JSON.Patch.Operation(json: "not an object")
            }
        }

        @Test(
            "Missing required members throw keyNotFound",
            arguments: [
                (["op": "add", "path": "/x"], "value"),
                (["op": "add", "value": 1], "path"),
                (["op": "remove"], "path"),
                (["op": "replace", "path": "/x"], "value"),
                (["op": "move", "path": "/x"], "from"),
                (["op": "copy", "path": "/x"], "from"),
                (["op": "test", "path": "/x"], "value"),
            ] as [(json: JSON, missingKey: String)]
        )
        func missingMember(json: JSON, missingKey: String) {
            #expect(throws: JSON.OperationError.keyNotFound(missingKey)) {
                try JSON.Patch.Operation(json: json)
            }
        }

        @Test("Decoding malformed data throws")
        func decodeMalformed() {
            #expect(throws: (any Error).self) {
                try JSONDecoder().decode(JSON.Patch.Operation.self, from: Data(#"{"op":"bogus"}"#.utf8))
            }
        }
    }
}
