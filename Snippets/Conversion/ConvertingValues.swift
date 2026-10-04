// Move between typed `JSON` values and Swift types with the conversion protocols.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.encoding
let tags = ["admin", "editor"]
let json = JSON(tags)        // .array(["admin", "editor"])
let same = tags.jsonValue    // equivalent
// snippet.end

// snippet.decoding
let document: JSON = ["count": 3]
let count = try document["count"].convert(into: Int.self)   // 3
let alsoCount = try Int(json: document["count"])            // 3
// snippet.end

// snippet.conformance
struct User {
    let name: String
    let age: Int
}

extension User: JSONRepresentable {

    var jsonValue: JSON {
        ["name": JSON(name), "age": JSON(age)]
    }

    init(json: JSON) throws {
        name = try json["name"].stringValue
        age = try json["age"].convert(into: Int.self)
    }

}

let user = User(name: "Alice", age: 30)
let encoded = user.jsonValue
let decoded = try User(json: encoded)
// snippet.end

// snippet.hide
print(json == same, count == alsoCount)
print(decoded.name, decoded.age)
