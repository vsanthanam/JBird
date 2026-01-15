//
//  File.swift
//  JBird
//
//  Created by Varun Santhanam on 1/14/26.
//

import JBirdCore
import JBirdCodableSupport
import Testing
import Foundation

@Suite("Decoder Tests")
struct DecoderTests {
    
    @Suite("Decode Non Conforming Float Value")
    struct NonConformingFloats {
        
        @Suite("String Replace Strategy")
        struct StringReplaceStrategy {
            
            @Test("Decode Positive Infinity")
            func decodePositiveInfinity() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "Infinity"  
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble == jbirdDouble)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat == jbirdFloat)
            }
            
            @Test("Decode Negative Infinity")
            func decodeNegativeInfinity() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "-Infinity"  
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble == jbirdDouble)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat == jbirdFloat)
            }
            
            @Test("Decode NaN")
            func decodeNan() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                "NaN" 
                """#
                let serialized = Data(payload.utf8)
                let foundationDouble = try foundationDecoder.decode(Double.self, from: serialized)
                let jbirdDouble = try jbirdDecoder.decode(Double.self, from: serialized)
                #expect(foundationDouble.isNaN)
                #expect(jbirdDouble.isNaN)
                let foundationFloat = try foundationDecoder.decode(Float.self, from: serialized)
                let jbirdFloat = try jbirdDecoder.decode(Float.self, from: serialized)
                #expect(foundationFloat.isNaN)
                #expect(jbirdFloat.isNaN)
            }
            
            @Test("Decode Infinity Unkeyed")
            func decodeInfinityUnkeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                ["Infinity", "-Infinity"] 
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([Double].self, from: serialized)
                #expect(foundation == jbird)
            }
            
            @Test("Decode NaN Unkeyed")
            func decodeNanUnkeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                ["NaN"] 
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([Double].self, from: serialized)
                #expect(foundation[0].isNaN)
                #expect(jbird[0].isNaN)
            }
            
            @Test("Decode Infinity Keyed")
            func decodeInfinityKeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                { "bar": "Infinity", "baz": "-Infinity" }    
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([String: Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([String: Double].self, from: serialized)
                #expect(foundation == jbird)
            }
            
            @Test("Decode NaN Keyed")
            func decodeNanKeyed() throws {
                let foundationDecoder = JSONDecoder()
                foundationDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let jbirdDecoder = JSON.Decoder()
                jbirdDecoder.nonConformingFloatDecodingStrategy = .convertFromString(positiveInfinity: "Infinity", negativeInfinity: "-Infinity", nan: "NaN")
                let payload = #"""
                { "foo": "NaN" }   
                """#
                let serialized = Data(payload.utf8)
                let foundation = try foundationDecoder.decode([String: Double].self, from: serialized)
                let jbird = try jbirdDecoder.decode([String: Double].self, from: serialized)
                #expect(foundation["foo"]!.isNaN)
                #expect(jbird["foo"]!.isNaN)
            }
            
        }
        
    }
    
}
