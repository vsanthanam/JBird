// Throwaway probe for https://github.com/vsanthanam/JBird/issues/467. Not for landing.
import Synchronization

nonisolated(unsafe) var mutexProbeLive = 0
final class MutexProbeObj { init() { mutexProbeLive += 1 }; deinit { mutexProbeLive -= 1 } }

func mutexProbeFlags(_ t: any ~Copyable.Type) -> String {
    let w = MemoryLayout<Int>.size
    let md = unsafeBitCast(t, to: UnsafeRawPointer.self)
    let vwt = md.load(fromByteOffset: -w, as: UnsafeRawPointer.self)
    let f = vwt.load(fromByteOffset: 10 * w, as: UInt32.self)
    return "flags=0x\(String(f, radix: 16)) isNonPOD=\(f & 0x0001_0000 != 0) isNonBitwiseTakable=\(f & 0x0010_0000 != 0)"
}

@available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
struct MutexProbeWrap<V>: ~Copyable { let m: Mutex<V>; init(_ v: consuming sending V) { m = Mutex(v) } }
@available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
final class MutexProbeHolder<V>: @unchecked Sendable { let m: Mutex<V>; init(_ v: consuming sending V) { m = Mutex(v) } }
struct MutexProbePlain<V>: ~Copyable { var v: V }

@available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *)
enum MutexProbes {
    // Specializable (optimizer may specialize at -O)
    @inline(never) static func genericDeinit<V>(_ v: consuming sending V) {
        let p = UnsafeMutablePointer<Mutex<V>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); p.deinitialize(count: 1); p.deallocate()
    }
    @inline(never) static func genericMove<V>(_ v: consuming sending V) {
        let p = UnsafeMutablePointer<Mutex<V>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); _ = p.move(); p.deallocate()
    }
    // Never specialized: models a generic used across a module boundary at -O
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecDeinit<V>(_ v: consuming sending V) {
        let p = UnsafeMutablePointer<Mutex<V>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); p.deinitialize(count: 1); p.deallocate()
    }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecMove<V>(_ v: consuming sending V) {
        let p = UnsafeMutablePointer<Mutex<V>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); _ = p.move(); p.deallocate()
    }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecRawMove<V>(_ v: consuming sending V) {
        // Exactly the shape used by CompatibilityMutex after the fix
        let raw = UnsafeMutableRawPointer(UnsafeMutablePointer<Mutex<V>>.allocate(capacity: 1))
        raw.assumingMemoryBound(to: Mutex<V>.self).initialize(to: Mutex(v))
        let p = raw.assumingMemoryBound(to: Mutex<V>.self)
        _ = p.move(); p.deallocate()
    }
    @inline(never) static func concreteDeinit(_ v: consuming sending MutexProbeObj) {
        let p = UnsafeMutablePointer<Mutex<MutexProbeObj>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); p.deinitialize(count: 1); p.deallocate()
    }
    @inline(never) static func concreteMove(_ v: consuming sending MutexProbeObj) {
        let p = UnsafeMutablePointer<Mutex<MutexProbeObj>>.allocate(capacity: 1)
        p.initialize(to: Mutex(v)); _ = p.move(); p.deallocate()
    }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecLocal<V>(_ v: consuming sending V) { let m = Mutex(v); _ = m }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecStructField<V>(_ v: consuming sending V) { let w = MutexProbeWrap(v); _ = w }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecClassProp<V>(_ v: consuming sending V) { _ = MutexProbeHolder(v) }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func unspecPlainDeinit<V>(_ v: consuming V) {
        let p = UnsafeMutablePointer<MutexProbePlain<V>>.allocate(capacity: 1)
        p.initialize(to: MutexProbePlain(v: v)); p.deinitialize(count: 1); p.deallocate()
    }
    @_semantics("optimize.sil.specialize.generic.never") @inline(never)
    static func flags<V>(_: V.Type) -> [String] {
        ["Mutex<\(V.self)> \(mutexProbeFlags(Mutex<V>.self))",
         "_Cell<\(V.self)> \(mutexProbeFlags(_Cell<V>.self))",
         "Plain<\(V.self)> \(mutexProbeFlags(MutexProbePlain<V>.self))"]
    }
}

func runMutexProbes() -> [String] {
    guard #available(macOS 15.0, macCatalyst 18.0, iOS 18.0, watchOS 11.0, tvOS 18.0, visionOS 2.0, *) else {
        return ["Mutex unavailable"]
    }
    var out: [String] = []
    func check(_ name: String, _ body: () -> Void) {
        let before = mutexProbeLive
        body()
        out.append("\(mutexProbeLive == before ? "OK  " : "LEAK") \(name)")
    }
    check("generic deinitialize [current code shape]") { MutexProbes.genericDeinit(MutexProbeObj()) }
    check("generic move [proposed fix shape]") { MutexProbes.genericMove(MutexProbeObj()) }
    check("unspecialized deinitialize") { MutexProbes.unspecDeinit(MutexProbeObj()) }
    check("unspecialized move") { MutexProbes.unspecMove(MutexProbeObj()) }
    check("unspecialized raw-pointer move [exact fix shape]") { MutexProbes.unspecRawMove(MutexProbeObj()) }
    check("unspecialized deinitialize V=[Obj]") { MutexProbes.unspecDeinit([MutexProbeObj()]) }
    check("unspecialized move V=[Obj]") { MutexProbes.unspecMove([MutexProbeObj()]) }
    check("unspecialized move V=[String: Obj]") { MutexProbes.unspecMove(["a": MutexProbeObj()]) }
    check("concrete deinitialize") { MutexProbes.concreteDeinit(MutexProbeObj()) }
    check("concrete move") { MutexProbes.concreteMove(MutexProbeObj()) }
    check("unspecialized local Mutex") { MutexProbes.unspecLocal(MutexProbeObj()) }
    check("unspecialized ~Copyable struct field") { MutexProbes.unspecStructField(MutexProbeObj()) }
    check("unspecialized class stored property") { MutexProbes.unspecClassProp(MutexProbeObj()) }
    check("unspecialized plain struct deinitialize [control]") { MutexProbes.unspecPlainDeinit(MutexProbeObj()) }
    out += MutexProbes.flags(MutexProbeObj.self)
    out += MutexProbes.flags(Int.self)
    return out
}
