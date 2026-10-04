// Synthesize `JSONRepresentable` conformance with `@JSONRepresentable`, and customize keys and nil handling with `@JSONKey` and `@OmitIfNil`.

// snippet.hide
import JBird

// snippet.show
// snippet.json-representable
@JSONRepresentable struct User {

    let username: String

    let age: Int

    let tags: [String]
}
// snippet.end

// snippet.snake-case-keys
@JSONRepresentable struct Contact {

    @JSONKey(.snakeCase) let firstName: String

    @JSONKey(.snakeCase) let lastName: String

}
// snippet.end

// snippet.custom-key
@JSONRepresentable struct Account {

    @JSONKey("ldap") let name: String
}
// snippet.end

// snippet.omit-if-nil
@JSONRepresentable struct Profile {

    let id: String

    @OmitIfNil var nickname: String?

}
// snippet.end

// snippet.hide
let user = try User(json: ["username": "ada", "age": 36, "tags": ["admin"]])
print(try user.jsonValue.stringify())
let contact = try Contact(json: ["first_name": "Ada", "last_name": "Lovelace"])
print(try contact.jsonValue.stringify())
let account = try Account(json: ["ldap": "alovelace"])
print(try account.jsonValue.stringify())
let profile = try Profile(json: ["id": "1"])
print(try profile.jsonValue.stringify())
