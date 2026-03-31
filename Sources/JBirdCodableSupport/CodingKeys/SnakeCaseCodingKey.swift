// JBird
// SnakeCaseCodingKey.swift
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
struct SnakeCaseCodingKey: CodingKey {

    // MARK: - Initializers

    init(_ key: any CodingKey) {

        func camelCaseToSnakeCase(_ input: String) -> String {
            let bytes = Array(input.utf8)
            if bytes.isEmpty { return input }

            func isUpper(_ b: UInt8) -> Bool {
                (65...90).contains(b)
            }
            func isLower(_ b: UInt8) -> Bool {
                (97...122).contains(b)
            }
            func isDigit(_ b: UInt8) -> Bool {
                (48...57).contains(b)
            }

            var out = String()
            out.reserveCapacity(bytes.count + bytes.count / 4)

            @inline(__always)
            func appendLowercasedASCII(_ b: UInt8) {
                if isUpper(b) {
                    out.append(Character(UnicodeScalar(b + 32)))
                } else {
                    out.append(Character(UnicodeScalar(b)))
                }
            }

            for i in bytes.indices {
                let b = bytes[i]

                let prev: UInt8? = (i > 0) ? bytes[i - 1] : nil
                let next: UInt8? = (i + 1 < bytes.count) ? bytes[i + 1] : nil

                if isUpper(b) {
                    if let p = prev, (isLower(p) || isDigit(p)) {
                        out.append("_")
                    } else if let p = prev, isUpper(p) {
                        if let n = next, isLower(n) {
                            out.append("_")
                        }

                        if i == 1 {
                            if out.last != "_" {
                                out.append("_")
                            }
                        }
                    }

                    appendLowercasedASCII(b)
                } else if isLower(b) {
                    out.append(Character(UnicodeScalar(b)))
                } else if isDigit(b) {
                    if let p = prev, isLower(p) {
                        out.append("_")
                    }
                    out.append(Character(UnicodeScalar(b)))
                } else {
                    // Preserve punctuation/underscore/etc.
                    out.append(Character(UnicodeScalar(b)))
                }
            }

            return out
        }

        self.stringValue = camelCaseToSnakeCase(key.stringValue)
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
