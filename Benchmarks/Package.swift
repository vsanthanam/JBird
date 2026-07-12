// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

enum Source: String {
    case release
    case remote
    case local
}

let source: Source? = if Context.environment["JBIRD_SOURCE"] == "release" {
    .release
} else if Context.environment["JBIRD_SOURCE"] == "remote" {
    .remote
} else if Context.environment["JBIRD_SOURCE"] == "local" {
    .local
} else {
    nil
}

if let source {
    print("🧪 Benchmark source: \(source.rawValue)")
} else {
    print("⚠️ No benchmark source configured, using `local`")
}

let jbird: PackageDescription.Package.Dependency = switch source {
case .release:
    .package(
        url: "https://github.com/vsanthanam/JBird.git",
        exact: "3.0.0"
    )
case .remote:
    .package(
        url: "https://github.com/vsanthanam/JBird.git",
        branch: "main"
    )
case .local, .none:
    .package(
        name: "JBird",
        path: "../"
    )
}

let package = Package(
    name: "Benchmarks",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(
            url: "https://github.com/ordo-one/benchmark",
            exact: "1.33.0"
        ),
        jbird,
        .package(
            url: "https://github.com/modswift/Freddy.git",
            exact: "3.0.58"
        ),
        .package(
            url: "https://github.com/SwiftyJSON/SwiftyJSON.git",
            exact: "5.0.2"
        )
    ],
    targets: [
        .executableTarget(
            name: "JBirdBenchmark",
            dependencies: [
                .product(
                    name: "Benchmark",
                    package: "benchmark"
                ),
                .product(
                    name: "JBird",
                    package: "JBird"
                ),
                "Freddy",
                "SwiftyJSON"
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
                .copy("benchmark-deeply-nested.json"),
                .copy("benchmark-array.json"),
                .copy("benchmark-canada.json"),
                .copy("benchmark-twitter.json")
            ],
            plugins: [
                .plugin(
                    name: "BenchmarkPlugin",
                    package: "benchmark"
                )
            ]
        )
    ]
)
