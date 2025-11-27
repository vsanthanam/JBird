// JBird
// SerializationOptions.swift
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

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSON {

    /// The availabile options when serializing a `JSON` value into a byte buffer or Swift string
    public struct SerializationOptions: OptionSet, Equatable, Hashable, Sendable {

        // MARK: - API

        /// Whether or not the serialized JSON should include additional whitespace to improve readability
        ///
        /// When this option is enabled, the serialized JSON will be formatted with indentation and newlines.
        public static let prettyPrinted = SerializationOptions(rawValue: 1 << 0)

        /// Whether or not JSON keys with `null` values should be omitted from the resulting JSON
        ///
        /// When this option is enabled, keys with `null` values will not be included in the serialized JSON object.
        public static let omitNullKeys = SerializationOptions(rawValue: 1 << 1)

        /// Whether or not `null` values should be omitted from the resulting JSON
        ///
        /// When this option is enabled, `null` values will not be included in the serialized JSON array or JSON objects.
        public static let omitNullValues = SerializationOptions(rawValue: 1 << 2)

        /// Whether or not JSON keys should be sorted alphabetically
        ///
        /// When this option is enabled, the keys in JSON objects will be sorted alphabetically before serialization.
        public static let sortedKeys = SerializationOptions(rawValue: 1 << 3)

        /// Whether or not non-root JSON should be allowed
        ///
        /// When this option is enabled, the serialized JSON can be a fragment, rather than a complete JSON object or array.
        public static let fragmentsAllowed = SerializationOptions(rawValue: 1 << 4)

        /// Whether or not the serialized JSON should contain a UTF-8 byte order mark
        ///
        /// When this option is enabled, the serialized JSON will start with a UTF-8 byte order mark (BOM).
        public static let includeByteOrderMark = SerializationOptions(rawValue: 1 << 5)

        /// Whether or not to escape characters outside the ASCII range.
        ///
        /// When this option is enabled, characters with Unicode code points greater than 127 will be escaped in the serialized JSON.
        /// This can be useful for ensuring compatibility with systems that do not support non-ASCII characters.
        public static let escapeNonASCII = SerializationOptions(rawValue: 1 << 6)

        /// Whether or not characters outside the basic multi-lingual plane should be escaped
        ///
        /// When this option is enabled, characters with Unicode code points greater than `65535` will be escaped in the serialized JSON.
        /// This can be useful for ensuring compatibility with systems that do not support characters outside the basic multilingual plane.
        public static let escapeSpecialCharacters = SerializationOptions(rawValue: 1 << 7)

        /// Whether or not to escape the forward slash character
        ///
        /// When this option is enabled, the forward slash character (`/`) will be escaped as `\/` in the serialized JSON.
        /// This can be useful for preventing issues with certain parsers that may misinterpret the forward slash.
        public static let escapeForwardSlash = SerializationOptions(rawValue: 1 << 8)

        /// The default set of options
        public static let `default`: SerializationOptions = [.fragmentsAllowed, .escapeSpecialCharacters]

        // MARK: - OptionSet

        public init(rawValue: Int) {
            self.rawValue = rawValue
        }

        public let rawValue: Int

    }

}
