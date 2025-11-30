// JBird
// ValueDecoder.swift
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

import JBirdCore

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
struct ValueDecoder: SingleValueDecodingContainer {

    // MARK: - Initializers

    init(
        decoder: InternalDecoder,
        value: JSON
    ) {
        self.decoder = decoder
        self.value = value
    }

    // MARK: - SingleValueDecodingContainer

    var codingPath: [any CodingKey] {
        decoder.codingPath
    }

    func decodeNil() -> Bool {
        value.isNull
    }

    func decode(
        _ type: Bool.Type
    ) throws -> Bool {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Float.Type
    ) throws -> Float {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Double.Type
    ) throws -> Double {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: String.Type
    ) throws -> String {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int.Type
    ) throws -> Int {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int8.Type
    ) throws -> Int8 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int16.Type
    ) throws -> Int16 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int32.Type
    ) throws -> Int32 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: Int64.Type
    ) throws -> Int64 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt.Type
    ) throws -> UInt {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt8.Type
    ) throws -> UInt8 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt16.Type
    ) throws -> UInt16 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt32.Type
    ) throws -> UInt32 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode(
        _ type: UInt64.Type
    ) throws -> UInt64 {
        do {
            return try value.convert()
        } catch {
            let context = DecodingError.Context(
                codingPath: codingPath,
                debugDescription: "Expected \(type) but found \(value.backingTypeDescription)",
                underlyingError: error
            )
            throw DecodingError.typeMismatch(
                type,
                context
            )
        }
    }

    func decode<T>(
        _ type: T.Type
    ) throws -> T where T: Decodable {
        let decoder = InternalDecoder(
            value: value,
            codingPath: codingPath,
            userInfo: decoder.userInfo
        )
        return try T(from: decoder)
    }

    // MARK: - Private

    private let decoder: InternalDecoder
    private let value: JSON

}
