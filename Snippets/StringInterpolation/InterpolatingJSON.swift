// Embed the serialized text of a JSON value in a string with the `\(json:)` interpolation.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.interpolation
let user: JSON = ["name": "Ada", "id": 42]
let message = "payload: \(json: user)"
// "payload: {\"id\":42,\"name\":\"Ada\"}"
// snippet.end

// snippet.interpolation-options
let pretty = try "payload: \(json: user, options: [.prettyPrinted, .fragmentsAllowed])"
// snippet.end

// snippet.hide
print(message)
print(pretty)
