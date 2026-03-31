// JBird
// CamelCaseCodingKey.swift
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
struct CamelCaseCodingKey: CodingKey {

    // MARK: - Initializers

    init(_ key: String) {

        func convertFromSnakeCase(
            _ stringKey: String
        ) -> String {
            guard !stringKey.isEmpty else {
                return stringKey
            }

            guard let firstNonUnderscore = stringKey.firstIndex(where: { $0 != "_" }),
                  let lastNonUnderscore = stringKey.lastIndex(where: { $0 != "_" })
            else {
                return stringKey
            }

            let keyRange = firstNonUnderscore...lastNonUnderscore
            let leadingUnderscores = stringKey[..<firstNonUnderscore]
            let trailingUnderscores = stringKey[stringKey.index(after: lastNonUnderscore)...]
            let components = stringKey[keyRange].split(separator: "_")
            guard components.count > 1 else {
                return stringKey
            }

            var result = String()
            result.reserveCapacity(stringKey.count)
            result.append(contentsOf: leadingUnderscores)

            if let first = components.first {
                result.append(contentsOf: first.lowercased())
            }

            for component in components.dropFirst() {
                result.append(contentsOf: component.prefix(1).uppercased())
                result.append(contentsOf: component.dropFirst().lowercased())
            }

            result.append(contentsOf: trailingUnderscores)
            return result
        }
        self.stringValue = convertFromSnakeCase(key)
    }

    // MARK: - CodingKey

    init?(stringValue: String) {
        nil
    }

    init?(intValue: Int) {
        nil
    }

    let intValue: Int? = nil

    let stringValue: String

}
