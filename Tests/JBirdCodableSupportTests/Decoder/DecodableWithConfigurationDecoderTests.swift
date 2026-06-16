// JBird
// DecodableWithConfigurationDecoderTests.swift
//
// MIT License
//
// Copyright (c) 2026 Varun Santhanam
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the  Software), to deal
//
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED  AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import Foundation
import JBirdCodableSupport
import JBirdCore
import Testing

@Suite("DecodableWithConfiguration Decoder Tests")
struct DecodableWithConfigurationDecoderTests {

    // MARK: - Test Models

    struct TaggedValue: CodableWithConfiguration, Equatable {
        let value: Int
        let tag: String

        struct Configuration {
            let tag: String
        }

        typealias CodingConfiguration = Configuration
        typealias EncodingConfiguration = Configuration
        typealias DecodingConfiguration = Configuration

        enum CodingKeys: String, CodingKey {
            case value
            case tag
        }

        func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(value, forKey: .value)
            try container.encode(configuration.tag, forKey: .tag)
        }

        init(value: Int, tag: String) {
            self.value = value
            self.tag = tag
        }

        init(from decoder: any Swift.Decoder, configuration: Configuration) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.value = try container.decode(Int.self, forKey: .value)
            self.tag = try container.decode(String.self, forKey: .tag)
        }
    }

    struct TagProvider: EncodingConfigurationProviding, DecodingConfigurationProviding {
        static var encodingConfiguration: TaggedValue.Configuration {
            .init(tag: "default")
        }

        static var decodingConfiguration: TaggedValue.Configuration {
            .init(tag: "default")
        }
    }

    // MARK: - Top-Level Decoding

    @Suite("Top-Level Configuration Decoding")
    struct TopLevelTests {

        @Test("Decode with configuration provider type matches Foundation")
        func configurationProviderType() throws {
            let payload = Data(#"{"value":42,"tag":"default"}"#.utf8)
            let foundation = try JSONDecoder().decode(TaggedValue.self, from: payload, configuration: TagProvider.self)
            let jbird = try JSON.Decoder().decode(TaggedValue.self, from: payload, configuration: TagProvider.self)
            #expect(foundation == jbird)
            #expect(jbird.value == 42)
            #expect(jbird.tag == "default")
        }

        @Test("Decode with configuration instance matches Foundation")
        func configurationInstance() throws {
            let payload = Data(#"{"value":42,"tag":"custom"}"#.utf8)
            let config = TaggedValue.Configuration(tag: "custom")
            let foundation = try JSONDecoder().decode(TaggedValue.self, from: payload, configuration: config)
            let jbird = try JSON.Decoder().decode(TaggedValue.self, from: payload, configuration: config)
            #expect(foundation == jbird)
            #expect(jbird.value == 42)
        }

        @Test("Decode single value with configuration")
        func singleValue() throws {
            struct Configurable: DecodableWithConfiguration, Equatable {
                let value: String

                struct Configuration {
                    let uppercase: Bool
                }

                typealias DecodingConfiguration = Configuration

                init(value: String) {
                    self.value = value
                }

                init(from decoder: any Swift.Decoder, configuration: Configuration) throws {
                    let container = try decoder.singleValueContainer()
                    let raw = try container.decode(String.self)
                    self.value = configuration.uppercase ? raw.uppercased() : raw
                }
            }

            let payload = Data(#""hello""#.utf8)

            let configOn = Configurable.Configuration(uppercase: true)
            let foundationOn = try JSONDecoder().decode(Configurable.self, from: payload, configuration: configOn)
            let jbirdOn = try JSON.Decoder().decode(Configurable.self, from: payload, configuration: configOn)
            #expect(foundationOn == jbirdOn)
            #expect(jbirdOn.value == "HELLO")

            let configOff = Configurable.Configuration(uppercase: false)
            let foundationOff = try JSONDecoder().decode(Configurable.self, from: payload, configuration: configOff)
            let jbirdOff = try JSON.Decoder().decode(Configurable.self, from: payload, configuration: configOff)
            #expect(foundationOff == jbirdOff)
            #expect(jbirdOff.value == "hello")
        }

        @Test("Decode from unkeyed container with configuration")
        func unkeyedContainer() throws {
            struct ConfigurableList: DecodableWithConfiguration, Equatable {
                let items: [String]

                struct Configuration {
                    let prefix: String
                }

                typealias DecodingConfiguration = Configuration

                init(items: [String]) {
                    self.items = items
                }

                init(from decoder: any Swift.Decoder, configuration: Configuration) throws {
                    var container = try decoder.unkeyedContainer()
                    var items = [String]()
                    while !container.isAtEnd {
                        let raw = try container.decode(String.self)
                        items.append("\(configuration.prefix)_\(raw)")
                    }
                    self.items = items
                }
            }

            let payload = Data(#"["a","b","c"]"#.utf8)
            let config = ConfigurableList.Configuration(prefix: "item")

            let foundation = try JSONDecoder().decode(ConfigurableList.self, from: payload, configuration: config)
            let jbird = try JSON.Decoder().decode(ConfigurableList.self, from: payload, configuration: config)
            #expect(foundation == jbird)
            #expect(jbird.items == ["item_a", "item_b", "item_c"])
        }

    }

    // MARK: - Strategy Integration

    @Suite("Configuration Decoding With Strategies")
    struct StrategyTests {

        @Test("Snake case key strategy")
        func snakeCaseKeys() throws {
            struct SnakeCaseConfigurable: DecodableWithConfiguration, Equatable {
                let someValue: Int
                let extraField: String

                struct Configuration {
                    let placeholder: String
                }

                typealias DecodingConfiguration = Configuration

                enum CodingKeys: String, CodingKey {
                    case someValue
                    case extraField
                }

                init(someValue: Int, extraField: String) {
                    self.someValue = someValue
                    self.extraField = extraField
                }

                init(from decoder: any Swift.Decoder, configuration: Configuration) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    self.someValue = try container.decode(Int.self, forKey: .someValue)
                    self.extraField = try container.decodeIfPresent(String.self, forKey: .extraField) ?? configuration.placeholder
                }
            }

            let payload = Data(#"{"some_value":99,"extra_field":"test"}"#.utf8)
            let config = SnakeCaseConfigurable.Configuration(placeholder: "fallback")

            let foundationDecoder = JSONDecoder()
            foundationDecoder.keyDecodingStrategy = .convertFromSnakeCase
            let foundation = try foundationDecoder.decode(SnakeCaseConfigurable.self, from: payload, configuration: config)

            let jbirdDecoder = JSON.Decoder()
            jbirdDecoder.keyDecodingStrategy = .convertFromSnakeCase
            let jbird = try jbirdDecoder.decode(SnakeCaseConfigurable.self, from: payload, configuration: config)

            #expect(foundation == jbird)
            #expect(jbird.someValue == 99)
            #expect(jbird.extraField == "test")
        }

        @Test("Configuration provides default for missing key")
        func configurationDefault() throws {
            struct Defaultable: DecodableWithConfiguration, Equatable {
                let name: String
                let role: String

                struct Configuration {
                    let defaultRole: String
                }

                typealias DecodingConfiguration = Configuration

                enum CodingKeys: String, CodingKey {
                    case name
                    case role
                }

                init(name: String, role: String) {
                    self.name = name
                    self.role = role
                }

                init(from decoder: any Swift.Decoder, configuration: Configuration) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    self.name = try container.decode(String.self, forKey: .name)
                    self.role = try container.decodeIfPresent(String.self, forKey: .role) ?? configuration.defaultRole
                }
            }

            let payload = Data(#"{"name":"Alice"}"#.utf8)
            let config = Defaultable.Configuration(defaultRole: "viewer")

            let foundation = try JSONDecoder().decode(Defaultable.self, from: payload, configuration: config)
            let jbird = try JSON.Decoder().decode(Defaultable.self, from: payload, configuration: config)
            #expect(foundation == jbird)
            #expect(jbird.role == "viewer")
        }

    }

    // MARK: - Round-Trip

    @Suite("Configuration Round-Trip")
    struct RoundTripTests {

        @Test("Round-trip with configuration provider type")
        func roundTripProviderType() throws {
            let original = TaggedValue(value: 7, tag: "default")
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let encoded = try jbirdEncoder.encode(original, configuration: TagProvider.self)
            let decoded = try JSON.Decoder().decode(TaggedValue.self, from: encoded, configuration: TagProvider.self)
            #expect(original == decoded)
        }

        @Test("Round-trip with configuration instance")
        func roundTripInstance() throws {
            let config = TaggedValue.Configuration(tag: "custom")
            let original = TaggedValue(value: 99, tag: "custom")
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let encoded = try jbirdEncoder.encode(original, configuration: config)
            let decoded = try JSON.Decoder().decode(TaggedValue.self, from: encoded, configuration: config)
            #expect(original == decoded)
        }

        @Test("JBird encode, Foundation decode round-trip")
        func jbirdToFoundation() throws {
            let config = TaggedValue.Configuration(tag: "cross")
            let original = TaggedValue(value: 55, tag: "cross")
            let encoded = try JSON.Encoder().encode(original, configuration: config)
            let decoded = try JSONDecoder().decode(TaggedValue.self, from: encoded, configuration: config)
            #expect(original == decoded)
        }

        @Test("Foundation encode, JBird decode round-trip")
        func foundationToJBird() throws {
            let config = TaggedValue.Configuration(tag: "cross")
            let original = TaggedValue(value: 55, tag: "cross")
            let encoded = try JSONEncoder().encode(original, configuration: config)
            let decoded = try JSON.Decoder().decode(TaggedValue.self, from: encoded, configuration: config)
            #expect(original == decoded)
        }

    }

    // MARK: - Sendable

    @Suite("Concurrent Configuration Decoding")
    struct SendableTests {

        @Test("Concurrent decoding with different configurations")
        func concurrentDecoding() async throws {
            let decoder = JSON.Decoder()
            try await withThrowingTaskGroup(of: TaggedValue.self) { group in
                for i in 0..<100 {
                    group.addTask {
                        let payload = Data(#"{"value":\#(i),"tag":"task-\#(i)"}"#.utf8)
                        let config = TaggedValue.Configuration(tag: "task-\(i)")
                        return try decoder.decode(TaggedValue.self, from: payload, configuration: config)
                    }
                }
                var results = [TaggedValue]()
                for try await result in group {
                    results.append(result)
                }
                #expect(results.count == 100)
            }
        }

    }

}
