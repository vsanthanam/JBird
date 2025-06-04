// swift-tools-version: 6.1

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
            exact: "601.0.1"
        ),
        .package(
            url: "https://github.com/swiftlang/swift-docc-plugin.git",
            exact: "1.4.3"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            exact: "0.56.1"
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
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .testTarget(
            name: "JBirdTests",
            dependencies: [
                "JBird"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .target(
            name: "JBirdCore",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .testTarget(
            name: "JBirdCoreTests",
            dependencies: [
                "JBirdCore",
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .target(
            name: "JBirdParser",
            publicHeadersPath: "include"
        ),
        .testTarget(
            name: "JBirdParserTests",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .target(
            name: "JBirdBuilders",
            dependencies: [
                "JBirdCore"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .testTarget(
            name: "JBirdBuildersTests",
            dependencies: [
                "JBirdBuilders",
                "JBirdCore"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .target(
            name: "JBirdMacros",
            dependencies: [
                "JBirdCompilerPlugin",
                "JBirdCore",
                "JBirdBuilders"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .testTarget(
            name: "JBirdMacrosTests",
            dependencies: [
                "JBirdMacros"
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .macro(
            name: "JBirdCompilerPlugin",
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
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        ),
        .testTarget(
            name: "JBirdCompilerPluginTests",
            dependencies: [
                "JBirdCompilerPlugin",
                .product(
                    name: "SwiftSyntaxMacrosTestSupport",
                    package: "swift-syntax"
                )
            ],
            swiftSettings: [
                .enableUpcomingFeature("StrictConcurrency=complete")
            ]
        )
    ],
    cLanguageStandard: .c11
)
