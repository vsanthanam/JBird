# JBird

[![MIT License](https://img.shields.io/github/license/vsanthanam/JBird)](https://github.com/vsanthanam/JBird/blob/main/LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/vsanthanam/JBird?include_prereleases)](https://github.com/vsanthanam/JBird/releases)
[![Build Status](https://img.shields.io/github/check-runs/vsanthanam/JBird/main)](https://github.com/vsanthanam/JBird/actions)
[![Swift Version](https://img.shields.io/badge/swift-%206.1%20%7C%206.2%20%7C%206.3-critical)](https://swift.org)
[![Xcode](https://img.shields.io/badge/xcode-26.4-blue)(https://developer.apple.com/xcode/)
[![Documentation](https://img.shields.io/badge/documentation-GitHub-8A2BE2)](https://usejbird.com/docs/documentation/jbird)
[![Test Coverage](https://codecov.io/gh/vsanthanam/JBird/graph/badge.svg?token=11GDRKPRLF)](https://codecov.io/gh/vsanthanam/JBird)

A blazing fast, type-safe library for working with JSON in Swift

## Why JBird?

JBird brings type safety to unstructured JSON with an elegant, ergonomic API that dramatically improves developer experience compared to Foundation's JSONSerialization:

```swift
// With Foundation, you need to cast and unwrap repeatedly
if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
   let user = json["user"] as? [String: Any],
   let name = user["name"] as? String,
   let isActive = user["isActive"] as? Bool {
   // Finally use the values after multiple casts
}

// With JBird, you get natural, type-safe accessor syntax
let json = try JSON(data)
let name = try json["user"]["name"].stringValue
let isActive = try json["user"]["isActive"].boolValue
let user = try json["user"].convert(into: User.self)
```

JBird also simplifies mutation, which is cumbersome with Foundation:

```swift
// With Foundation, you must re-create and re-assign 
var jsonDict = json as? [String: Any] ?? [:]
if var user = jsonDict["user"] as? [String: Any] {
    user["status"] = "active" 
    jsonDict["user"] = user
}

// With JBird, you can traverse and mutate in a single expression
var mutableJSON = try JSON(data)
try mutableJSON["user"].setValue(true, forKey: "isActive")
```

JBird eliminates the verbosity of type casting chains and nested optional unwrapping, providing a statically typed interface for efficient JSON traversal and modification. For more information see [the documentation](https://www.usejbird.com/docs/documentation/jbird/whyjbird)

## Features

- **Blazing fast performance**: Built with a [C11](https://en.wikipedia.org/wiki/C11_(C_standard_revision)) core for optimized parsing with SIMD acceleration where appropriate.
- **Ergonomic, type-safe APIs**: Rich, Swift-first API with proper type checking and error handling. Easily and safely convert between serialized JSON, type-safe JSON, and native Swift types.
- **Thoroughly tested**: Comprehensive test suite ensures thorough correctness and strict adherence to the [JSON RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259).

## Installation

JBird is primarily distributed through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add JBird as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/JBird.git", from: "2.0.6")
]
```

Then, add the `JBird` dependency to your target or targets of choice:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "JBird", package: "JBird")
    ]
)
```

### Xcode

JBird supports the full range of Apple platforms when working with Xcode, whether you build from source or use an XCFramework:

| Platform | Minimum Version | Status |
|----------|-----------------|--------|
| macOS | 13.0+ | ✅ Supported |
| Mac Catalyst | 16.0+ | ✅ Supported |
| iOS | 16.0+ | ✅ Supported |
| watchOS | 9.0+ | ✅ Supported |
| tvOS | 16.0+ | ✅ Supported |
| visionOS | 1.0+ | ✅ Supported |

### Swift Package Manager

JBird has been tested to work with the following platforms and Swift toolchains:

| Platform | Swift Versions | Status |
|----------|----------------|--------|
| macOS | 6.1, 6.2, and 6.3 | ✅ Supported & Tested |
| Linux (Ubuntu) | 6.1, 6.2, and 6.3 | ✅ Supported & Tested |
| Windows | 6.1, 6.2, and 6.3 | ✅ Supported & Tested |
| WebAssembly | 6.1, 6.2, and 6.3 | ⚠️ Supported (No Tests) |
| Android | 6.1, 6.2, and 6.3 | ⚠️ Supported (No Tests) |

All supported platforms undergo continuous integration testing to ensure compatibility across different environments. Other platforms such as FreeBSD may also work, but are not validated in the built-in GitHub Actions powered CI environment.

For additional installation instructions, see [the documentation](https://www.usejbird.com/docs/documentation/jbird/setup).

## Performance

JBird is designed with performance and memory efficiency in mind, with benchmarks showing it to be one of the fastest JSON parsers available for Swift. The core parsing engine is written in C and is heavily optimized, making it significantly faster than pure Swift alternatives.

JBird demonstrates exceptional performance compared to other popular JSON parsing libraries:

- **Speed**: JBird parses JSON 2-5x faster than SwiftyJSON and about 25% faster than Foundation
- **Memory Efficiency**: JBird uses significantly less memory than other parsers (up to a 95% reduction)
- **Resource Usage**: JBird requires dramatically fewer CPU instructions and memory allocations for equivelent payloads
- **Consistent Performance**: JBird maintains its performance advantage across different JSON file sizes and formats

These benchmarks were run on a variety of JSON files ranging from 64KB to 5MB, in both minified and pretty-printed formats. You can explore the comparisons with common Swift JSON libraries (Foundation, SwiftyJSON, etc.) in the `/Benchmarks` directory.

## Usage & Documentation

JBird's documentation is built with [DocC](https://developer.apple.com/documentation/docc) and included wich each release as a DocC archive. The latest version is hosted on [GitHub Pages](https://pages.github.com) and is available [here](https://usejbird.com/docs/documentation/jbird).

Additional information is available on the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/JBird)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/JBird)

Explore [the documentation](https://usejbird.com/docs/documentation/jbird) for more details.

## License

**JBird** is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
