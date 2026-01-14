// JBird
// SnakeCaseCodingKey.swift
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

struct SnakeCaseCodingKey: CodingKey {

    init?(stringValue: String) {
        fatalError()
    }

    init?(intValue: Int) {
        fatalError()
    }

    init(_ key: any CodingKey) {

        @inline(__always)
        func camelCaseToSnakeCase(_ input: String) -> String {
            let utf8 = input.utf8
            var result = String()
            result.reserveCapacity(utf8.count + utf8.count / 4)

            var prevWasLowercase = false
            var prevWasDigit = false

            for byte in utf8 {
                switch byte {
                case 65...90:
                    if prevWasLowercase || prevWasDigit {
                        result.append("_")
                    }
                    result.append(Character(UnicodeScalar(byte + 32)))
                    prevWasLowercase = true
                    prevWasDigit = false

                case 97...122:
                    result.append(Character(UnicodeScalar(byte)))
                    prevWasLowercase = true
                    prevWasDigit = false

                case 48...57:
                    if prevWasLowercase {
                        result.append("_")
                    }
                    result.append(Character(UnicodeScalar(byte)))
                    prevWasLowercase = false
                    prevWasDigit = true

                default:
                    result.append(Character(UnicodeScalar(byte)))
                    prevWasLowercase = false
                    prevWasDigit = false
                }
            }

            return result
        }

        self.stringValue = camelCaseToSnakeCase(key.stringValue)

    }

    let intValue: Int? = nil

    let stringValue: String

}
