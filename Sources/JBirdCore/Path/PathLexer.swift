// JBird
// PathLexer.swift
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
extension JSON.Path {

    struct Lexer {

        // MARK: - Initializers

        init(
            _ bytes: [UInt8]
        ) {
            self.bytes = bytes
            self.position = 0
        }

        // MARK: - API

        mutating func nextToken() throws -> Token {
            skipWhitespace()
            guard position < bytes.count else {
                return .eof
            }
            let start = position
            let byte = bytes[position]
            switch byte {
            case UInt8(ascii: "$"):
                position += 1
                return .root
            case UInt8(ascii: "@"):
                position += 1
                return .current
            case UInt8(ascii: "["):
                position += 1
                return .leftBracket
            case UInt8(ascii: "]"):
                position += 1
                return .rightBracket
            case UInt8(ascii: "("):
                position += 1
                return .leftParen
            case UInt8(ascii: ")"):
                position += 1
                return .rightParen
            case UInt8(ascii: ","):
                position += 1
                return .comma
            case UInt8(ascii: ":"):
                position += 1
                return .colon
            case UInt8(ascii: "?"):
                position += 1
                return .question
            case UInt8(ascii: "*"):
                position += 1
                return .wildcard
            case UInt8(ascii: "."):
                position += 1
                if position < bytes.count, bytes[position] == UInt8(ascii: ".") {
                    position += 1
                    return .descendant
                }
                return .dot
            case UInt8(ascii: "!"):
                position += 1
                if position < bytes.count, bytes[position] == UInt8(ascii: "=") {
                    position += 1
                    return .notEqual
                }
                return .not
            case UInt8(ascii: "="):
                position += 1
                guard position < bytes.count else {
                    throw JSON.PathError.unexpectedEndOfInput
                }
                guard bytes[position] == UInt8(ascii: "=") else {
                    throw JSON.PathError.unexpectedCharacter(bytes[position], at: position)
                }
                position += 1
                return .equal
            case UInt8(ascii: "<"):
                position += 1
                if position < bytes.count, bytes[position] == UInt8(ascii: "=") {
                    position += 1
                    return .lessEqual
                }
                return .lessThan
            case UInt8(ascii: ">"):
                position += 1
                if position < bytes.count, bytes[position] == UInt8(ascii: "=") {
                    position += 1
                    return .greaterEqual
                }
                return .greaterThan
            case UInt8(ascii: "&"):
                position += 1
                guard position < bytes.count else {
                    throw JSON.PathError.unexpectedEndOfInput
                }
                guard bytes[position] == UInt8(ascii: "&") else {
                    throw JSON.PathError.unexpectedCharacter(bytes[position], at: position)
                }
                position += 1
                return .and
            case UInt8(ascii: "|"):
                position += 1
                guard position < bytes.count else {
                    throw JSON.PathError.unexpectedEndOfInput
                }
                guard bytes[position] == UInt8(ascii: "|") else {
                    throw JSON.PathError.unexpectedCharacter(bytes[position], at: position)
                }
                position += 1
                return .or
            case UInt8(ascii: "\""), UInt8(ascii: "'"):
                return try scanString(quote: byte)
            case UInt8(ascii: "0") ... UInt8(ascii: "9"), UInt8(ascii: "-"):
                return try scanNumber(from: start)
            default:
                if Self.isNameStart(byte) {
                    return scanName()
                }
                throw JSON.PathError.unexpectedCharacter(byte, at: start)
            }
        }

        static func tokenize(
            _ bytes: [UInt8]
        ) throws -> [Token] {
            var lexer = Lexer(bytes)
            var tokens: [Token] = []
            while true {
                let token = try lexer.nextToken()
                tokens.append(token)
                if token == .eof {
                    break
                }
            }
            return tokens
        }

        // MARK: - Private

        private var bytes: [UInt8]
        private var position: Int

        private mutating func skipWhitespace() {
            while position < bytes.count {
                switch bytes[position] {
                case 0x20, 0x09, 0x0A, 0x0D:
                    position += 1
                default:
                    return
                }
            }
        }

        private static func isNameStart(
            _ byte: UInt8
        ) -> Bool {
            switch byte {
            case UInt8(ascii: "A") ... UInt8(ascii: "Z"),
                 UInt8(ascii: "a") ... UInt8(ascii: "z"),
                 UInt8(ascii: "_"):
                true
            default:
                byte >= 0xC0
            }
        }

        private static func isNameChar(
            _ byte: UInt8
        ) -> Bool {
            switch byte {
            case UInt8(ascii: "A") ... UInt8(ascii: "Z"),
                 UInt8(ascii: "a") ... UInt8(ascii: "z"),
                 UInt8(ascii: "_"),
                 UInt8(ascii: "0") ... UInt8(ascii: "9"):
                true
            default:
                byte >= 0x80
            }
        }

        private mutating func scanName() -> Token {
            let start = position
            position += 1
            while position < bytes.count, Self.isNameChar(bytes[position]) {
                position += 1
            }
            let name = String(decoding: bytes[start ..< position], as: UTF8.self)
            switch name {
            case "true":
                return .true
            case "false":
                return .false
            case "null":
                return .null
            default:
                return .name(name)
            }
        }

        // MARK: - Number Scanning

        private mutating func scanNumber(
            from start: Int
        ) throws -> Token {
            var hasSign = false
            if bytes[position] == UInt8(ascii: "-") {
                hasSign = true
                position += 1
                guard position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") else {
                    throw JSON.PathError.invalidNumber(at: start)
                }
            }

