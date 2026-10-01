# Using JSON Pointers

Address and reach individual values deep inside a JSON document.

## Overview

A *JSON Pointer* is a compact string that identifies a single value within a JSON document — the JSON equivalent of a file path. JBird models them with the ``JSON/Pointer`` type, a faithful implementation of [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901). Once you have a pointer you can read, test for, replace, or remove the value it addresses without manually walking the document yourself.

A pointer is a sequence of *reference tokens*. In a document's string form each token is preceded by a forward slash (`/`): the pointer `/users/0/name` selects the `name` of the first element of the `users` array. The empty string is itself a valid pointer that refers to the whole document.

The examples below all operate on this document:

```json
{
    "users": [
        {
            "name": "Alice",
            "roles": ["admin", "editor"]
        },
        {
            "name": "Bob",
            "roles": ["View"]
        }
    ]
}
```

## Creating a pointer

The most common way to build a pointer is to parse it from its textual representation with ``JSON/Pointer/init(_:)-(String)``. Parsing is throwing because not every string is a well-formed pointer:

```swift
let pointer = try JSON.Pointer("/users/0/name")
print(pointer.tokens)  // ["users", "0", "name"]
```

If you already have the individual tokens — for instance, when you assemble a pointer programmatically — pass them directly to ``JSON/Pointer/init(tokens:)``. The tokens are *unescaped*, so you never apply RFC 6901 escaping by hand:

```swift
let pointer = JSON.Pointer(tokens: ["users", "0", "name"])
```

For convenience, ``JSON/Pointer`` is also `ExpressibleByArrayLiteral`, so an array literal of tokens produces a pointer wherever the type is known from context:

```swift
let pointer: JSON.Pointer = ["users", "0", "name"]
```

The empty pointer that refers to the entire document is available as ``JSON/Pointer/wholeDocument``, and ``JSON/Pointer/isWholeDocument`` reports whether a given pointer is that pointer:

```swift
let root = JSON.Pointer.wholeDocument
root.isWholeDocument  // true
root.tokens.isEmpty   // true
```

## Reading values

Resolve a pointer against a document with ``JSON/value(atPointer:)``. It returns the addressed ``JSON`` value, or throws a ``JSON/OperationError`` if the pointer cannot be resolved — for example, when a key is missing or an array index is out of bounds:

```swift
let name = try json.value(atPointer: JSON.Pointer("/users/0/name"))
// "Alice"
```

When you only need to know whether a value is present, use ``JSON/containsValue(atPointer:)``. It never throws and returns a simple `Bool`:

```swift
json.containsValue(atPointer: try JSON.Pointer("/users/0/name"))   // true
json.containsValue(atPointer: try JSON.Pointer("/users/9"))        // false
```

## Modifying values

Pointers also drive in-place mutation. ``JSON/setValue(_:atPointer:)`` replaces the value at a location, creating the final object key if it does not yet exist:

```swift
var document = json
try document.setValue("Alice Smith", atPointer: JSON.Pointer("/users/0/name"))
try document.setValue(false, atPointer: .wholeDocument)  // replaces the entire document
```

Intermediate containers must already exist — `setValue` will not conjure missing objects or arrays along the way, and the final token of an array pointer must be an in-bounds index. To delete a value, use ``JSON/removeValue(atPointer:)``; removing an array element shifts the remaining elements down:

```swift
var document = json
try document.removeValue(atPointer: JSON.Pointer("/users/1"))
// "users" now contains only Alice
```

Removing the whole document is meaningless, so a whole-document pointer throws ``JSON/PatchError/cannotRemoveWholeDocument``. For applying a coordinated batch of such edits, see ``JSON/Patch``, which builds on JSON Pointers to implement [RFC 6902](https://datatracker.ietf.org/doc/html/rfc6902) JSON Patch.

## Escaping reference tokens

Because `/` separates tokens and `~` introduces escapes, a token containing either character is escaped in the textual form: `~` becomes `~0` and `/` becomes `~1` ([RFC 6901 §3](https://datatracker.ietf.org/doc/html/rfc6901#section-3)). JBird handles this for you in both directions — the ``JSON/Pointer/tokens`` you supply and receive are always the literal, unescaped strings:

```swift
let data: JSON = ["a/b": ["c~d": 42]]

// "/" in a key is written as "~1", "~" is written as "~0"
let pointer = try JSON.Pointer("/a~1b/c~0d")
print(pointer.tokens)                         // ["a/b", "c~d"]
try data.value(atPointer: pointer)            // 42

// Building from raw tokens needs no manual escaping
let same = JSON.Pointer(tokens: ["a/b", "c~d"])
print(same.string)                            // "/a~1b/c~0d"
```

## Textual representations

RFC 6901 defines two textual forms, and ``JSON/Pointer`` exposes both. The ``JSON/Pointer/string`` property produces the [string representation](https://datatracker.ietf.org/doc/html/rfc6901#section-5) (also returned by `description`), while ``JSON/Pointer/uriFragment`` produces the percent-encoded [URI fragment representation](https://datatracker.ietf.org/doc/html/rfc6901#section-6) with a leading `#`, suitable for embedding in a URL:

```swift
let pointer = try JSON.Pointer("/users/0/name")
pointer.string       // "/users/0/name"
pointer.uriFragment  // "#/users/0/name"
```

``JSON/Pointer/init(_:)-(String)`` accepts either form and detects which it was given automatically — a leading `#` selects the URI fragment form and percent-decodes the rest:

```swift
try JSON.Pointer("/a b/c")    // string form
try JSON.Pointer("#/a%20b/c") // URI fragment form — both yield tokens ["a b", "c"]
```

## Composing pointers

Pointers are values you can extend. The `appending` family returns a new pointer with additional tokens, which is handy when you hold a pointer to a container and want to address its children:

```swift
let users = try JSON.Pointer("/users")
let firstName = users.appending("0", "name")   // "/users/0/name"
```

You can append the tokens of another pointer just as easily with ``JSON/Pointer/appending(contentsOf:)-(JSON.Pointer)``, and matching mutating `append` methods modify a pointer in place.
