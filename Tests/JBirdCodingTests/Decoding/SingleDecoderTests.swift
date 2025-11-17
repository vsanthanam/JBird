// JBird
// SingleDecoderTests.swift
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

import Foundation
import JBirdCoding
import JBirdCore
import Testing

@Suite("Single Decoder Tests")
struct SingleDecoderTests {

    @Test("Single Bool Decode")
    func bool_decode() throws {
        let bool = false
        let json: JSON = false
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Bool.self, from: data)
        #expect(decoded == bool)
    }

    @Test("Single Bool Decode Invalid")
    func bool_decode_invalid() throws {
        let json: JSON = 12
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Bool.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single String Decode")
    func string_decode() throws {
        let str = "foo"
        let json: JSON = "foo"
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(String.self, from: data)
        #expect(decoded == str)
    }

    @Test("Single String Decode Invalid")
    func string_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(String.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Float Decode")
    func float_decode() throws {
        let float: Float = 3.2
        let json: JSON = 3.2
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Float.self, from: data)
        #expect(decoded == float)
    }

    @Test("Single Float Decode Invalid")
    func float_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Float.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Double Decode")
    func double_decode() throws {
        let float = 3.2
        let json: JSON = 3.2
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Double.self, from: data)
        #expect(decoded == float)
    }

    @Test("Single Double Decode Invalid")
    func double_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Double.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Int Decode")
    func int_decode() throws {
        let int = 3
        let json: JSON = 3
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Int.self, from: data)
        #expect(decoded == int)
    }

    @Test("Single Int Decode Invalid")
    func int_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Int.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Int8 Decode")
    func int8_decode() throws {
        let int: Int8 = 12
        let json: JSON = 12
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Int8.self, from: data)
        #expect(decoded == int)
    }

    @Test("Single Int8 Decode Invalid")
    func int8_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Int8.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Int16 Decode")
    func int16_decode() throws {
        let int: Int16 = -17
        let json: JSON = -17
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Int16.self, from: data)
        #expect(decoded == int)
    }

    @Test("Single Int16 Decode Invalid")
    func int16_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Int16.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Int32 Decode")
    func int32_decode() throws {
        let int: Int32 = 19
        let json: JSON = 19
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Int32.self, from: data)
        #expect(decoded == int)
    }

    @Test("Single Int32 Decode Invalid")
    func int32_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Int32.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Int64 Decode")
    func int64_decode() throws {
        let int: Int64 = -1023
        let json: JSON = -1023
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(Int64.self, from: data)
        #expect(decoded == int)
    }

    @Test("Single Int64 Decode Invalid")
    func int64_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(Int64.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single UInt Decode")
    func uint_decode() throws {
        let uint: UInt = 3
        let json: JSON = 3
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt.self, from: data)
        #expect(decoded == uint)
    }

    @Test("Single UInt Decode Invalid")
    func uint_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(UInt.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single UInt8 Decode")
    func uint8_decode() throws {
        let uint: UInt8 = 3
        let json: JSON = 3
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt8.self, from: data)
        #expect(decoded == uint)
    }

    @Test("Single UInt8 Decode Invalid")
    func uint8_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(UInt8.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single UInt16 Decode")
    func uint16_decode() throws {
        let uint: UInt16 = 97
        let json: JSON = 97
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt16.self, from: data)
        #expect(decoded == uint)
    }

    @Test("Single UInt16 Decode Invalid")
    func uint16_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(UInt16.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single UInt32 Decode")
    func uint32_decode() throws {
        let uint: UInt32 = 1111
        let json: JSON = 1111
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt32.self, from: data)
        #expect(decoded == uint)
    }

    @Test("Single UInt32 Decode Invalid")
    func uint32_decode_invalid() throws {
        let json: JSON = []
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(UInt32.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single UInt64 Decode")
    func uint64_decode() throws {
        let uint: UInt64 = 2012
        let json: JSON = 2012
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt64.self, from: data)
        #expect(decoded == uint)
    }

    @Test("Single UInt64 Decode Invalid")
    func uint64_decode_invalid() throws {
        let json: JSON = nil
        let data = try json.serialize()
        #expect {
            _ = try JSON.Decoder().decode(UInt64.self, from: data)
        } throws: { error in
            let typed = try #require(error as? DecodingError)
            guard case let .typeMismatch(_, context) = typed else {
                return false
            }
            #expect(context.codingPath.isEmpty)
            return true
        }
    }

    @Test("Single Null Decode")
    func null_decode() throws {
        let uint: UInt64? = nil
        let json: JSON = nil
        let data = try json.serialize()
        let decoded = try JSON.Decoder().decode(UInt64?.self, from: data)
        #expect(decoded == uint)
    }

}
