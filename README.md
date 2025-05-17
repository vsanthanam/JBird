# JBird

[![MIT License](https://img.shields.io/github/license/vsanthanam/JBird)](https://github.com/vsanthanam/JBird/blob/main/LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/vsanthanam/JBird?include_prereleases)](https://github.com/vsanthanam/JBird/releases)
[![Build Status](https://img.shields.io/github/check-runs/vsanthanam/JBird/main)](https://github.com/vsanthanam/JBird/actions)
[![Swift Version](https://img.shields.io/badge/swift-6.1-critical)](https://swift.org)
[![Documentation](https://img.shields.io/badge/Documentation-GitHub-8A2BE2)](https://usejbird.com/docs/documentation/jbird)


A high-performance JSON parsing and manipulation library for Swift with a focus on speed, type safety, and a modern Swift API.

## Features

- ⚡️ **High Performance**: Built with a [C11](https://en.wikipedia.org/wiki/C11_(C_standard_revision)) core for optimized parsing with SIMD acceleration where appropriate.
- 🛡️ **Ergonomic, Type Safe APIs**: Rich Swift API with proper type checking and error handling. Easily and safely convert between serialized JSON, type-safe JSON, and native Swift types.
- 🧪 **Well Tested**: Comprehensive test suite ensures correct adherence to the [JSON RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259)
- 📝 **Fully Documented**: Thorough documentation with detailed API references and code samples, available on GitHub Pages.

## Installation

JBird is currently distributed exclusively through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add JBird as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/JBird.git", from: "0.0.0")
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

To add JBird as a dependency to an Xcode Project: 

- Choose `File` → `Add Packages...`
- Enter package URL `https://github.com/vsanthanam/JBird.git` and select your release and of choice.

Other distribution mechanisms like CocoaPods or Carthage may be added in the future.

### Optional Macros

To avoid forcing users to depend on `swift-syntax`, JBird does not include its macros by default. If you wish to include them in your project, you can do so by adding the following to your `Package.swift` file:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBirdMacros", package: "JBird")
    ]
)
```

Doing this will add the `@JSONCodable`, `@JSONKey`, and `@OmitIfNil` macros to your project, which can be used to simplify decoding and encoding JSON into your Swift types. For more information on how to use these macros, see the [documentation](https://usejbird.com/docs/documentation/jbird).

## Performance

JBird is designed for high performance and memory efficiency in mind, with benchmarks showing it to be one of the fastest JSON parsers available for Swift. The core parsing engine is written in C and is heavily optimized, making it significantly faster than pure Swift alternatives.

JBird demonstrates exceptional performance compared to other popular JSON parsing libraries:

- **Speed**: JBird parses JSON 2-5x faster than SwiftyJSON and about 25% faster than Foundation
- **Memory Efficiency**: JBird uses significantly less memory than other parsers (up to a 95% reduction)
- **Resource Usage**: JBird requires dramatically fewer CPU instructions and memory allocations for equivelent payloads
- **Consistent Performance**: JBird maintains its performance advantage across different JSON file sizes and formats

These benchmarks were run on a variety of JSON files ranging from 64KB to 5MB, in both minified and pretty-printed formats. You can explore the comparisons with common Swift JSON libraries (Foundation, SwiftyJSON, etc.) in the `/Benchmarks` directory.

## Usage & Documentation

JBird's documentation is built with [DocC](https://developer.apple.com/documentation/docc) and included in the repository as a DocC archive. The latest version is hosted on [GitHub Pages](https://pages.github.com) and is available [here](https://usejbird.com/docs/documentation/jbird).

Additional installation instructions are available on the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/JBird)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/JBird)

Explore [the documentation](https://usejbird.com/docs/documentation/jbird) for more details.

## License

**JBird** is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
