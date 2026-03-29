// JBird
// JBirdBenchmark.swift
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

import Benchmark
import Foundation
import Freddy
import JBird
import SwiftyJSON

func load(benchmark name: String) -> (String, Data) {
    let resource = "benchmark-\(name)"
    let url = Bundle.module.url(forResource: resource, withExtension: "json")!
    return (name, try! Data(contentsOf: url))
}

let files: [(String, Data)] = [
    "64kb",
    "64kb-pretty",
    "256kb",
    "256kb-pretty",
    "512kb",
    "512kb-pretty",
    "1mb",
    "1mb-pretty",
    "5mb",
    "5mb-pretty",
    "strings",
    "numeric",
    "integers",
    "deeply-nested",
    "array",
    "canada",
    "twitter"
].map(load)

enum Library: String {
    case foundation
    case jbird
    case swiftyjson
    case freddy
}

func selectedLibrary() -> Library {
    let raw = ProcessInfo.processInfo.environment["BENCHMARK_TARGET"]
    guard let raw, let library = Library(rawValue: raw) else {
        fatalError("Set BENCHMARK_TARGET to one of: foundation, jbird, swiftyjson, freddy")
    }
    return library
}

nonisolated(unsafe) let benchmarks = {
    Benchmark.defaultConfiguration.maxIterations = 1_000_000_000

    let library = selectedLibrary()

    let parse: (Data) throws -> Void
    let setup: (() -> Void)?

    switch library {
    case .foundation:
        parse = { data in _ = try JSONSerialization.jsonObject(with: data) }
        setup = nil

    case .jbird:
        parse = { data in _ = try JBird.JSON(data) }
        setup = { JBird.JSON.warmLimits() }

    case .swiftyjson:
        parse = { data in _ = try SwiftyJSON.JSON(data: data) }
        setup = nil

    case .freddy:
        parse = { data in _ = try Freddy.JSON(data: data) }
        setup = nil
    }

    for (name, data) in files {
        Benchmark("Parse (\(name))") { benchmark in
            for _ in benchmark.scaledIterations {
                try parse(data)
            }
        } setup: {
            setup?()
        }
    }
}
