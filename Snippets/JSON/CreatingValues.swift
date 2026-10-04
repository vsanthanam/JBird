// Create a typed `JSON` value with the enumeration cases, or with Swift literals.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.cases
let steve = JSON.object(
    [
        "first_name": .string("Steve"),
        "last_name": .string("Jobs"),
        "founded_apple": .bool(true),
        "patent_count": .number(JSON.Number(317))
    ]
)
// snippet.end

// snippet.literals
let steveFromLiterals: JSON = [
    "first_name": "Steve",
    "last_name": "Jobs",
    "founded_apple": true,
    "patent_count": 317
]
// snippet.end

// snippet.hide
print(steve == steveFromLiterals)
