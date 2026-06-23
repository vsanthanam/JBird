// JBird
// PatchError.swift
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

    public enum PatchError: Error, Equatable, Sendable, CustomStringConvertible {

        // MARK: - Cases

        /// Thrown when attempting to remove the whole document via a JSON Pointer.
        case cannotRemoveWholeDocument

        /// Thrown when a JSON value cannot be decoded into a JSON Patch operation.
        case invalidPatchOperation(String)

        /// Thrown when a JSON Patch `test` operation does not match the value at its location.
        case patchTestFailed(JSON.Pointer)

        /// Thrown when a JSON Patch `move` operation targets a descendant of the value being moved.
        case invalidPatchMove(JSON.Pointer)

        // MARK: - CustomStringConvertible

        public var description: String {
            switch self {
            case .cannotRemoveWholeDocument:
                "Cannot remove the whole document with a JSON Pointer"
            case let .invalidPatchOperation(op):
                "Invalid JSON Patch operation '\(op)'"
            case let .patchTestFailed(pointer):
                "JSON Patch test failed at '\(pointer)'"
            case let .invalidPatchMove(pointer):
                "Cannot move the value at '\(pointer)' into one of its own descendants"
            }
        }

    }

}
