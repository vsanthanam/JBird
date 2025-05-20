# Why JBird?

@Metadata {
    @PageKind(article)
}

Preserve type safety when manipulating unstructured JSON

## Working with unstructured JSON

Swift application developers often need to consume JSON data from an endpoint in their applications. If you know the shape of data ahead of time, Swift provides you `Codable`, which is a fast and convenient to use JSON data in a type-safe manner. But what about instructured data?

Apple's Foundation framework provides `JSONSerialization` for working with unstructered JSON in Swift, but it comes with several significant limitations that can impact developer productivity and code quality:

#### Untyped APIs leads to excessive casting

Foundation's JSONSerialization returns ambiguous `Any` types that require extensive type checking and casting:

```swift
// Foundation approach
if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
   let name = json["name"] as? String,
   let age = json["age"] as? Int,
   let isActive = json["isActive"] as? Bool {
   // Finally use the values
}
```

This leads to verbose, error-prone code with numerous conditionals or casts.

#### Cumbersome error handling

Working with nested JSON structures using Foundation requires multiple levels of optional unwrapping and type checking, making error handling difficult and verbose.

#### Mutations are hard

Modifying JSON with Foundation is difficult - you need to recreate entire structures to change a single value:

```swift
// Complex modification with Foundation
var jsonDict = json as? [String: Any] ?? [:]
if var user = jsonDict["user"] as? [String: Any] {
    user["status"] = "active"
    jsonDict["user"] = user
}
// Convert back to Data...
```

#### Degraded performance on older versions of iOS

Foundation's JSONSerialization was, until recently, implemented entirely in Objective-C. While Apple has begun rewriting and open-sourcing Foundation with a Swift-native implementation, devices running iOS 17 or older will continue to use the legacy, slower version. The bridging overhead between Objective-C Foundation types (such as NSString and NSDictionary) and their Swift Standard Library counterparts creates a significant performance bottleneck.

## JBird has superior ergonomics

JBird addresses these issues with a modern, Swift-first approach:

#### Type-safe APIs

JBird provides a fully typed `JSON` enum that accurately represents JSON's data model:

```swift
// JBird approach
let json = try JSON(data)
let name = try json["user"]["name"].stringValue
let age = try json["user"]["age"].intValue
let isActive = try json["user"]["isActive"].boolValue
let user= try json["user"].decode(into: User.self)
```

Type safety is enforced at compile-time, with clear error handling for runtime issues.

#### Intuitive Subscripting

Access nested values with straightforward, chainable syntax:

```swift
// Accessing nested values
let nestedValue: Theme = try json["user"]["settings"]["theme"].decode()
```

#### Simpler Introspection and Mutation

JBird makes modifying JSON simple and intuitive:

```swift
// Simple modification with JBird
var json = try JSON(data)
try json.setValue(true, forKey: "isVerified")
```

The ``JSON`` type also features many collection-like APIs, such as ``JSON/filter(_:)-((JSON)->Bool)``, ``JSON/map(_:)-((JSON)->T)``, ``JSON/isEmpty``, etc., though it is not a true Swift `Collection` due to variadic, unstructured nature of JSON payloads.

#### Blazing Fast Performance

JBird's internal parsing logic is written in C and optimized for maximum efficiency, delivering performance that significantly outpaces Foundation's JSONSerialization, particularly with large JSON payloads. Benchmarks show JBird consistently outperforming other popular Swift JSON libraries like SwiftyJSON and Freddy as well, making it the ideal choice for performance-critical applications.

#### Modern Swift Features

JBird embraces modern Swift, and takes advantage of many of the language's newest features, such as proper compiler-verified data-race safety, `async/await` support, result builders, custom literal expression support, and more! It's designed to feel at home in a Swift-native environment.
