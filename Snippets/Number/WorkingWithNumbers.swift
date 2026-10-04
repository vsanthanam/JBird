// Create `JSON.Number` values from literals or from numeric types, and inspect them.

// snippet.hide
import JBirdCore

// snippet.show
// snippet.literals
let intValue: JSON.Number = 42
let doubleValue: JSON.Number = 3.14
// snippet.end

// snippet.convertible
let fromInt = JSON.Number(42)
let fromDouble = JSON.Number(3.14)
// snippet.end

// snippet.inspecting
let number: JSON.Number = 42

// Check if the number is an integer
if number.isInteger {
    // Extract the integer value
    let intValue = try number.convert(into: Int.self) // 42
    // snippet.hide
    print(intValue)
    // snippet.show
}

// Check if the number is a double
if number.isFloatingPoint {
    // Extract the double value
    let doubleValue = try number.convert(into: Double.self)
    // snippet.hide
    print(doubleValue)
    // snippet.show
}
// snippet.end

// snippet.hide
print(intValue == fromInt, doubleValue == fromDouble)
