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
        let input = key.stringValue
        let bytes = Array(input.utf8)
        if bytes.isEmpty {
            self.stringValue = input
            return
        }

        @_transparent
        func isUpper(_ byte: UInt8) -> Bool {
            (65...90).contains(byte)
        }

        @_transparent
        func isLower(_ byte: UInt8) -> Bool {
            (97...122).contains(byte)
        }

        @_transparent
        func isDigit(_ byte: UInt8) -> Bool {
            (48...57).contains(byte)
        }

        var out = String()
        out.reserveCapacity(bytes.count + bytes.count / 4)

        @_transparent
        func appendLowercasedASCII(_ byte: UInt8) {
            if isUpper(byte) {
                out.append(Character(UnicodeScalar(byte + 32)))
            } else {
                out.append(Character(UnicodeScalar(byte)))
            }
        }

        for index in bytes.indices {
            let byte = bytes[index]

            let prev: UInt8? = (index > 0) ? bytes[index - 1] : nil
            let next: UInt8? = (index + 1 < bytes.count) ? bytes[index + 1] : nil

            if isUpper(byte) {
                if let p = prev, (isLower(p) || isDigit(p)) {
                    out.append("_")
                } else if let p = prev, isUpper(p) {
                    if let n = next, isLower(n) {
                        out.append("_")
                    }

                    if index == 1 {
                        if out.last != "_" {
                            out.append("_")
                        }
                    }
                }

                appendLowercasedASCII(byte)
            } else if isLower(byte) {
                out.append(Character(UnicodeScalar(byte)))
            } else if isDigit(byte) {
                if let p = prev, isLower(p) {
                    out.append("_")
                }
                out.append(Character(UnicodeScalar(byte)))
            } else {
                out.append(Character(UnicodeScalar(byte)))
            }
        }
        self.stringValue = out
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
