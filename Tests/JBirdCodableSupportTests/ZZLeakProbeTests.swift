// Throwaway probe for https://github.com/vsanthanam/JBird/issues/467. Not for landing.
import Foundation
import JBirdCodableSupport
import JBirdCore
import Testing

private final class Tracker: @unchecked Sendable {
    let onDeinit: @Sendable () -> Void
    init(_ onDeinit: @escaping @Sendable () -> Void) { self.onDeinit = onDeinit }
    deinit { onDeinit() }
}
private final class Flag: @unchecked Sendable { var value = false }

@Suite("ZZ Leak Probe", .serialized)
struct ZZLeakProbeTests {
    @Test func probes() {
        // JBird public API
        let a = Flag()
        do {
            let encoder = JSON.Encoder()
            encoder.userInfo[CodingUserInfoKey(rawValue: "k")!] = Tracker { a.value = true }
        }
        print("PROBE \(a.value ? "OK  " : "LEAK") JBird JSON.Encoder userInfo")
        let b = Flag()
        do {
            let decoder = JSON.Decoder()
            let t = Tracker { b.value = true }
            decoder.dateDecodingStrategy = .custom { _ in _ = t; return Date() }
        }
        print("PROBE \(b.value ? "OK  " : "LEAK") JBird JSON.Decoder custom strategy closure")
        // Raw Mutex probes, compiled into this test target
        for line in runMutexProbes() { print("PROBE", line) }
    }
}
