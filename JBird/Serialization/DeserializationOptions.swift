// JBird
// DeserializationOptions.swift
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

extension JSON {

    /// The available options for JSON deserialization
    public struct DeserializationOptions: OptionSet, Equatable, Hashable, Sendable {

        /// Whether or not JSON keys with `null` values should be omitted from JSON objects when parsing
        ///
        /// When this option is enabled, keys with `null` values will not be included in the deserialized JSON object.
        ///
        /// For example, given the following JSON
        ///
        /// ```json
        /// {
        ///     "foo": "bar",
        ///     "baz": null,
        ///     "qux": [true, null]
        /// }
        /// ```
        ///
        /// Enabling this option would cause it to be deserialized like this:
        ///
        /// ```swift
        /// let data = Data( ... )
        /// let json = try JSON.value(for: data)
        /// #expect(json == [
        ///     "foo": "bar",
        ///     "qux": [true, nil, false]
        /// ]) // Key "baz" is omitted because it has a null value
        /// ```
        public static let omitNullKeys = DeserializationOptions(rawValue: 1 << 0)

        /// Whether or not `null` values should be omitted when parsing
        ///
        /// When this option is enabled, `null` values will not be included in the deserialized JSON array or JSON objects.
        ///
        /// For example, given the following JSON
        ///
        /// ```json
        /// {
        ///     "foo": "bar",
        ///     "baz": null,
        ///     "qux": [true, null]
        /// }
        /// ```
        ///
        /// Enabling this option would cause it to be deserialized like this:
        ///
        /// ```swift
        /// let data = Data( ... )
        /// let json = try JSON.value(for: data)
        /// #expect(json == [
        ///     "foo": "bar",
        ///     "qux": [true, false]
        /// ]) // Key "baz" is omitted because it has a null value, null values striped from array in key "qux".
        /// ```
        public static let omitNullValues = DeserializationOptions(rawValue: 1 << 1)

        /// Whether or not the root value is allowed to be a fragment
        ///
        /// When this option is enabled, the deserialized JSON can be a fragment, rather than a complete JSON object or array.
        /// If you attempt to deserialize JSON who's root element is not a complete JSON object or JSON array, an error is thrown.
        public static let fragmentsAllowed = DeserializationOptions(rawValue: 1 << 2)

        /// Whether or not the the deserialized JSON is allowed to contain a UTF-8 byte order mark
        ///
        /// When this option is enabled, the deserialized JSON can start with a UTF-8 byte order mark (BOM).
        /// If you attempt to JSON that contains a UTF-8 byte order mark without this option enabled, an error is throw
        public static let allowByteOrderMark = DeserializationOptions(rawValue: 1 << 3)

        /// Whether or not the deserialized JSON is allowed to contain insignificant whitespace
        ///
        /// When this option is enabled, the deserialized JSON may not contain insignificant whitespace, such as spaces and newlines.
        /// If you attempt to deserialize JSON that contains insignificant whitespace when this option is enabled, an error is thrown.
        public static let requireMinified = DeserializationOptions(rawValue: 1 << 4)

        /// Ignore the actively configured recursion depth limit.
        ///
        /// When this option is enabled, the deserialization will not be limited by the configured recursion depth limit.
        /// This can be useful for deserializing deeply nested JSON structures, but may lead to excessive memory usage or stack overflow if the JSON is too deeply nested.
        public static let ignoreRecursionDepthLimit = DeserializationOptions(rawValue: 1 << 5)

        /// Ignore the actively configured input size limit
        ///
        /// When this option is enabled, the deserialization will not be limited by the configured input size limit.
        /// This can be useful for deserializing large JSON payloads, but may lead to excessive memory usage if the JSON is too large.
        public static let ignoreInputSizeLimit = DeserializationOptions(rawValue: 1 << 6)

        /// Require that all keys in JSON objects are unique
        ///
        /// By default, duplicate keys are allowed, and the last occurrence of a key will be used.
        /// When this option is enabled, the deserialization will fail if any duplicate keys are found in JSON objects.
        ///
        /// - Note: The use of this option can impact parser performance, especially for large JSON objects with many keys.
        public static let requireUniqueKeys = DeserializationOptions(rawValue: 1 << 7)

        /// The default set of options
        public static let `default`: DeserializationOptions = [.fragmentsAllowed, .allowByteOrderMark]

        // MARK: - OptionSet

        public init(rawValue: Int) {
            self.rawValue = rawValue
        }

        public let rawValue: Int

    }

}
