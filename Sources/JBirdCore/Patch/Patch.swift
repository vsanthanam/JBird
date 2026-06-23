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

    /// Applies the operations in `patch` to this JSON value, in order.
    ///
    /// The patch is applied atomically: if any operation fails, an error is thrown and this value is
    /// left unchanged.
    /// - Parameter patch: The patch to apply.
    /// - Throws: An ``OperationError`` if any operation cannot be applied, or a ``PatchError`` if a
    ///   `test`, `move`, or `remove` operation fails its preconditions.
    public mutating func apply(
        _ patch: Patch
    ) throws {
        self = try applying(patch)
    }

    /// Returns a copy of this JSON value with the operations in `patch` applied, in order.
    ///
    /// The patch is applied atomically: if any operation fails, an error is thrown and no value is
    /// returned.
    /// - Parameter patch: The patch to apply.
    /// - Returns: A new JSON value with the patch applied.
    /// - Throws: An ``OperationError`` if any operation cannot be applied, or a ``PatchError`` if a
    ///   `test`, `move`, or `remove` operation fails its preconditions.
    public func applying(
        _ patch: Patch
    ) throws -> JSON {
        var result = self
        for operation in patch.operations {
            try result.apply(operation)
        }
        return result
    }

    /// Returns a patch that transforms this value into another.
    ///
    /// This is the difference between the receiver and `other`, expressed as a ``JSON/Patch``. Applying
    /// the result to the receiver reproduces `other`:
    ///
    /// ```swift
    /// let patch = source.difference(to: target)
    /// try source.applying(patch) == target // true
    /// ```
    ///
    /// See ``JSON/Patch/init(from:to:)`` for the details of how the patch is computed.
    ///
    /// - Parameter other: The value the returned patch transforms this value into.
    /// - Returns: A patch describing the difference between this value and `other`.
    public func difference(
        to other: JSON
    ) -> Patch {
        Patch(
            from: self,
            to: other
        )
    }

    /// A sequence of operations describing a change to a JSON document.
    public struct Patch: Equatable, Hashable, Sendable, Codable, ExpressibleByArrayLiteral, JSONRepresentable {

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

        /// Create a patch that transforms one JSON value into another.
        ///
        /// The returned patch describes the difference between `source` and `target` as a sequence of
        /// operations. Applying it to `source` reproduces `target`:
        ///
        /// ```swift
        /// let patch = JSON.Patch(from: source, to: target)
        /// try source.applying(patch) == target // true
        /// ```
        ///
        /// The patch is computed structurally and deterministically:
        ///
        /// - Objects are compared key by key. Keys that disappear become `remove` operations, keys that
        ///   appear become `add` operations, and keys present in both are diffed recursively. Keys are
        ///   processed in sorted order so the result does not depend on the objects' storage order.
        /// - Arrays are aligned with a longest-common-subsequence diff: unchanged elements are matched,
        ///   inserted elements become `add` operations, deleted elements become `remove` operations, and an
        ///   element that changed in place is diffed recursively. Operation indices account for the shifts
        ///   that earlier insertions and removals introduce, so an element inserted at the front costs a
        ///   single `add` rather than rewriting the whole array.
        /// - Any other change — a differing scalar, or a change of JSON type — becomes a single `replace`
        ///   operation at that location.
        ///
        /// The patch contains only `add`, `remove`, and `replace` operations; it never emits `move`, `copy`,
        /// or `test`. Equality follows ``JSON`` value equality, so the diff of two equal values is the empty
        /// patch. Because relocations are expressed as a `remove` plus an `add` rather than a `move`, a patch
        /// for reordered array elements is correct and compact but may not be the theoretical minimum.
        ///
        /// - Parameters:
        ///   - source: The value the patch transforms from.
        ///   - target: The value the patch transforms into.
        public init(
            from source: JSON,
            to target: JSON
        ) {
            self = Patch.calculateDifference(
                from: source,
                to: target,
                at: .wholeDocument
            )
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if `pointer` is not a valid JSON Pointer string.
        public func add(
            _ value: some JSONConvertible,
            to pointer: some StringProtocol
        ) throws -> Patch {
            let pointer = try JSON.Pointer(pointer)
            return add(
                value,
                to: pointer
            )
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if `pointer` is not a valid JSON Pointer string.
        public func remove(
            at pointer: some StringProtocol
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if `pointer` is not a valid JSON Pointer string.
        public func replace(
            at pointer: some StringProtocol,
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if either `origin` or `destination` is not a valid JSON Pointer string.
        public func move(
            from origin: some StringProtocol,
            to destination: some StringProtocol
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if either `origin` or `destination` is not a valid JSON Pointer string.
        public func copy(
            from origin: some StringProtocol,
            to destination: some StringProtocol
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
            appending(
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
        /// - Throws: A ``JSON/PointerError`` if `pointer` is not a valid JSON Pointer string.
        public func test(
            for value: some JSONConvertible,
            at pointer: some StringProtocol
        ) throws -> Patch {
            let path = try JSON.Pointer(pointer)
            return test(
                for: value,
                at: path
            )
        }

        /// Returns a new patch with one or more operations appended.
        ///
        /// - Parameter operations: The operations to append, in the order they are applied.
        /// - Returns: A new patch containing this patch's operations followed by `operations`.
        public func appending(
            _ operations: Operation...
        ) -> Patch {
            .init(operations: self.operations + operations)
        }

        /// Appends one or more operations to the patch in place.
        ///
        /// - Parameter operations: The operations to append, in the order they are applied.
        public mutating func append(
            _ operations: Operation...
        ) {
            self = appending(contentsOf: operations)
        }

        /// Returns a new patch with the operations of a collection appended.
        ///
        /// - Parameter operations: The operations to append, in the order they are applied.
        /// - Returns: A new patch containing this patch's operations followed by `operations`.
        public func appending(
            contentsOf operations: some Collection<Operation>
        ) -> Patch {
            .init(operations: self.operations + Swift.Array(operations))
        }

        /// Appends the operations of a collection to the patch in place.
        ///
        /// - Parameter operations: The operations to append, in the order they are applied.
        public mutating func append(
            contentsOf operations: some Collection<Operation>
        ) {
            self = appending(contentsOf: operations)
        }

        /// Returns a new patch with the operations of another patch appended.
        ///
        /// - Parameter patch: The patch whose operations to append.
        /// - Returns: A new patch containing this patch's operations followed by `patch`'s operations.
        public func appending(
            contentsOf patch: Patch
        ) -> Patch {
            appending(contentsOf: patch.operations)
        }

        /// Appends the operations of another patch to this patch in place.
        ///
        /// - Parameter patch: The patch whose operations to append.
        public mutating func append(
            contentsOf patch: Patch
        ) {
            self = appending(contentsOf: patch)
        }

        // MARK: - ExpressibleByArrayLiteral

        /// The element type used when creating a patch from an array literal: a single ``Operation``.
        public typealias ArrayLiteralElement = Operation

        /// Create a patch from an array literal of operations.
        ///
        /// - Parameter elements: The operations the patch should contain, in the order they are applied.
        public init(
            arrayLiteral elements: ArrayLiteralElement...
        ) {
            self.init(operations: elements)
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

        private static func calculateDifference(
            from source: JSON,
            to target: JSON,
            at path: JSON.Pointer
        ) -> Patch {
            if source == target {
                return []
            }
            switch (source, target) {
            case let (.object(source), .object(target)):
                return objectDifference(
                    from: source,
                    to: target,
                    at: path
                )
            case let (.array(source), .array(target)):
                return arrayDifference(
                    from: source,
                    to: target,
                    at: path
                )
            default:
                return Patch().replace(
                    at: path,
                    with: target
                )
            }
        }

        private static func objectDifference(
            from source: JSON.Object,
            to target: JSON.Object,
            at path: JSON.Pointer
        ) -> Patch {
            var patch = Patch()
            for key in source.keys.sorted() where target[key] == nil {
                patch.append(
                    .remove(path: path.appending(key))
                )
            }
            for key in target.keys.sorted() {
                let childPath = path.appending(key)
                if let existing = source[key] {
                    patch.append(
                        contentsOf: calculateDifference(
                            from: existing,
                            to: target[key]!,
                            at: childPath
                        )
                    )
                } else {
                    patch.append(
                        .add(
                            path: childPath,
                            value: target[key]!
                        )
                    )
                }
            }
            return patch
        }

        private static func arrayDifference(
            from source: Array,
            to target: JSON.Array,
            at path: JSON.Pointer
        ) -> Patch {
            let edits = arrayEdits(from: source, to: target)
            var patch = Patch()
            var cursor = 0
            var index = 0
            while index < edits.count {
                if case let .common(sourceIndex, targetIndex) = edits[index] {
                    patch.append(
                        contentsOf: calculateDifference(
                            from: source[sourceIndex],
                            to: target[targetIndex],
                            at: path.appending(String(cursor))
                        )
                    )
                    cursor += 1
                    index += 1
                    continue
                }
                var removed = [Int]()
                var added = [Int]()
                gap: while index < edits.count {
                    switch edits[index] {
                    case let .removed(sourceIndex):
                        removed.append(sourceIndex)
                    case let .added(targetIndex):
                        added.append(targetIndex)
                    case .common:
                        break gap
                    }
                    index += 1
                }

                let paired = min(removed.count, added.count)
                for offset in 0 ..< paired {
                    patch.append(
                        contentsOf: calculateDifference(
                            from: source[removed[offset]],
                            to: target[added[offset]],
                            at: path.appending(String(cursor))
                        )
                    )
                    cursor += 1
                }
                if removed.count > added.count {
                    for _ in paired ..< removed.count {
                        patch.append(
                            .remove(
                                path: path.appending(String(cursor))
                            )
                        )
                    }
                } else {
                    for offset in paired ..< added.count {
                        patch.append(
                            .add(
                                path: path.appending(String(cursor)),
                                value: target[added[offset]]
                            )
                        )
                        cursor += 1
                    }
                }
            }
            return patch
        }

        private enum ArrayEdit {
            case common(source: Int, target: Int)
            case removed(source: Int)
            case added(target: Int)
        }

        private static func arrayEdits(
            from source: JSON.Array,
            to target: JSON.Array
        ) -> [ArrayEdit] {
            let sourceCount = source.count
            let targetCount = target.count

            let sourceHashes = source.map(\.hashValue)
            let targetHashes = target.map(\.hashValue)

            func equal(
                _ sourceIndex: Int,
                _ targetIndex: Int
            ) -> Bool {
                sourceHashes[sourceIndex] == targetHashes[targetIndex] && source[sourceIndex] == target[targetIndex]
            }

            var lengths = [[Int]](
                repeating: [Int](repeating: 0, count: targetCount + 1),
                count: sourceCount + 1
            )

            if sourceCount > 0, targetCount > 0 {
                for sourceIndex in stride(
                    from: sourceCount - 1,
                    through: 0,
                    by: -1
                ) {
                    for targetIndex in stride(
                        from: targetCount - 1,
                        through: 0,
                        by: -1
                    ) {
                        if equal(sourceIndex, targetIndex) {
                            lengths[sourceIndex][targetIndex] = lengths[sourceIndex + 1][targetIndex + 1] + 1
                        } else {
                            lengths[sourceIndex][targetIndex] = max(lengths[sourceIndex + 1][targetIndex], lengths[sourceIndex][targetIndex + 1])
                        }
                    }
                }
            }

            var edits = [ArrayEdit]()

            var sourceIndex = 0
            var targetIndex = 0
            while sourceIndex < sourceCount, targetIndex < targetCount {
                if equal(sourceIndex, targetIndex) {
                    edits.append(
                        .common(
                            source: sourceIndex,
                            target: targetIndex
                        )
                    )
                    sourceIndex += 1
                    targetIndex += 1
                } else if lengths[sourceIndex + 1][targetIndex] >= lengths[sourceIndex][targetIndex + 1] {
                    edits.append(.removed(source: sourceIndex))
                    sourceIndex += 1
                } else {
                    edits.append(.added(target: targetIndex))
                    targetIndex += 1
                }
            }
            while sourceIndex < sourceCount {
                edits.append(.removed(source: sourceIndex))
                sourceIndex += 1
            }
            while targetIndex < targetCount {
                edits.append(.added(target: targetIndex))
                targetIndex += 1
            }
            return edits
        }

    }

    private mutating func apply(
        _ operation: Patch.Operation
    ) throws {
        switch operation {
        case let .add(path, value):
            try addValue(value, atPointer: path)
        case let .remove(path):
            try removeValue(atPointer: path)
        case let .replace(path, value):
            _ = try self.value(atPointer: path)
            try setValue(value, atPointer: path)
        case let .move(from, path):
            try moveValue(from: from, to: path)
        case let .copy(from, path):
            let value = try self.value(atPointer: from)
            try addValue(value, atPointer: path)
        case let .test(path, value):
            let actual = try self.value(atPointer: path)
            guard JSON.patchEqual(actual, value) else {
                throw PatchError.patchTestFailed(path)
            }
        }
    }

    /// [RFC 6902 §4.6](https://datatracker.ietf.org/doc/html/rfc6902#section-4.6) equality, used by the
    /// `test` operation.
    ///
    /// This deliberately differs from `JSON` value equality (`==`) in how it compares strings. Swift's
    /// `String` equality — which `JSON` relies on — treats canonically equivalent strings
    /// as equal (for example the precomposed `"é"`, `U+00E9`, and the decomposed `"e"` + combining acute,
    /// `U+0065 U+0301`).
    ///
    /// RFC 6902 instead requires the code point sequences to match exactly, so strings are
    /// compared here by their Unicode scalars. Because ``JSON`` is an in-memory model rather than a serialized
    /// payload, "code points" means the value's Unicode scalar sequence, not the bytes of any encoding.
    ///
    /// Numbers keep numeric equality (`42` equals `42.0`), and arrays and objects are compared recursively.
    ///
    /// - Note: Object *keys* are stored in a Swift `Dictionary`, whose canonical `String` hashing collapses
    ///   canonically equivalent keys as the object is built — so that distinction is already lost before this
    ///   comparison runs. Only string *values* (including those nested inside arrays and objects) receive
    ///   code-point-exact treatment.
    private static func patchEqual(
        _ lhs: JSON,
        _ rhs: JSON
    ) -> Bool {
        switch (lhs, rhs) {
        case let (.string(lhs), .string(rhs)):
            lhs.unicodeScalars.elementsEqual(rhs.unicodeScalars)
        case let (.array(lhs), .array(rhs)):
            lhs.count == rhs.count && zip(lhs, rhs).allSatisfy { patchEqual($0, $1) }
        case let (.object(lhs), .object(rhs)):
            lhs.count == rhs.count && lhs.allSatisfy { key, value in
                guard let other = rhs[key] else {
                    return false
                }
                return patchEqual(value, other)
            }
        default:
            lhs == rhs
        }
    }

    private mutating func moveValue(
        from: JSON.Pointer,
        to path: JSON.Pointer
    ) throws {
        let value = try self.value(atPointer: from)
        // A location cannot be moved into one of its own descendants.
        let fromTokens = from.tokens
        let toTokens = path.tokens
        if fromTokens.count < toTokens.count,
           toTokens.starts(with: fromTokens) {
            throw PatchError.invalidPatchMove(from)
        }
        try removeValue(atPointer: from)
        try addValue(
            value,
            atPointer: path
        )
    }

    private mutating func addValue(
        _ json: JSON,
        atPointer pointer: JSON.Pointer
    ) throws {
        try addValue(
            json,
            tokens: pointer.tokens
        )
    }

    private mutating func addValue(
        _ json: JSON,
        tokens: some Collection<JSON.Pointer.Token>
    ) throws {
        guard let token = tokens.first else {
            self = json
            return
        }
        let rest = tokens.dropFirst()
        if rest.isEmpty {
            switch self {
            case var .object(object):
                object[token] = json
                self = .object(object)
            case var .array(array):
                let index = try JSON.arrayInsertionIndex(
                    for: token,
                    count: array.count
                )
                array.insert(json, at: index)
                self = .array(array)
            case .bool, .null, .number, .string:
                throw OperationError.invalidSubscript(.key(token))
            }
        } else {
            try mutatingChild(at: token) { child in
                try child.addValue(
                    json,
                    tokens: rest
                )
            }
        }
    }

    private static func arrayInsertionIndex(
        for token: JSON.Pointer.Token,
        count: Int
    ) throws -> Int {
        if token == "-" {
            return count
        }
        guard let index = JSON.Pointer.index(for: token) else {
            throw OperationError.invalidSubscript(.key(token))
        }
        guard index <= count else {
            throw OperationError.indexOutOfBounds(index)
        }
        return index
    }

}
