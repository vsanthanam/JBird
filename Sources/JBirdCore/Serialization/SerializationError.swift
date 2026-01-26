// JBird
// SerializationError.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// An error thrown when serializing ``JSON`` into a Swift string or UTF-8 encoded byte buffer
    public enum SerializationError: Error, Equatable, Sendable, CustomStringConvertible {

        // MARK: - API

        /// Thrown when serializing an invalid floating point value, e.g. infinity
        case invalidFloat

        /// Thrown when attempting to serialize a leaf JSON fragment without options that allow it
        case illegalFragment

        /// Thrown when the serialized JSON bytes cannnot be represented as a Swift string.
        /// You should effectively never run into this error, it suggests that there is bug in the library.
        case stringMaterialization

        // MARK: - CustomStringConvertible

        public var description: String {
            switch self {
            case .invalidFloat:
                "Invalid floating point value"
            case .illegalFragment:
                "Attemped to serialize a JSON fragment without required `fragmentsAllowed` option"
            case .stringMaterialization:
                "Couldn't convert JSON bytes into a Swift string"
            }
        }

    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
@available(*, deprecated, renamed: "JSON.SerializationError")
public typealias JSONSerializationError = JSON.SerializationError
