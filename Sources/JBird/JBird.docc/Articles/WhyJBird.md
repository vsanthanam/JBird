# Why JBird?

@Metadata {
    @PageKind(article)
}

Preserve type safety when manipulating unstructured JSON

## Working with unstructured JSON

Swift application developers often need to consume JSON data from an endpoint. If you know the shape of data ahead of time, Swift provides you with `Codable`, which is a fast and convenient to use JSON data in your application a type-safe manner. But what about instructured data?

Apple's Foundation framework provides `JSONSerialization` for working with unstructered JSON in Swift, but it comes with several significant limitations that can impact developer productivity and runtime safety:

#### Untyped APIs lead to excessive casting

Foundation's `JSONSerialization` returns ambiguous `Any` types that require extensive type checking and casting:

@Snippet(path: "JBird/Snippets/WhyJBird/FoundationApproach", slice: "casting")

This leads to verbose, error-prone code with numerous conditionals and/or casts.

#### Cumbersome error handling

Working with nested JSON structures using Foundation requires multiple levels of optional unwrapping and type checking, making error handling difficult and verbose.

#### Mutations are hard

Modifying JSON with Foundation is difficult - you need to recreate entire structures to change a single value:

@Snippet(path: "JBird/Snippets/WhyJBird/FoundationApproach", slice: "mutation")

#### Degraded performance on older versions of iOS

Foundation's JSONSerialization was, until recently, implemented entirely in Objective-C. While Apple has begun rewriting and open-sourcing Foundation with a Swift-native implementation, devices running iOS 17 or older will continue to use the legacy, slower version. The bridging overhead between Objective-C Foundation types (such as NSString and NSDictionary) and their Swift Standard Library counterparts creates a significant performance bottleneck.

## JBird has superior ergonomics

JBird addresses these issues with a modern, Swift-first approach:

#### Type-safe APIs

JBird provides a fully typed `JSON` enum that accurately represents JSON's data model:

@Snippet(path: "JBird/Snippets/WhyJBird/JBirdApproach", slice: "type-safe")

Type safety is enforced at compile-time, with clear error handling for runtime issues.

#### Intuitive Subscripting

Access nested values with straightforward, chainable syntax:

@Snippet(path: "JBird/Snippets/WhyJBird/JBirdApproach", slice: "subscripting")

#### Simpler Introspection and Mutation

JBird makes modifying JSON simple and intuitive:

@Snippet(path: "JBird/Snippets/WhyJBird/JBirdApproach", slice: "mutation")

The ``/JBirdCore/JSON`` type also features many collection-like APIs, such as ``/JBirdCore/JSON/filter(_:)-((JSON)->Bool)``, ``/JBirdCore/JSON/map(_:)-((JSON)->T)``, ``/JBirdCore/JSON/isEmpty``, etc., though it is not a true Swift `Collection` due to variadic, unstructured nature of JSON payloads.

#### Blazing Fast Performance

JBird's internal parsing logic is written in C and optimized for maximum efficiency, delivering performance that significantly outpaces Foundation's JSONSerialization, particularly with large JSON payloads. Benchmarks show JBird consistently outperforming other popular Swift JSON libraries like SwiftyJSON and Freddy as well, making it the ideal choice for performance-critical applications.

#### Modern Swift Features

JBird embraces modern Swift, and takes advantage of many of the language's newest features, such as proper compiler-verified data-race safety, `async/await` support, result builders, custom literal expression support, and more! It's designed to feel at home in a Swift-native environment.
