// swift-tools-version: 6.4

import CompilerPluginSupport
import PackageDescription

let swiftSettings: [SwiftSetting] = [
    .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
    .enableUpcomingFeature("ExistentialAny"),
    .enableUpcomingFeature("MemberImportVisibility")
]

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
            exact: "604.0.0"
        ),
        .package(
            url: "https://github.com/swiftlang/swift-docc-plugin.git",
            exact: "1.5.0"
        ),
        .package(
            url: "https://github.com/nicklockwood/SwiftFormat.git",
            exact: "0.63.0"
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
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdTests",
            dependencies: [
                "JBird"
            ],
            swiftSettings: swiftSettings
        ),
        .target(
            name: "JBirdCore",
            dependencies: [
                "JBirdParser"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdCoreTests",
            dependencies: [
                "JBirdCore",
                "JBirdParser"
            ],
            swiftSettings: swiftSettings
        ),
        .target(
            name: "JBirdParser",
            publicHeadersPath: "include",
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdParserTests",
            dependencies: [
                "JBirdParser"
            ],
            swiftSettings: swiftSettings
        ),
        .target(
            name: "JBirdBuilders",
            dependencies: [
                "JBirdCore"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdBuildersTests",
            dependencies: [
                "JBirdBuilders",
                "JBirdCore"
            ],
            swiftSettings: swiftSettings
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
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdMacrosTests",
            dependencies: [
                "JBirdMacros",
                "JBirdCore",
                "JBirdBuilders"
            ],
            swiftSettings: swiftSettings
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
            swiftSettings: swiftSettings
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
            swiftSettings: swiftSettings
        ),
        .target(
            name: "JBirdCodableSupport",
            dependencies: [
                "JBirdCore"
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "JBirdCodableSupportTests",
            dependencies: [
                "JBirdCodableSupport",
                "JBirdCore"
            ],
            swiftSettings: swiftSettings
        )
    ],
    swiftLanguageModes: [.v6],
    cLanguageStandard: .c11
)
