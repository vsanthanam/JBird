# Project Setup

@Metadata {
    @PageKind(article)
    @CallToAction(url: "https://www.github.com/vsanthanam/JBird", purpose: link, label: "View on GitHub")
}

Add JBird to an existing project

## Add to an Xcode Project via SPM

To add JBird as a dependency to an Xcode Project, open the project in Xcode and perform the following steps:

1. Choose `File` → `Add Packages...`

2. Enter package URL `https://github.com/vsanthanam/JBird.git` and select your release and product of choice.

## Add to a Swift Package

To add JBird as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(
        url: "https://github.com/vsanthanam/JBird.git",
        from: "1.0.0"
    )
]
```

Then, add the dependency to your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBird", package: "JBird")
    ]
)
```

### Smaller Sub-modules

JBird features macros, custom infix operators, and result builders, all of which can add considerably time to your builds. This will be fine for many projects, but if you intentionally do not want the overhead of theses features, you can depend three smaller modules:

- `JBirdCore`, which features the core JBird API
- `JBirdBuilders`, which features a declarative API for composing JSON values directly in Swift. *This module depends on `JBirdCore`.*
- `JBirdMacros`, which enables the compiler to automatically implement `JSONCodable` conformance for your custom Swift types. *This module depends on `JBirdCore`, `JBirdBuilders`, and `SwiftSyntax`*

If you depend on `JBird`, you will get all three of these modules automatically, but if you want to depend on them individually, you can use explicitly call out the products that you want to use in your `Package.swift` files:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBirdCore", package: "JBird"),
        .product(name: "JBirdBuilders", package: "JBird")
    ]
)
```

## Binary Distribution via XCFramework

JBirdCore and JBirdBuilders are available as precompiled XCFrameworks for macOS, iOS, watchOS, tvOS, and visionOS. You can download an XCFramework for a particular version of JBird from the [GitHub Releases](https://github.com/vsanthanam/JBird/release) page. To build the framework from source, you can clone the repository, and run the built-in script:

```shell
$ path/to/jbird/repo
$ ./.scripts/build-xcframework JBirdCore
```

By default, the script creates a dynamic framework that builds for all supported Apple platforms. You can force a static framework by using the `--static` flag. You can specifiy specific platforms to include with the `--platforms` flag. 

*Note: You can only use the script to build either `JBirdCore` or `JBirdBuilders`. The combined `JBird` module with all APIs is not supported, because Swift macros cannot be distributed via XCFramework*

## Clone from Source

To add JBird source code directly without any intermediary, you can clone the repository directly from GitHub:

```shell
$ git clone https://github.com/vsanthanam/JBird.git
```

From there, you can copy the contents of `JBirdCore` and `JBirdParser` to the destination of your choice. You can optionally copy the contents of `JBirdBuilders` or `JBirdMacros`, if you want those features as well.
You can also download a specific version of the package from the [GitHub Releases](https://github.com/vsanthanam/JBird/releases) page, or from the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird).

@Small {
    JBird is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
}
