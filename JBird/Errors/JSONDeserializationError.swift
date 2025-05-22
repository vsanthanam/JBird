// JBird
// JSONDeserializationError.swift
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

import Foundation

/// An error thrown when deserialzing a Swift string or UTF-8 encoded byte buffer
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public enum JSONDeserializationError: Error, LocalizedError, Equatable, Sendable, CustomStringConvertible {

    // MARK: - Cases

    /// Thrown when a malformed JSON payload is deserialized
    case parseFailure(String)

    /// Thrown when an unknown error occurs during deserialization
    case illegalFragment

    /// An unknown deserialization error
    case unknown

    // MARK: - CustomStringConvertible

    public var description: String {
        switch self {
        case let .parseFailure(message):
            "JSON Parse error: \(message)"
        case .illegalFragment:
            "JSON fragment cannot be deserialized"
        case .unknown:
            "Unknown deserialization error"
        }
    }

    // MARK: - LocalizedError

    public var errorDescription: String? {
        description
    }

}
