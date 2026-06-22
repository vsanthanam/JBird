# ``JSON/Pointer``

## Overview

A JSON Pointer ([RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901)) is a UTF-8 encoded string identifying a single value within a JSON document.

A pointer contains a sequence of *reference tokens*. Each token is preceded by a forward slash (`/`); the empty string is a valid pointer that refers to the whole document.

```swift
let pointer = try JSON.Pointer("/users/0/name")
print(pointer.tokens)  // ["users", "0", "name"]
```

Every Unicode code point is permitted in a token except `/` and `~`, which are escaped as `~1` and `~0`, respectively.

A pointer has two textual representations: the [string form](https://datatracker.ietf.org/doc/html/rfc6901#section-5) (`/users/0/name`) and the [URI fragment form](https://datatracker.ietf.org/doc/html/rfc6901#section-6) (`#/users/0/name`). ``init(_:)-(String)`` parses either automatically — a leading `#` selects the URI fragment form — and the ``string`` and ``uriFragment`` properties produce each representation on output.

See [RFC 6901](https://datatracker.ietf.org/doc/html/rfc6901) for more information.

## Topics

### Creating Pointers

- ``init(tokens:)``
- ``init(_:)-(String)``
- ``init(_:)-(Data)``
- ``wholeDocument``

### Introspection

- ``Token``
- ``tokens``
- ``isWholeDocument``

### Manipulating Pointers

- ``appending(_:)``
- ``append(_:)``

### Textual Representations

- ``string``
- ``uriFragment``

### Literal Expression Support

- ``ArrayLiteralElement``
- ``init(arrayLiteral:)``
