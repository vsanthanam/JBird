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
        from: "0.0.0"
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

### Optional Macros

To avoid forcing a dependency on [`swift-syntax`](https://github.com/swiftlang/swift-syntax), JBird does not include its macros by default. If you wish to include them in your project, you can do so by adding the following to your `Package.swift` file:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBirdMacros", package: "JBird")
    ]
)
```

Doing this will add the `@JSONCodable`, `@JSONKey`, and `@OmitIfNil` macros to your project, which can be used automatically add conformance to ``JSONCodable`` to your Swift types. For more information on how to use these macros, see the <doc:Macros>.

## Binary Distribution via XCFramework

JBird is available as a precompiled XCFramework for macOS, iOS, watchOS, tvOS, and visionOS. You can download an XCFramework for a particular version of JBird from the [GitHub Releases](https://github.com/vsanthanam/JBird/release) page. To build the framework from source, you can clone the repository, and run the built-in script:

```shell
$ path/to/jbird/repo
$ ./.scripts/build-xcframework
```

By default, the script creates a dynamic framework that builds for all Apple platforms. You can force a static framework by using the `--static` flag. You can specifiy specific platforms to include with the `--platforms` flag.

*Note: the XCFramework does not include any of the JBird macros. You must have Xcode and the SDKs of the target platforms installed on your machine.*

## Clone from Source

To add JBird source code directly without any intermediary, you can clone the repository directly from GitHub:

```shell
$ git clone https://github.com/vsanthanam/JBird.git
```

From there, you can copy the contents of `JBird` and `JBirdParser` to the destination of your choice. If you want access to the macros, you will also need to copy the contents of `JBirdMacros` and `JBirdCompilerPlugin`. You will also need access to [`swift-syntax`](https://github.com/swiftlang/swift-syntax).

You can also download a specific version of the package from the [GitHub Releases](https://github.com/vsanthanam/JBird/releases) page, or from the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird).

@Small {
    JBird is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
}
