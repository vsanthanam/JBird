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
import Synchronization
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

    /// Tracks the runtime behavior gated in `CompatibilityMutex.deinit`. If this fails, a runtime changed and the gate needs updating, along with `runtimeMisreportsMutexAsTrivial`.
    /// See https://github.com/vsanthanam/JBird/issues/467
    @available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
    @Test("Runtime Mutex Destruction Matches Gate")
    func runtimeMutexDestructionMatchesGate() {
        let released = Flag()
        deinitializeMutex(Tracker { released.set() })
        #expect(released.isSet != runtimeMisreportsMutexAsTrivial)
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

/// Mirrors the platform gate in `CompatibilityMutex.deinit`.
private var runtimeMisreportsMutexAsTrivial: Bool {
    #if os(macOS) || os(iOS) || os(watchOS) || os(tvOS) || os(visionOS)
        #if compiler(>=6.4)
            if #available(anyAppleOS 27.0, *) {
                return false
            } else {
                return true
            }
        #else
            if #available(macOS 27.0, macCatalyst 27.0, iOS 27.0, watchOS 27.0, tvOS 27.0, visionOS 27.0, *) {
                return false
            } else {
                return true
            }
        #endif
    #elseif os(Windows)
        #if compiler(>=6.4)
            return false
        #else
            return true
        #endif
    #else
        return false
    #endif
}

/// Never specialized, so `deinitialize(count:)` goes through the runtime even in optimized builds.
/// This lets if the runtime bug has changed when we run tests.
@_semantics("optimize.sil.specialize.generic.never")
@inline(never)
@available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
private func deinitializeMutex<Value>(
    _ value: consuming sending Value
) {
    let pointer = UnsafeMutablePointer<Mutex<Value>>.allocate(capacity: 1)
    pointer.initialize(to: Mutex(value))
    pointer.deinitialize(count: 1)
    pointer.deallocate()
}
