// Read and modify unstructured JSON with JBird's typed `JSON` value.

// snippet.hide
import Foundation
import JBird

struct User: JSONInitializable {

    let name: String
    let age: Int
    let isActive: Bool

    init(json: JSON) throws {
        name = try json["name"].convert()
        age = try json["age"].convert()
        isActive = try json["isActive"].convert()
    }

}

enum Theme: String, JSONRepresentable {
    case light
    case dark
}

let data = Data(
    """
    {
        "user": {
            "name": "Alice",
            "age": 30,
            "isActive": true,
            "settings": {
                "theme": "dark"
            }
        }
    }
    """.utf8
)

// snippet.show
// snippet.type-safe
// JBird approach
let json = try JSON(data)
let name = try json["user"]["name"].convert(into: String.self)
let age = try json["user"]["age"].convert(into: Int.self)
let isActive = try json["user"]["isActive"].convert(into: Bool.self)
let user = try json["user"].convert(into: User.self)
// snippet.end

// snippet.subscripting
// Accessing nested values
let nestedValue: Theme = try json["user"]["settings"]["theme"].convert()
// snippet.end

// snippet.mutation
// Simple modification with JBird
var document = try JSON(data)
try document.setValue(true, forKey: "isVerified")
// snippet.end

// snippet.hide
print(name, age, isActive, user.name, nestedValue)
print(try document.stringify())
