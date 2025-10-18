// swift-tools-version: 5.10

import CompilerPluginSupport
import PackageDescription

let package = Package(
    name: "JBird",
    platforms: [
        .macOS(.v13),
        .macCatalyst(.v16),
        .iOS(.v16),
        .watchOS(.v9),
        .tvOS(.v16),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "JBird",
            targets: [
                "JBird"
            ]
        ),
        .library(
            name: "JBirdCore",
            targets: [
                "JBirdCore"
            ]
        ),
        .library(
            name: "JBirdBuilders",
            targets: [
                "JBirdBuilders"
            ]
        ),
        .library(
            name: "JBirdMacros",
            targets: [
                "JBirdMacros"
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-syntax.git",
            exact: "510.0.3"
        )
    ],
    targets: [
        .target(
            name: "JBird",
            dependencies: [
                "JBirdCore",
                "JBirdBuilders",
                "JBirdMacros"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdTests",
            dependencies: [
                "JBird"
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .target(
            name: "JBirdCore",
            dependencies: [
                "JBirdParser"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdCoreTests",
            dependencies: [
                "JBirdCore",
                "JBirdParser"
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .target(
            name: "JBirdParser",
            publicHeadersPath: "include",
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdParserTests",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .target(
            name: "JBirdBuilders",
            dependencies: [
                "JBirdCore"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdBuildersTests",
            dependencies: [
                "JBirdBuilders",
                "JBirdCore"
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .target(
            name: "JBirdMacros",
            dependencies: [
                "JBirdMacrosCompilerPlugin",
                "JBirdCore",
                "JBirdBuilders"
            ],
            resources: [
                .copy("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdMacrosTests",
            dependencies: [
                "JBirdMacros"
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .macro(
            name: "JBirdMacrosCompilerPlugin",
            dependencies: [
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                )
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        ),
        .testTarget(
            name: "JBirdMacrosCompilerPluginTests",
            dependencies: [
                "JBirdMacrosCompilerPlugin",
                .product(
                    name: "SwiftSyntaxMacrosTestSupport",
                    package: "swift-syntax"
                )
            ],
            swiftSettings: [
                .enableExperimentalFeature("StrictConcurrency")
            ]
        )
    ],
    cLanguageStandard: .c11
)
