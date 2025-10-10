// swift-tools-version: 6.2

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
            exact: "602.0.0"
        ),
        .package(
            url: "https://github.com/swiftlang/swift-docc-plugin.git",
            exact: "1.4.5"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            exact: "0.57.2"
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
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "JBirdTests",
            dependencies: [
                "JBird"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .target(
            name: "JBirdCore",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "JBirdCoreTests",
            dependencies: [
                "JBirdCore",
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .target(
            name: "JBirdParser",
            publicHeadersPath: "include",
            swiftSettings: [
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "JBirdParserTests",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .target(
            name: "JBirdBuilders",
            dependencies: [
                "JBirdCore"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "JBirdBuildersTests",
            dependencies: [
                "JBirdBuilders",
                "JBirdCore"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
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
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        ),
        .testTarget(
            name: "JBirdMacrosTests",
            dependencies: [
                "JBirdMacros"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
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
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
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
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility"),
                .treatAllWarnings(as: .error)
            ]
        )
    ],
    swiftLanguageModes: [.v6],
    cLanguageStandard: .c11
)
