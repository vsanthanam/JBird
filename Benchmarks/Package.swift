// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Benchmarks",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(
            url: "https://github.com/ordo-one/package-benchmark",
            from: "1.0.0"
        ),
        .package(
            name: "JBird",
            path: "../"
        )
//        ),
//        .package(
//            url: "https://github.com/modswift/Freddy.git",
//            exact: "3.0.58"
//        ),
//        .package(
//            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
//            exact: "5.0.2"
//        )
    ],
    targets: [
        .executableTarget(
            name: "JBirdBenchmark",
            dependencies: [
                .product(name: "Benchmark", package: "package-benchmark"),
                .product(name: "JBird", package: "JBird")
            ],
            path: "JBirdBenchmark",
            resources: [
                .copy("benchmark-64kb.json"),
                .copy("benchmark-64kb-pretty.json"),
                .copy("benchmark-256kb.json"),
                .copy("benchmark-256kb-pretty.json"),
                .copy("benchmark-512kb.json"),
                .copy("benchmark-512kb-pretty.json"),
                .copy("benchmark-1mb.json"),
                .copy("benchmark-1mb-pretty.json"),
                .copy("benchmark-5mb.json"),
                .copy("benchmark-5mb-pretty.json"),
                .copy("benchmark-strings.json"),
                .copy("benchmark-numeric.json"),
                .copy("benchmark-integers.json"),
            ],
            plugins: [
                .plugin(name: "BenchmarkPlugin", package: "package-benchmark")
            ]
        )
    ]
)