            let isLeadingZero = bytes[position] == UInt8(ascii: "0")
            if isLeadingZero {
                position += 1
            } else {
                position += 1
                while position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") {
                    position += 1
                }
            }

            var isFloat = false

            if position < bytes.count, bytes[position] == UInt8(ascii: ".") {
                isFloat = true
                position += 1
                guard position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") else {
                    throw JSON.PathError.invalidNumber(at: start)
                }
                while position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") {
                    position += 1
                }
            }

            if position < bytes.count,
               bytes[position] == UInt8(ascii: "e") || bytes[position] == UInt8(ascii: "E") {
                isFloat = true
                position += 1
                if position < bytes.count,
                   bytes[position] == UInt8(ascii: "+") || bytes[position] == UInt8(ascii: "-") {
                    position += 1
                }
                guard position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") else {
                    throw JSON.PathError.invalidNumber(at: start)
                }
                while position < bytes.count,
                      bytes[position] >= UInt8(ascii: "0"),
                      bytes[position] <= UInt8(ascii: "9") {
                    position += 1
                }
            }

            let text = String(decoding: bytes[start ..< position], as: UTF8.self)
            let isNegativeZero = hasSign && isLeadingZero && !isFloat

            if isFloat || isNegativeZero {
                guard let value = Double(text) else {
                    throw JSON.PathError.invalidNumber(at: start)
                }
                return .number(JSON.Number(value))
            } else {
                guard let value = Int(text) else {
                    throw JSON.PathError.invalidNumber(at: start)
                }
                return .number(JSON.Number(value))
            }
        }

        // MARK: - String Scanning

        private mutating func scanString(quote: UInt8) throws -> Token {
            let start = position
            position += 1
            var result: [UInt8] = []
            while position < bytes.count {
                let byte = bytes[position]
                if byte == quote {
                    position += 1
                    return .string(String(decoding: result, as: UTF8.self))
                }
                if byte < 0x20 {
                    throw JSON.PathError.unexpectedCharacter(byte, at: position)
                }
                if byte == UInt8(ascii: "\\") {
                    let escapeStart = position
                    position += 1
                    guard position < bytes.count else {
                        throw JSON.PathError.unterminatedString(at: start)
                    }
                    let escaped = bytes[position]
                    position += 1
                    switch escaped {
                    case UInt8(ascii: "b"):
                        result.append(0x08)
                    case UInt8(ascii: "f"):
                        result.append(0x0C)
                    case UInt8(ascii: "n"):
                        result.append(0x0A)
                    case UInt8(ascii: "r"):
                        result.append(0x0D)
                    case UInt8(ascii: "t"):
                        result.append(0x09)
                    case UInt8(ascii: "/"):
                        result.append(UInt8(ascii: "/"))
                    case UInt8(ascii: "\\"):
                        result.append(UInt8(ascii: "\\"))
                    case UInt8(ascii: "u"):
                        let scalar = try scanUnicodeEscape(at: escapeStart)
                        result.append(contentsOf: String(scalar).utf8)
                    default:
                        if escaped == quote {
                            result.append(quote)
                        } else {
                            throw JSON.PathError.invalidEscape(at: escapeStart)
                        }
                    }
                    continue
                }
                result.append(byte)
                position += 1
            }
            throw JSON.PathError.unterminatedString(at: start)
        }

        private mutating func scanUnicodeEscape(
            at escapeStart: Int
        ) throws -> Unicode.Scalar {
            let codepoint = try scanHexDigits(at: escapeStart)
            if codepoint >= 0xD800, codepoint <= 0xDBFF {
                guard position + 1 < bytes.count,
                      bytes[position] == UInt8(ascii: "\\"),
                      bytes[position + 1] == UInt8(ascii: "u") else {
                    throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
                }
                position += 2
                let low = try scanHexDigits(at: escapeStart)
                guard low >= 0xDC00, low <= 0xDFFF else {
                    throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
                }
                let combined = 0x10000 + (UInt32(codepoint - 0xD800) << 10) + UInt32(low - 0xDC00)
                guard let scalar = Unicode.Scalar(combined) else {
                    throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
                }
                return scalar
            }
            if codepoint >= 0xDC00, codepoint <= 0xDFFF {
                throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
            }
            guard let scalar = Unicode.Scalar(UInt32(codepoint)) else {
                throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
            }
            return scalar
        }

        private mutating func scanHexDigits(
            at escapeStart: Int
        ) throws -> UInt16 {
            var value: UInt16 = 0
            for _ in 0 ..< 4 {
                guard position < bytes.count else {
                    throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
                }
                let byte = bytes[position]
                let digit: UInt16
                switch byte {
                case UInt8(ascii: "0") ... UInt8(ascii: "9"):
                    digit = UInt16(byte - UInt8(ascii: "0"))
                case UInt8(ascii: "a") ... UInt8(ascii: "f"):
                    digit = UInt16(byte - UInt8(ascii: "a") + 10)
                case UInt8(ascii: "A") ... UInt8(ascii: "F"):
                    digit = UInt16(byte - UInt8(ascii: "A") + 10)
                default:
                    throw JSON.PathError.invalidUnicodeEscape(at: escapeStart)
                }
                value = value << 4 | digit
                position += 1
            }
            return value
        }

    }

}
