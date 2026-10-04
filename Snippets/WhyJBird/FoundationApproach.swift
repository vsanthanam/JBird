// Read and modify unstructured JSON with Foundation's `JSONSerialization`.

// snippet.hide
import Foundation

let data = Data(
    """
    {
        "name": "Alice",
        "age": 30,
        "isActive": true,
        "user": {
            "name": "Alice",
            "status": "pending"
        }
    }
    """.utf8
)

// snippet.show
// snippet.casting
// Foundation approach
if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
   let name = json["name"] as? String,
   let age = json["age"] as? Int,
   let isActive = json["isActive"] as? Bool {
    // Finally use the values
    // snippet.hide
    print(name, age, isActive)
    // snippet.show
}
// snippet.end

// snippet.hide
let json = try JSONSerialization.jsonObject(with: data)

// snippet.show
// snippet.mutation
// Complex modification with Foundation
var jsonDict = json as? [String: Any] ?? [:]
if var user = jsonDict["user"] as? [String: Any] {
    user["status"] = "active"
    jsonDict["user"] = user
}
// Convert back to Data...
// snippet.end

// snippet.hide
let updated = try JSONSerialization.data(withJSONObject: jsonDict)
print(String(decoding: updated, as: UTF8.self))
