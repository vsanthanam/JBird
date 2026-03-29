// JBird
// JSONConvertible.swift
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

/// A type that can convert itself into a typed `JSON` instance.
@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
public protocol JSONConvertible {

    /// The `JSON` value representing this instance.
    var jsonValue: JSON { get }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONConvertible where Self: JSONNumberConvertible {

    public var jsonValue: JSON {
        let number = JSON.Number(self)
        return .number(number)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Array: JSONConvertible where Element: JSONConvertible {

    public var jsonValue: JSON {
        .array(map { element in JSON(element) })
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Dictionary: JSONConvertible where Key: JSONKeyConvertible, Value: JSONConvertible {

    public var jsonValue: JSON {
        let dict = reduce(into: JSON.Object()) { object, pair in
            let (key, value) = pair
            object[JSON.Key(key)] = JSON(value)
        }
        return .object(dict)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension JSONConvertible where Self: RawRepresentable, RawValue: JSONConvertible {

    public var jsonValue: JSON {
        JSON(rawValue)
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Optional: JSONConvertible where Wrapped: JSONConvertible {

    public var jsonValue: JSON {
        switch self {
        case .none:
            nil
        case let .some(wrapped):
            JSON(wrapped)
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension Set: JSONConvertible where Element: JSONConvertible {

    public var jsonValue: JSON {
        .array(map { element in JSON(element) })
    }

}
