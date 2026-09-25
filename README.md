# JBird

[![MIT License](https://img.shields.io/github/license/vsanthanam/JBird)](https://github.com/vsanthanam/JBird/blob/main/LICENSE)
[![GitHub Release](https://img.shields.io/github/v/release/vsanthanam/JBird?include_prereleases)](https://github.com/vsanthanam/JBird/releases)
[![Build Status](https://img.shields.io/github/check-runs/vsanthanam/JBird/main)](https://github.com/vsanthanam/JBird/actions)
[![Swift Version](https://img.shields.io/badge/swift-%206.2%20%7C%206.3%20%7C%206.4-critical)](https://swift.org)
[![Xcode](https://img.shields.io/badge/xcode-27.0-blue)](https://developer.apple.com/xcode/)
[![Documentation](https://img.shields.io/badge/documentation-GitHub-8A2BE2)](https://usejbird.com/docs/documentation/jbird)
[![Test Coverage](https://codecov.io/gh/vsanthanam/JBird/graph/badge.svg?token=11GDRKPRLF)](https://codecov.io/gh/vsanthanam/JBird)

A blazing fast, type-safe library for working with JSON in Swift

## Why JBird?

Between the Standard Library and Foundation, Swift developers have two standard methods to read JSON, neither of which are ideal:

- `JSONSerialization` returns values of type `Any`. You must cast and unwrap each value before it can be used.
- `Codable` is type-safe. But your Swift types must have the same structure as the JSON document. It is difficult to read one field from a document that has no matching Swift type.

JBird a complete, standardized way to work with JSON documents in Swift that solves both of these issues, and then some. It stores a JSON document as a Swift value of type `JSON`. You can read, move through, and change this value directly. The compiler checks the types at each step. A parser written in C reads the document into this value.

JBird can also convert a `JSON` value to and from your own Swift types. This includes an encoder and a decoder that you can use in place of `JSONEncoder` and `JSONDecoder`.

```swift
// Foundation: cast and unwrap at each level
if let root = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
   let user = root["user"] as? [String: Any],
   let name = user["name"] as? String {
    // ...finally usable
}

// JBird: read the value in one expression
let json = try JSON(data)
let name: String = try json["user"]["name"]
```

For more information, see [the documentation](https://www.usejbird.com/docs/documentation/jbird/whyjbird).

## Features

JBird is organized around five capabilities, all built on the same `JSON` value type — so they share a consistent, type-safe API and compose freely.

### A type-safe model for creating and manipulating JSON

`JSON` is an enum with one case per JSON valid type (`null`, `bool`, `number`, `string`, `array`, `object`).

```swift
public enum JSON {
    case null
    case bool(Bool)
    case number(Number)
    case string(String)
    case array([JSON])
    case object([String: JSON])
}
```

It conforms to the standard `ExpressibleBy*Literal` protocols, so you build values using ordinary Swift literals:

```swift
var user: JSON = [
    "name": "Alice",
    "age": 30,
    "active": true,
    "roles": ["admin", "editor"],
]
```

Read values through throwing, typed accessors and subscripts. Subscripts chain across nested objects and arrays, and can convert to a concrete type inline:

```swift
let name = try user["name"].convert(to: String.self)    // String
let firstRole: String = try user["roles"][0]            // String, via type inference
let age = try user["age", as: Int.self]                 // Int

if user.containsValue(forKey: "email") { /* ... */ }
```

Mutate in place — set keys, append to arrays, merge, and remove — without rebuilding intermediate containers:

```swift
try user.setValue(31, forKey: "age")
try user["roles"].append("reviewer")
try user.removeValue(forKey: "active")
try user.merge(["verified": true], uniquingKeysWith: { _, new in new })
```

### A blazing fast JSON serializer and deserializer

Parsing and serialization are backed by a hand-written C. It works directly with the `JSON` model, with no intermediate `Any` representation to slow things down.

```swift
// Deserialize from Data or String
let json = try JSON(data)
let fromString = try JSON(jsonString: #"{"ok":true}"#)

// Serialize to Data or String
let data = try json.serialize()
let string = try json.stringify()
```

Both directions can be customized for control over things like pretty-printing, key sorting, and duplicate-key handling. Cancellable `async` variants are available for large payloads.

### Conversion between typed JSON and Swift types

JBird defines a small protocol family for bridging typed `JSON` and other Swift types:

- `JSONConvertible` — a type can produce a `JSON` value (`var jsonValue: JSON`)
- `JSONInitializable` — a type can be built from a `JSON` value (`init(json:) throws`)
- `JSONRepresentable` — both of the above

Many standard library types already implement conformance for you out of the box.

```swift
let json = JSON(["a": 1, "b": 2])        // from a Swift dictionary
let dict = try json.convert(into: [String: Int].self)
```

For your own types, the `@JSONRepresentable` macro can leverage the compiler to automatically implement conformance in many / most cases

```swift
@JSONRepresentable
struct Article {
    @JSONKey("article_id") let id: String
    @JSONKey(.snakeCase)   let publishedAt: Date     // -> "published_at"
    @OmitIfNil             let summary: String?
}

let article = try Article(json: json)
let roundTrip = JSON(article)
```

### A result builder for declarative JSON

The `JSON { ... }` result builder constructs values declaratively, with the `=>` operator for object keys, nesting via trailing closures, and full support for `if`/`else`/`for` control flow:

```swift
let payload = JSON {
    "id" => 123
    "profile" => {
        "name" => "Alice"
        if isAdmin {
            "role" => "admin"
        }
    }
    "tags" => {
        for tag in tags {
            tag
        }
    }
}
```

### A drop-in replacement for `JSONEncoder` / `JSONDecoder`

`JSON.Encoder` and `JSON.Decoder` mirror Foundation's `Codable` API surface, so existing `Codable` types work unchanged — while encoding and decoding run through JBird's fast core, no migration required.

```swift
struct Person: Codable {
    let name: String
    let age: Int
}

let encoder = JSON.Encoder()
encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
encoder.keyEncodingStrategy = .convertToSnakeCase
let data = try encoder.encode(Person(name: "Bob", age: 25))

let decoder = JSON.Decoder()
decoder.keyDecodingStrategy = .convertFromSnakeCase
let person = try decoder.decode(Person.self, from: data)
```

The familiar configuration strategies are all present, along with support for `EncodableWithConfiguration` / `DecodableWithConfiguration`.

> The declarative builder, conformance macros, and `Codable` support are exposed as package traits — `DeclarativeAPI`, `ConformanceMacros`, and `CodableSupport` — all enabled by default and individually opt-out.

JBird is rigorously validated against [RFC 8259](https://datatracker.ietf.org/doc/html/rfc8259) by a comprehensive test suite and a software fuzzer.

## Installation

JBird is primarily distributed through the [Swift Package Manager](https://www.swift.org/package-manager/). 

To add JBird as a dependency to an existing Swift package, add the following line of code to the `dependencies` parameter of your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/vsanthanam/JBird.git", from: "2.3.1")
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
| macOS | 6.2, 6.3, and 6.4 | ✅ Supported & Tested |
| Linux (Ubuntu) | 6.2, 6.3, and 6.4 | ✅ Supported & Tested |
| Windows | 6.2, 6.3, and 6.4 | ✅ Supported & Tested |
| WebAssembly | 6.2, 6.3, and 6.4 | ⚠️ Supported (No Tests) |
| Android | 6.2, 6.3, and 6.4 | ⚠️ Supported (No Tests) |

All supported platforms undergo continuous integration testing to ensure compatibility across different environments. Other platforms such as FreeBSD may also work, but are not validated in the built-in GitHub Actions powered CI environment.

For additional installation instructions, see [the documentation](https://www.usejbird.com/docs/documentation/jbird/setup).

## Performance

JBird is designed with performance and memory efficiency in mind, with benchmarks showing it to be one of the fastest JSON parsers available for Swift. The core parsing engine is written in C, and is heavily optimized, making it significantly faster than pure Swift alternatives.

On realistic JSON documents ranging from 64KB to 5MB, in both minified and pretty-printed formats, JBird compares favorably to other popular Swift JSON parsing libraries:

- **Speed**: JBird parses about 2x faster than Foundation's `JSONSerialization`, about 2x faster than Freddy, and 7-8x faster than SwiftyJSON
- **CPU Work**: JBird executes roughly half the CPU instructions of Foundation and Freddy, and about one eighth the instructions of SwiftyJSON, for equivalent payloads
- **Memory Efficiency**: JBird's peak memory use is 85-90% lower than Foundation's and 60-70% lower than SwiftyJSON's, and on par with Freddy's
- **Allocations**: JBird performs about 30% fewer heap allocations than Foundation and about 50% fewer than SwiftyJSON
- **Consistent Performance**: JBird's advantage holds steady across file sizes and formats, and grows on string-heavy inputs, where it is 8-11x faster than every library measured

You can explore the full comparisons with Foundation, Freddy, and SwiftyJSON, including percentile breakdowns for wall clock time, throughput, instructions, memory, and allocations, in the `/Benchmarks` directory.

## Usage & Documentation

JBird's documentation is built with [DocC](https://developer.apple.com/documentation/docc) and included wich each release as a DocC archive. The latest version is hosted on [GitHub Pages](https://pages.github.com) and is available [here](https://usejbird.com/docs/documentation/jbird).

Additional information is available on the [Swift Package Index](https://swiftpackageindex.com/vsanthanam/JBird)

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/vsanthanam/JBird)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fvsanthanam%2FJBird%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/vsanthanam/JBird)

Explore [the documentation](https://usejbird.com/docs/documentation/jbird) for more details.

## License

**JBird** is available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License). See the [LICENSE](https://github.com/vsanthanam/JBird/blob/main/LICENSE) file for more information.
