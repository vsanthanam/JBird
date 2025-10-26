// JBird
// DecoderTests.swift
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

import JBirdCoding
import JBirdCore
import Testing

private struct Profile: Codable, Equatable {

    struct Metadata: Codable, Equatable {

        let active: Bool
        let rating: Float

    }

    let name: String
    let age: Int
    let alias: String?
    let scores: [Double]
    let metadata: Metadata

}

@Test("JSON.Decoder decodes Codable types")
func decodingProfile() throws {
    let json: JSON = [
        "name": "Alice",
        "age": 31,
        "alias": JSON.null,
        "scores": [98.5, 87, 91],
        "metadata": [
            "active": true,
            "rating": 4.5
        ]
    ]
    let expected = Profile(
        name: "Alice",
        age: 31,
        alias: nil,
        scores: [98.5, 87, 91],
        metadata: .init(active: true, rating: 4.5)
    )
    let data = try json.serialize()
    let profile = try JSON.Decoder().decode(Profile.self, from: data)
    #expect(profile == expected)
}

// @Test("JSON.Decoder surfaces type mismatches")
// func decodingTypeMismatch() {
//    let json: JSON = [
//        "value": "hello"
//    ]
//    let decoder = JSON.InternalDecoder(json: json)
//    #expect(throws: DecodingError.self) {
//        _ = try decoder.decode([Int].self)
//    }
// }
