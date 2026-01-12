// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "Fuzzer",
    products: [
        .library(
            name: "Fuzzer",
            targets: [
                "Fuzzer"
            ]
        )
    ],
    targets: [
        .target(
            name: "Fuzzer",
            path: "../Fuzzer/",
            sources: [
                "fuzz_harness.c"
            ]
        )
    ],
    cLanguageStandard: .c11
)
