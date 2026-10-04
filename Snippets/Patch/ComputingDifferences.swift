// Compute the JSON Patch or JSON Merge Patch that transforms one `JSON` value into another.

// snippet.hide
import JBirdCore

let source: JSON = [
    "name": "Alice",
    "roles": ["admin"],
    "active": true
]

let target: JSON = [
    "name": "Alice Smith",
    "roles": ["admin", "editor"]
]

// snippet.show
// snippet.difference
let patch = source.difference(to: target)
let roundTrips = try source.applying(patch) == target  // true
// snippet.end

// snippet.init-from-to
let samePatch = JSON.Patch(from: source, to: target)
// snippet.end

// snippet.merge-difference
let mergePatch = source.mergeDifference(to: target)
let mergeRoundTrips = source.applying(mergePatch: mergePatch) == target  // true (see the limitation below)
// snippet.end

// snippet.hide
print(roundTrips, samePatch == patch, mergeRoundTrips)
