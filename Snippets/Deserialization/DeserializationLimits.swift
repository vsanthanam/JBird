// Deserialize JSON with custom recursion depth and input size limits.

// snippet.hide
import Foundation
import JBirdCore

let data = Data(
    """
    {
        "users": [
            { "name": "Alice", "roles": ["admin", "editor"] },
            { "name": "Bob", "roles": ["viewer"] }
        ]
    }
    """.utf8
)

// snippet.show
// snippet.recursion-depth
let json = try JSON.withRecursionDepthLimit(1000) {
    // All JSON operations performed within this closure will use a recursion depth limit of 1000
    try JSON(data)
}
// snippet.end

// snippet.recursion-depth-async
let deserialized = try await JSON.withRecursionDepthLimit(1000) {
    // All JSON operations performed within this closure will use a recursion depth limit of 1000
    try await JSON.deserialize(data)
}
// snippet.end

// snippet.input-size
let value = try JSON.withInputSizeLimit(1024 * 1024) {
    // All JSON operations performed within this closure will use an input size limit of 1 MB
    try JSON(data)
}
// snippet.end

// snippet.input-size-async
let parsed = try await JSON.withInputSizeLimit(1024 * 1024) {
    // All JSON operations performed within this closure will use an input size limit of 1 MB
    try await JSON.deserialize(data)
}
// snippet.end

// snippet.hide
print(json == deserialized, value == parsed)
