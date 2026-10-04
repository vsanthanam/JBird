// Compose a `JSON` object declaratively with `JSON.Builder` and the `=>` operator.

// snippet.hide
import JBirdBuilders
import JBirdCore

// snippet.show
// snippet.builder
let json = JSON {
    "name" => "Alice"
    "roles" => ["admin", "editor"]
}
// snippet.end

// snippet.hide
print(try json.stringify())
