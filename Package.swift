// swift-tools-version: 6.3

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
        ),
        .library(
            name: "JBirdCodableSupport",
            targets: [
                "JBirdCodableSupport"
            ]
        )
    ],
    traits: [
        .default(enabledTraits: ["DeclarativeAPI", "ConformanceMacros", "CodableSupport"]),
        "DeclarativeAPI",
        "ConformanceMacros",
        "CodableSupport"
    ],
    dependencies: [
        .package(
            url: "https://github.com/swiftlang/swift-syntax.git",
            exact: "603.0.0"
        ),
        .package(
            url: "https://github.com/swiftlang/swift-docc-plugin.git",
            exact: "1.4.6"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            exact: "0.61.0"
        )
    ],
    targets: [
        .target(
            name: "JBird",
            dependencies: [
                "JBirdCore",
                .target(
                    name: "JBirdBuilders",
                    condition: .when(
                        traits: ["DeclarativeAPI"]
                    )
                ),
                .target(
                    name: "JBirdMacros",
                    condition: .when(
                        traits: ["ConformanceMacros"]
                    )
                ),
                .target(
                    name: "JBirdCodableSupport",
                    condition: .when(
                        traits: ["CodableSupport"]
                    )
                )
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
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
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .target(
            name: "JBirdCore",
            dependencies: [
                "JBirdParser"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
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
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .target(
            name: "JBirdParser",
            publicHeadersPath: "include",
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
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
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .target(
            name: "JBirdBuilders",
            dependencies: [
                "JBirdCore"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
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
                .enableUpcomingFeature("MemberImportVisibility")
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
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .testTarget(
            name: "JBirdMacrosTests",
            dependencies: [
                "JBirdMacros",
                "JBirdCore",
                "JBirdBuilders"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .macro(
            name: "JBirdMacrosCompilerPlugin",
            dependencies: [
                .product(
                    name: "SwiftCompilerPlugin",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntax",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxBuilder",
                    package: "swift-syntax"
                ),
                .product(
                    name: "SwiftSyntaxMacros",
                    package: "swift-syntax"
                )
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
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
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .target(
            name: "JBirdCodableSupport",
            dependencies: [
                "JBirdCore"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        ),
        .testTarget(
            name: "JBirdCodableSupportTests",
            dependencies: [
                "JBirdCodableSupport",
                "JBirdCore"
            ],
            swiftSettings: [
                .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("MemberImportVisibility")
            ]
        )
    ],
    swiftLanguageModes: [.v6],
    cLanguageStandard: .c11
)
