# Project Setup

@Metadata {
    @PageKind(article)
    @CallToAction(url: "https://www.github.com/vsanthanam/JBird", purpose: link, label: "View on GitHub")
}

## Basic Setup

### Add to an Xcode Project via Swift Package Manager

To add JBird to an existing Xcode project, open the project and choose `File` → `Add Packages...`. Enter `https://github.com/vsanthanam/JBird.git`, pick the desired release, and select the required products.

### Add to a Swift Package

Add the package reference to the `dependencies` parameter of `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/vsanthanam/JBird.git",
        from: "2.1.1"
    )
]
```

Then declare `JBird` (or any specific product) as a target dependency:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBird", package: "JBird")
    ]
)
```

## Advanced Setup

JBird is intentionally divided into smaller modules so you can opt into advanced language features only when you need them. Macros, custom infix operators, and result builders can lengthen build times or increase code size, so each capability sits behind its own target:

- `JBirdCore` supplies the runtime types, parser, and serializer and is always required.
- `JBirdBuilders` adds declarative builders and operators. *Depends on `JBirdCore`.*
- `JBirdMacros` provides the `JSONRepresentable` synthesis macros. *Depends on `JBirdCore`, `JBirdBuilders`, and the macro compiler plugin.*

The `JBird` product re-exports all three so you can import the umbrella module when you want the entire surface area, or reference individual products to stay lean.

### Swift Package Traits

JBird publishes three traits: `DeclarativeAPI` (which controls `JBirdBuilders`), `ConformanceMacros` (which controls `JBirdMacros`) and `CodableSupport` (which controls `JBirdCodableSupport`). All three are enabled by the package’s default trait, so you keep importing the umbrella product but configure its features on the dependency declaration:

```swift
let package = Package(
    name: "YourPackage",
    dependencies: [
        .package(
            url: "https://github.com/vsanthanam/JBird.git",
            from: "2.1.1",
            traits: [
                .defaults // Enables `DeclarativeAPI`, `ConformanceMacros` and `CodableSupport`.
                          // Alternatively, you could explicit opt into `DeclarativeAPI`, `ConformanceMacros`, `CodableSupport`, or any combination of the three.
        )
    ],
    targets: [
        .target(
            name: "YourTarget",
            dependencies: [
                .product(name: "JBird", package: "JBird")
            ]
        )
    ]
)
```

Replace `.defaults` with a smaller set to trim functionality—for example, `traits: ["DeclarativeAPI"]` keeps the declarative API but leaves macros disabled, and an empty set limits the dependency to `JBirdCore`. Traits are evaluated only for SwiftPM clients; XCFramework and source-based consumers still declare the modules they embed.

### Binary distribution via XCFramework

`JBird`, `JBirdCore` and `JBirdBuilders` are shipped as precompiled XCFrameworks for macOS, iOS, watchOS, tvOS, and visionOS. Download the artifacts from [GitHub Releases](https://github.com/vsanthanam/JBird/releases) or create them locally using the provided script:

```shell
$ cd path/to/JBird
$ ./.scripts/build-xcframework <module_name>
```

The script produces dynamic frameworks for every supported Apple platform by default. Use `--static` for static libraries and `--platforms` to restrict the build for particular Apple platformns. XCFrameworks do not support Swift macros, so `JBirdMacros` is unavailable in this format.

You can run the same script for `JBird`, `JBirdCore` or `JBirdBuilders`. Because `JBird` is an `@_exported` shim, any consumer of that XCFramework should also embed the `JBirdCore` and `JBirdBuilders` frameworks that it re-exports.

### Compile from source

Clone the repository or fetch a release archive to work directly with the sources:

```shell
$ git clone https://github.com/vsanthanam/JBird.git
```

Copy the `Sources/JBirdCore` and `Sources/JBirdParser` directories into your project to use the core runtime. Include `Sources/JBirdBuilders` if you need the declarative builders, and `Sources/JBirdMacros` plus the compiler plugin targets if you plan to compile macros yourself. As with XCFramework consumption, choose whether to import the umbrella module or the individual targets based on the features you require.

You can also download a specific version of the package from the [GitHub Releases](https://github.com/vsanthanam/JBird/releases) page, or from the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird).

@Small {
    JBird is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
}
