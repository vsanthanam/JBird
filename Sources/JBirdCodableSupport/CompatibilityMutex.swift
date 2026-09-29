// JBird
// CompatibilityMutex.swift
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
import Synchronization

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
struct CompatibilityMutex<Value>: ~Copyable where Value: ~Copyable {

    init(
        _ initialValue: consuming sending Value
    ) {
        if #available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *) {
            let pointer = UnsafeMutablePointer<Mutex<Value>>.allocate(capacity: 1)
            pointer.initialize(to: Mutex(initialValue))
            storage = UnsafeMutableRawPointer(pointer)
            usesMutex = true
        } else {
            let pointer = UnsafeMutablePointer<LockBox>.allocate(capacity: 1)
            pointer.initialize(to: LockBox(value: initialValue))
            storage = UnsafeMutableRawPointer(pointer)
            usesMutex = false
        }
    }

    borrowing func withLock<Result, E>(
        _ body: (inout sending Value) throws(E) -> sending Result
    ) throws(E) -> sending Result where Result: ~Copyable, E: Error {
        if usesMutex, #available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *) {
            let pointer = storage.assumingMemoryBound(to: Mutex<Value>.self)
            return try pointer.pointee.withLock { (value: inout sending Value) throws(E) -> sending Result in
                try body(&value)
            }
        } else {
            let pointer = storage.assumingMemoryBound(to: LockBox.self)
            pointer.pointee.lock.lock()
            defer {
                pointer.pointee.lock.unlock()
            }
            return try body(&pointer.pointee.value)
        }
    }

    private struct LockBox: ~Copyable {
        let lock = NSLock()
        var value: Value
    }

    private let storage: UnsafeMutableRawPointer
    private let usesMutex: Bool

    deinit {
        if usesMutex, #available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *) {
            let pointer = storage.assumingMemoryBound(to: Mutex<Value>.self)
            pointer.deinitialize(count: 1)
            pointer.deallocate()
        } else {
            let pointer = storage.assumingMemoryBound(to: LockBox.self)
            pointer.deinitialize(count: 1)
            pointer.deallocate()
        }
    }

}

@available(macOS 13.0, macCatalyst 16.0, iOS 16.0, watchOS 9.0, tvOS 16.0, visionOS 1.0, *)
extension CompatibilityMutex: @unchecked Sendable where Value: ~Copyable {}
