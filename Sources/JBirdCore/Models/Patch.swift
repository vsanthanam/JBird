// JBird
// Patch.swift
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
extension JSON {

    /// A sequence of operations describing a change to a JSON document.
    public struct Patch: Equatable, Hashable, Sendable, Codable, JSONRepresentable {

        // MARK: - Initializers

        /// Create a patch from a list of operations.
        ///
        /// - Parameter operations: The operations the patch should contain, in the order they are applied.
        ///   Defaults to an empty patch.
        public init(
            operations: [Operation] = []
        ) {
            self.operations = operations
        }

        // MARK: - API

        /// The operations contained in the patch, in the order they are applied.
        public let operations: [Operation]

        /// Whether or not the patch contains any operations.
        public var isEmpty: Bool {
            operations.isEmpty
        }

        /// Returns a new patch with an `add` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.1) for more information.
        ///
        /// - Parameters:
        ///   - value: The value to add.
        ///   - pointer: The location to add the value.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func add(
            _ value: some JSONConvertible,
            to pointer: JSON.Pointer
        ) -> Patch {
            withOperation(
                .add(
                    path: pointer,
                    value: JSON(value)
                )
            )
        }

        /// Returns a new patch with an `add` operation appended, addressing the location with a JSON Pointer string.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.1) for more information.
        ///
        /// - Parameters:
        ///   - value: The value to add.
        ///   - pointer: The location to add the value, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if `pointer` is not a valid JSON Pointer string.
        public func add(
            _ value: some JSONConvertible,
            to pointer: String
        ) throws -> Patch {
            let pointer = try JSON.Pointer(pointer)
            return add(value, to: pointer)
        }

        /// Returns a new patch with a `remove` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.2) for more information.
        ///
        /// - Parameter pointer: The location of the value to remove.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func remove(
            at pointer: JSON.Pointer
        ) -> Patch {
            withOperation(
                .remove(
                    path: pointer
                )
            )
        }

        /// Returns a new patch with a `remove` operation appended, addressing the location with a JSON Pointer string.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.2) for more information.
        ///
        /// - Parameter pointer: The location of the value to remove, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if `pointer` is not a valid JSON Pointer string.
        public func remove(
            at pointer: String
        ) throws -> Patch {
            let path = try JSON.Pointer(pointer)
            return remove(at: path)
        }

        /// Returns a new patch with a `replace` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.3) for more information.
        ///
        /// - Parameters:
        ///   - pointer: The location of the value to replace.
        ///   - value: The replacement value.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func replace(
            at pointer: JSON.Pointer,
            with value: some JSONConvertible
        ) -> Patch {
            withOperation(
                .replace(
                    path: pointer,
                    value: JSON(value)
                )
            )
        }

        /// Returns a new patch with a `replace` operation appended, addressing the location with a JSON Pointer string.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.3) for more information.
        ///
        /// - Parameters:
        ///   - pointer: The location of the value to replace, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        ///   - value: The replacement value.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if `pointer` is not a valid JSON Pointer string.
        public func replace(
            at pointer: String,
            with value: some JSONConvertible
        ) throws -> Patch {
            let pointer = try JSON.Pointer(pointer)
            return replace(
                at: pointer,
                with: JSON(value)
            )
        }

        /// Returns a new patch with a `move` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.4) for more information.
        /// - Parameters:
        ///   - origin: The location of the value to move.
        ///   - destination: The location to move the value to.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func move(
            from origin: JSON.Pointer,
            to destination: JSON.Pointer
        ) -> Patch {
            withOperation(
                .move(
                    from: origin,
                    path: destination
                )
            )
        }

        /// Returns a new patch with a `move` operation appended, addressing the locations with JSON Pointer strings.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.4) for more information.
        ///
        /// - Parameters:
        ///   - origin: The location of the value to move, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        ///   - destination: The location to move the value to, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if either `origin` or `destination` is not a valid JSON Pointer string.
        public func move(
            from origin: String,
            to destination: String
        ) throws -> Patch {
            let from = try JSON.Pointer(origin)
            let path = try JSON.Pointer(destination)
            return move(
                from: from,
                to: path
            )
        }

        /// Returns a new patch with a `copy` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.5) for more information.
        /// - Parameters:
        ///   - origin: The location of the value to copy.
        ///   - destination: The location to copy the value to.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func copy(
            from origin: JSON.Pointer,
            to destination: JSON.Pointer
        ) -> Patch {
            withOperation(
                .copy(
                    from: origin,
                    path: destination
                )
            )
        }

        /// Returns a new patch with a `copy` operation appended, addressing the locations with JSON Pointer strings.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.5) for more information.
        ///
        /// - Parameters:
        ///   - origin: The location of the value to copy, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        ///   - destination: The location to copy the value to, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if either `origin` or `destination` is not a valid JSON Pointer string.
        public func copy(
            from origin: String,
            to destination: String
        ) throws -> Patch {
            let from = try JSON.Pointer(origin)
            let path = try JSON.Pointer(destination)
            return copy(
                from: from,
                to: path
            )
        }

        /// Returns a new patch with a `test` operation appended.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6) for more information.
        /// - Parameters:
        ///   - value: The value the location is expected to contain.
        ///   - pointer: The location of the value to test.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        public func test(
            for value: some JSONConvertible,
            at pointer: JSON.Pointer
        ) -> Patch {
            withOperation(
                .test(
                    path: pointer,
                    value: JSON(value)
                )
            )
        }

        /// Returns a new patch with a `test` operation appended, addressing the location with a JSON Pointer string.
        ///
        /// See [the RFC](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6) for more information.
        ///
        /// - Parameters:
        ///   - value: The value the location is expected to contain.
        ///   - pointer: The location of the value to test, written as an [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) JSON Pointer string.
        /// - Returns: A new patch containing this patch's operations followed by the new operation.
        /// - Throws: A ``JSON/Pointer/DeserializationError`` if `pointer` is not a valid JSON Pointer string.
        public func test(
            for value: some JSONConvertible,
            at pointer: String
        ) throws -> Patch {
            let path = try JSON.Pointer(pointer)
            return test(
                for: value,
                at: path
            )
        }

        // MARK: - JSONConvertible

        public var jsonValue: JSON {
            JSON(operations)
        }

        // MARK: - JSONInitializable

        public init(json: JSON) throws {
            try self.init(operations: json.convert())
        }

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

        // MARK: - Private

        private func withOperation(
            _ operation: Operation
        ) -> Patch {
            .init(operations: operations + [operation])
        }

    }

}
