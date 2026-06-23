// JBird
// JSONInitializable.swift
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

/// A type that can be initialized from an external typed `JSON` value.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONInitializable {

    /// Create an instance of the type from an external typed `JSON` value.,
    /// - Parameter json: The `JSON` value use for the initializer
    init(json: JSON) throws

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONInitializable where Self: JSONNumberInitializable {

    public init(json: JSON) throws {
        let number = try json.numberValue
        self = try number.convert()
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Array: JSONInitializable where Element: JSONInitializable {

    public init(json: JSON) throws {
        self = try json.arrayValue.map(Element.init)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Dictionary: JSONInitializable where Key: JSONKeyInitializable, Value: JSONInitializable {

    public init(json: JSON) throws {
        self = try json.objectValue.reduce(into: Self()) { dictionary, pair in
            let (key, value) = pair
            try dictionary[Key(jsonKey: key)] = Value(json: value)
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONInitializable where Self: RawRepresentable, RawValue: JSONInitializable {

    public init(json: JSON) throws {
        let rawValue = try RawValue(json: json)
        guard let value = Self(rawValue: rawValue) else {
            throw JSON.OperationError.invalidRawRepresentable
        }
        self = value
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Optional: JSONInitializable where Wrapped: JSONInitializable {

    public init(json: JSON) throws {
        if json == nil {
            self = .none
        } else {
            self = try .some(Wrapped(json: json))
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Set: JSONInitializable where Element: JSONInitializable {

    public init(json: JSON) throws {
        try self.init(json.arrayValue.map(Element.init))
    }

}
