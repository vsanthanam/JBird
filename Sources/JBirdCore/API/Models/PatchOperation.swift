// JBird
// PatchOperation.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON.Patch {

    /// A single JSON Patch operation.
    ///
    /// Each case corresponds to one of the six operations defined by the specification and carries the
    /// ``JSON/Pointer`` locations and ``JSON`` values that operation requires.
    ///
    /// For more information, see [RFC 6902](https://datatracker.ietf.org/doc/html/rfc6902).
    public enum Operation: Equatable, Hashable, Sendable, Codable, JSONRepresentable {

        /// Add `value` at the location identified by `path`.
        ///
        /// See [RFC 6902 §4.1](https://datatracker.ietf.org/doc/html/rfc6902#section-4.1) for more information.
        /// - Parameters:
        ///   - path: The location to add the value.
        ///   - value: The value to add.
        case add(path: JSON.Pointer, value: JSON)

        /// Remove the value at the location identified by `path`.
        ///
        /// See [RFC 6902 §4.2](https://datatracker.ietf.org/doc/html/rfc6902#section-4.2) for more information.
        /// - Parameter path: The location of the value to remove.
        case remove(path: JSON.Pointer)

        /// Replace the value at the location identified by `path` with `value`.
        ///
        /// See [RFC 6902 §4.3](https://datatracker.ietf.org/doc/html/rfc6902#section-4.3) for more information.
        /// - Parameters:
        ///   - path: The location of the value to replace.
        ///   - value: The replacement value.
        case replace(path: JSON.Pointer, value: JSON)

        /// Move the value at `from` to the location identified by `path`.
        ///
        /// See [RFC 6902 §4.4](https://datatracker.ietf.org/doc/html/rfc6902#section-4.4) for more information.
        /// - Parameters:
        ///   - from: The location of the value to move.
        ///   - path: The location to move the value to.
        case move(from: JSON.Pointer, path: JSON.Pointer)

        /// Copy the value at `from` to the location identified by `path`.
        ///
        /// See [RFC 6902 §4.5](https://datatracker.ietf.org/doc/html/rfc6902#section-4.5) for more information.
        /// - Parameters:
        ///   - from: The location of the value to copy.
        ///   - path: The location to copy the value to.
        case copy(from: JSON.Pointer, path: JSON.Pointer)

        /// Test that the value at the location identified by `path` equals `value`.
        ///
        /// See [RFC 6902 §4.6](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6) for more information.
        /// - Parameters:
        ///   - path: The location of the value to test.
        ///   - value: The value the location is expected to contain.
        case test(path: JSON.Pointer, value: JSON)

        // MARK: - Encodable

        public func encode(
            to encoder: any Encoder
        ) throws {
            try jsonValue.encode(to: encoder)
        }

        // MARK: - Decodable

        public init(
            from decoder: any Decoder
        ) throws {
            let json = try JSON(from: decoder)
            try self.init(json: json)
        }

        // MARK: - JSONConvertible

        public var jsonValue: JSON {
            switch self {
            case let .add(path, value):
                [
                    "op": "add",
                    "path": JSON(path),
                    "value": value,
                ]
            case let .remove(path):
                [
                    "op": "remove",
                    "path": JSON(path),
                ]
            case let .replace(path, value):
                [
                    "op": "replace",
                    "path": JSON(path),
                    "value": value,
                ]
            case let .move(from, path):
                [
                    "op": "move",
                    "from": JSON(from),
                    "path": JSON(path),
                ]
            case let .copy(from, path):
                [
                    "op": "copy",
                    "from": JSON(from),
                    "path": JSON(path),
                ]
            case let .test(path, value):
                [
                    "op": "test",
                    "path": JSON(path),
                    "value": value,
                ]
            }
        }

        // MARK: - JSONInitializable

        public init(json: JSON) throws {
            let op = try json["op", as: String.self]
            switch op {
            case "add":
                self = try .add(
                    path: json["path"],
                    value: json["value"]
                )
            case "remove":
                self = try .remove(path: json["path"])
            case "replace":
                self = try .replace(
                    path: json["path"],
                    value: json["value"]
                )
            case "move":
                self = try .move(
                    from: json["from"],
                    path: json["path"]
                )
            case "copy":
                self = try .copy(
                    from: json["from"],
                    path: json["path"]
                )
            case "test":
                self = try .test(
                    path: json["path"],
                    value: json["value"]
                )
            default:
                throw JSON.OperationError.invalidPatchOperation(op)
            }
        }
    }

}
