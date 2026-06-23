// JBird
// SerializationOptions.swift
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

    /// The available options when serializing a `JSON` value into a byte buffer or Swift string
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

        /// Whether or not nonconforming floating-point numbers such as `NaN` or `Double.infinity` should be allowed in the serialized output.
        ///
        /// Non conforming floating point values (also known as [IEEE 754 exceptional values](https://en.wikipedia.org/wiki/IEEE_754) cannot be represented numerically in legal JSON.
        /// When this option enabled, the encoder will convert these values in to another legal JSON value instead of throwing an error, using the following rules:
        ///
        /// - `NaN` is represented as the JSON string `"NaN"`
        /// - Positive infinity is represented by the JSON string `"Infinity"`
        /// - Negative infinity is represented by the JSON string `"-Infinity"`.
        ///
        /// You can also choose to replace these values with a JSON `null` instead of using these stringified representations.
        /// To do that, enable this option along with the ``nullifyNonConformingFloatingPointValues`` option.
        public static let allowNonConformingFloatingPointValues = SerializationOptions(rawValue: 1 << 9)

        /// Whether or not floating point numbers that represent whole number should be truncated
        ///
        /// When this option is enabled, floating point values that represent whole numbers will have their decimal point and fractional digits will be removed from the serialized output.
        /// For example, values like `-5.0` and `1.0` will be serialized as `-5` and `1`, respectively.
        public static let truncateWholeFloatingPointValues = SerializationOptions(rawValue: 1 << 10)

        /// Whether or not nonconforming floating point values should be replaced with null
        ///
        /// When this option is enabled, nonconforming floating point values will be replaced with a JSON null literal instead of their stringified representations.
        /// This option also requires the presence of ``allowNonConformingFloatingPointValues`` in the bitmask
        /// The default behavior does not allow nonconforming values at all. If you do not also include ``allowNonConformingFloatingPointValues``, this option has no effect on the serialized output.
        public static let nullifyNonConformingFloatingPointValues = SerializationOptions(rawValue: 1 << 11)

        /// The default set of serialization options
        public static let `default`: SerializationOptions = [.fragmentsAllowed, .escapeSpecialCharacters]

        // MARK: - OptionSet

        /// Creates a serialization option set from its raw bitmask.
        /// - Parameter rawValue: The bitmask backing the option set.
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }

        /// The bitmask backing the option set.
        public let rawValue: Int

    }

}
