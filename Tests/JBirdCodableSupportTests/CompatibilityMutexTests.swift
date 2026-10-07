// JBird
// CompatibilityMutexTests.swift
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

import Foundation
@testable import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("Compatibility Mutex Tests")
struct CompatibilityMutexTests {

    @Test("Releases Stored Value")
    func releasesStoredValue() {
        let released = Flag()
        do {
            let mutex = CompatibilityMutex(Tracker { released.set() })
            mutex.withLock { _ in }
        }
        #expect(released.isSet)
    }

    @Test("Releases Stored Value Through Generic Context")
    func releasesStoredValueThroughGenericContext() {
        let released = Flag()
        makeAndDrop(Tracker { released.set() })
        #expect(released.isSet)
    }

    @Test("Encoder Releases User Info")
    func encoderReleasesUserInfo() throws {
        let key = try #require(CodingUserInfoKey(rawValue: "tracker"))
        let released = Flag()
        do {
            let encoder = JSON.Encoder()
            encoder.userInfo[key] = Tracker { released.set() }
        }
        #expect(released.isSet)
    }

    @Test("Decoder Releases Custom Strategy")
    func decoderReleasesCustomStrategy() {
        let released = Flag()
        do {
            let decoder = JSON.Decoder()
            let tracker = Tracker { released.set() }
            decoder.dateDecodingStrategy = .custom { _ in
                withExtendedLifetime(tracker) { Date() }
            }
        }
        #expect(released.isSet)
    }

}

private final class Flag: @unchecked Sendable {

    var isSet: Bool {
        lock.withLock { value }
    }

    func set() {
        lock.withLock { value = true }
    }

    private let lock = NSLock()
    private var value = false

}

private final class Tracker: Sendable {

    init(
        onDeinit: @escaping @Sendable () -> Void
    ) {
        self.onDeinit = onDeinit
    }

    deinit {
        onDeinit()
    }

    private let onDeinit: @Sendable () -> Void

}

@inline(never)
private func makeAndDrop<Value>(
    _ value: consuming sending Value
) {
    let mutex = CompatibilityMutex(value)
    mutex.withLock { _ in }
}
