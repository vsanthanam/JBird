// Create a `JSON.Pointer` from its textual representation, from its tokens, or from an array literal.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.parsing
let pointer = try JSON.Pointer("/users/0/name")
print(pointer.tokens)  // ["users", "0", "name"]
// snippet.end

// snippet.tokens
let fromTokens = JSON.Pointer(tokens: ["users", "0", "name"])
// snippet.end

// snippet.array-literal
let fromLiteral: JSON.Pointer = ["users", "0", "name"]
// snippet.end

// snippet.whole-document
let root = JSON.Pointer.wholeDocument
print(root.isWholeDocument)  // true
print(root.tokens.isEmpty)   // true
// snippet.end

// snippet.hide
print(fromTokens == pointer, fromLiteral == pointer)
