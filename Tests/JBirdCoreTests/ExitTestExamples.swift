// JBird
// ExitTestExamples.swift
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
import JBirdCore
import Testing

/// Exit tests demonstrate Swift Testing's ability to test code paths that would otherwise terminate the process.
/// These tests run in a separate process and can verify that certain operations exit as expected.
///
/// The Swift Testing framework in Swift 6.2+ provides the `#expect(processExitsWith:)` macro for this purpose.
/// Exit tests are particularly useful for:
/// - Testing fatal error conditions
/// - Verifying assertion failures in debug builds
/// - Testing precondition violations
/// - Validating force unwrap behavior on nil values
///
/// Note: Since exit tests run in a separate process, they cannot capture values from the enclosing scope.
@Suite("Exit Test Examples")
struct ExitTestExamples {

    /// Example exit test demonstrating how to test fatal error conditions.
    /// This test verifies that calling fatalError() causes the process to exit with a failure status.
    @Test("Fatal error causes process exit")
    func fatalErrorExit() async {
        await #expect(processExitsWith: .failure) {
            // This code runs in a separate process
            fatalError("This is expected to crash")
        }
    }

    /// Example exit test for testing force unwrap on nil.
    /// This demonstrates how to test code that would normally crash due to a force unwrap.
    @Test("Force unwrap on nil causes process exit")
    func forceUnwrapExit() async {
        await #expect(processExitsWith: .failure) {
            let optionalValue: Int? = nil
            _ = optionalValue! // This will crash
        }
    }

    /// Example exit test for array index out of bounds.
    /// This shows how to test that accessing an invalid array index causes a crash.
    @Test("Array index out of bounds causes process exit")
    func arrayIndexOutOfBoundsExit() async {
        await #expect(processExitsWith: .failure) {
            let array = [1, 2, 3]
            _ = array[10] // This will crash
        }
    }

    /// Example demonstrating that attempting to force unwrap a failed JSON decode would crash.
    /// In normal code, we would use try/catch, but this test shows what would happen without it.
    @Test("Force unwrapping failed JSON decode causes process exit")
    func forceUnwrapFailedDecode() async {
        await #expect(processExitsWith: .failure) {
            let json = JSON.string("not a number")
            // Normally you'd use try, but forcing the unwrap would crash
            _ = try! json.decode(into: Int.self)
        }
    }

    /// Example showing that force casting to wrong type causes crash.
    /// This demonstrates the danger of using 'as!' with JSON values.
    @Test("Force cast to wrong type causes process exit")
    func forceCastWrongType() async {
        await #expect(processExitsWith: .failure) {
            let json = JSON.string("hello")
            let unboxed = json.unboxed()
            // Force cast to wrong type will crash
            _ = unboxed.base as! Int
        }
    }
}
