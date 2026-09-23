// JBird
// EncodableWithConfigurationEncoderTests.swift
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

@Suite("EncodableWithConfiguration Encoder Tests")
struct EncodableWithConfigurationEncoderTests {

    // MARK: - Test Models

    struct TaggedValue: EncodableWithConfiguration {
        let value: Int

        struct Configuration {
            let tag: String
        }

        typealias EncodingConfiguration = Configuration

        enum CodingKeys: String, CodingKey {
            case value
            case tag
        }

        func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(value, forKey: .value)
            try container.encode(configuration.tag, forKey: .tag)
        }
    }

    struct TagProvider: EncodingConfigurationProviding {
        static var encodingConfiguration: TaggedValue.Configuration {
            .init(tag: "default")
        }
    }

    // MARK: - Top-Level Encoding

    @Suite("Top-Level Configuration Encoding")
    struct TopLevelTests {

        @Test("Encode with configuration provider type matches Foundation")
        func configurationProviderType() throws {
            let value = TaggedValue(value: 42)
            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: TagProvider.self)
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: TagProvider.self)
            #expect(foundation == jbird)
        }

        @Test("Encode with configuration instance matches Foundation")
        func configurationInstance() throws {
            let value = TaggedValue(value: 42)
            let config = TaggedValue.Configuration(tag: "custom")
            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: config)
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: config)
            #expect(foundation == jbird)
        }

        @Test("Configuration encoding as single value")
        func singleValue() throws {
            struct Configurable: EncodableWithConfiguration {
                let raw: String

                struct Configuration {
                    let uppercase: Bool
                }

                typealias EncodingConfiguration = Configuration

                func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
                    var container = encoder.singleValueContainer()
                    try container.encode(configuration.uppercase ? raw.uppercased() : raw)
                }
            }

            let value = Configurable(raw: "hello")

            let configOn = Configurable.Configuration(uppercase: true)
            let foundationOn = try JSONEncoder().encode(value, configuration: configOn)
            let jbirdOn = try JSON.Encoder().encode(value, configuration: configOn)
            #expect(foundationOn == jbirdOn)
            #expect(String(decoding: jbirdOn, as: UTF8.self) == #""HELLO""#)

            let configOff = Configurable.Configuration(uppercase: false)
            let foundationOff = try JSONEncoder().encode(value, configuration: configOff)
            let jbirdOff = try JSON.Encoder().encode(value, configuration: configOff)
            #expect(foundationOff == jbirdOff)
            #expect(String(decoding: jbirdOff, as: UTF8.self) == #""hello""#)
        }

        @Test("Configuration encoding into unkeyed container")
        func unkeyedContainer() throws {
            struct ConfigurableList: EncodableWithConfiguration {
                let items: [String]

                struct Configuration {
                    let prefix: String
                }

                typealias EncodingConfiguration = Configuration

                func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
                    var container = encoder.unkeyedContainer()
                    for item in items {
                        try container.encode("\(configuration.prefix)_\(item)")
                    }
                }
            }

            let value = ConfigurableList(items: ["a", "b", "c"])
            let config = ConfigurableList.Configuration(prefix: "item")

            let foundation = try JSONEncoder().encode(value, configuration: config)
            let jbird = try JSON.Encoder().encode(value, configuration: config)
            #expect(foundation == jbird)
        }

    }

    // MARK: - Formatting & Strategy Integration

    @Suite("Configuration Encoding With Strategies")
    struct StrategyTests {

        @Test("Pretty printed")
        func prettyPrinted() throws {
            let value = TaggedValue(value: 7)
            let config = TaggedValue.Configuration(tag: "pretty")
            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = [.prettyPrinted, .sortedKeys]
            let foundation = try foundationEncoder.encode(value, configuration: config)
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = [.prettyPrinted, .sortedKeys]
            let jbird = try jbirdEncoder.encode(value, configuration: config)
            #expect(foundation == jbird)
        }

        @Test("Without escaping slashes")
        func withoutEscapingSlashes() throws {
            struct SlashValue: EncodableWithConfiguration {
                let path: String

                typealias EncodingConfiguration = Bool

                func encode(to encoder: any Swift.Encoder, configuration: Bool) throws {
                    var container = encoder.singleValueContainer()
                    try container.encode(configuration ? path.uppercased() : path)
                }
            }

            let value = SlashValue(path: "/foo/bar")
            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .withoutEscapingSlashes
            let foundation = try foundationEncoder.encode(value, configuration: false)
            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .withoutEscapingSlashes
            let jbird = try jbirdEncoder.encode(value, configuration: false)
            #expect(foundation == jbird)
        }

        @Test("Snake case key strategy")
        func snakeCaseKeys() throws {
            struct SnakeCaseConfigurable: EncodableWithConfiguration {
                let someValue: Int

                struct Configuration {
                    let extraField: String
                }

                typealias EncodingConfiguration = Configuration

                enum CodingKeys: String, CodingKey {
                    case someValue
                    case extraField
                }

                func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(someValue, forKey: .someValue)
                    try container.encode(configuration.extraField, forKey: .extraField)
                }
            }

            let value = SnakeCaseConfigurable(someValue: 99)
            let config = SnakeCaseConfigurable.Configuration(extraField: "test")

            let foundationEncoder = JSONEncoder()
            foundationEncoder.keyEncodingStrategy = .convertToSnakeCase
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: config)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.keyEncodingStrategy = .convertToSnakeCase
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: config)

            #expect(foundation == jbird)
        }

    }

    // MARK: - Container-Level Configuration Encoding

    @Suite("Container-Level Configuration Encoding")
    struct ContainerTests {

        struct Item: EncodableWithConfiguration {
            let name: String

            struct Configuration {
                let prefix: String
            }

            typealias EncodingConfiguration = Configuration

            func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
                var container = encoder.singleValueContainer()
                try container.encode("\(configuration.prefix)_\(name)")
            }
        }

        struct ItemProvider: EncodingConfigurationProviding {
            static var encodingConfiguration: Item.Configuration {
                .init(prefix: "provided")
            }
        }

        struct KeyedItem: EncodableWithConfiguration {
            let name: String

            struct Configuration {
                let prefix: String
            }

            typealias EncodingConfiguration = Configuration

            enum CodingKeys: String, CodingKey {
                case name
            }

            func encode(to encoder: any Swift.Encoder, configuration: Configuration) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode("\(configuration.prefix)_\(name)", forKey: .name)
            }
        }

        struct KeyedItemProvider: EncodingConfigurationProviding {
            static var encodingConfiguration: KeyedItem.Configuration {
                .init(prefix: "provided")
            }
        }

        @Test("Unkeyed container encode with configuration instance")
        func unkeyedConfigurationInstance() throws {
            struct ItemList: EncodableWithConfiguration {
                let items: [Item]

                typealias EncodingConfiguration = Item.Configuration

                func encode(to encoder: any Swift.Encoder, configuration: Item.Configuration) throws {
                    var container = encoder.unkeyedContainer()
                    for item in items {
                        try container.encode(item, configuration: configuration)
                    }
                }
            }

            let value = ItemList(items: [Item(name: "a"), Item(name: "b")])
            let config = Item.Configuration(prefix: "test")

            let foundation = try JSONEncoder().encode(value, configuration: config)
            let jbird = try JSON.Encoder().encode(value, configuration: config)
            #expect(foundation == jbird)
        }

        @Test("Unkeyed container encode with configuration provider type")
        func unkeyedConfigurationProviderType() throws {
            struct ItemList: EncodableWithConfiguration {
                let items: [Item]

                typealias EncodingConfiguration = Item.Configuration

                func encode(to encoder: any Swift.Encoder, configuration: Item.Configuration) throws {
                    var container = encoder.unkeyedContainer()
                    for item in items {
                        try container.encode(item, configuration: ItemProvider.self)
                    }
                }
            }

            let value = ItemList(items: [Item(name: "x"), Item(name: "y")])
            let config = Item.Configuration(prefix: "ignored")

            let foundation = try JSONEncoder().encode(value, configuration: config)
            let jbird = try JSON.Encoder().encode(value, configuration: config)
            #expect(foundation == jbird)
        }

        @Test("Keyed container encode with configuration instance using single value type")
        func keyedConfigurationSingleValue() throws {
            struct ItemMap: EncodableWithConfiguration {
                let first: Item
                let second: Item

                typealias EncodingConfiguration = Item.Configuration

                enum CodingKeys: String, CodingKey {
                    case first
                    case second
                }

                func encode(to encoder: any Swift.Encoder, configuration: Item.Configuration) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(first, forKey: .first, configuration: configuration)
                    try container.encode(second, forKey: .second, configuration: configuration)
                }
            }

            let value = ItemMap(first: Item(name: "a"), second: Item(name: "b"))
            let config = Item.Configuration(prefix: "keyed")

            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: config)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: config)

            #expect(foundation == jbird)
        }

        @Test("Keyed container encode with configuration instance")
        func keyedConfigurationInstance() throws {
            struct ItemMap: EncodableWithConfiguration {
                let first: KeyedItem
                let second: KeyedItem

                typealias EncodingConfiguration = KeyedItem.Configuration

                enum CodingKeys: String, CodingKey {
                    case first
                    case second
                }

                func encode(to encoder: any Swift.Encoder, configuration: KeyedItem.Configuration) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(first, forKey: .first, configuration: configuration)
                    try container.encode(second, forKey: .second, configuration: configuration)
                }
            }

            let value = ItemMap(first: KeyedItem(name: "a"), second: KeyedItem(name: "b"))
            let config = KeyedItem.Configuration(prefix: "keyed")

            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: config)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: config)

            #expect(foundation == jbird)
        }

        @Test("Keyed container encode with configuration provider type")
        func keyedConfigurationProviderType() throws {
            struct ItemMap: EncodableWithConfiguration {
                let first: KeyedItem
                let second: KeyedItem

                typealias EncodingConfiguration = KeyedItem.Configuration

                enum CodingKeys: String, CodingKey {
                    case first
                    case second
                }

                func encode(to encoder: any Swift.Encoder, configuration: KeyedItem.Configuration) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(first, forKey: .first, configuration: KeyedItemProvider.self)
                    try container.encode(second, forKey: .second, configuration: KeyedItemProvider.self)
                }
            }

            let value = ItemMap(first: KeyedItem(name: "a"), second: KeyedItem(name: "b"))
            let config = KeyedItem.Configuration(prefix: "ignored")

            let foundationEncoder = JSONEncoder()
            foundationEncoder.outputFormatting = .sortedKeys
            let foundation = try foundationEncoder.encode(value, configuration: config)

            let jbirdEncoder = JSON.Encoder()
            jbirdEncoder.outputFormatting = .sortedKeys
            let jbird = try jbirdEncoder.encode(value, configuration: config)

            #expect(foundation == jbird)
        }

    }

    // MARK: - Sendable

    @Suite("Concurrent Configuration Encoding")
    struct SendableTests {

        @Test("Concurrent encoding with different configurations")
        func concurrentEncoding() async throws {
            let encoder = JSON.Encoder()
            encoder.outputFormatting = .sortedKeys
            try await withThrowingTaskGroup(of: Data.self) { group in
                for i in 0..<100 {
                    group.addTask {
                        let value = TaggedValue(value: i)
                        let config = TaggedValue.Configuration(tag: "task-\(i)")
                        return try encoder.encode(value, configuration: config)
                    }
                }
                var results = [Data]()
                for try await result in group {
                    results.append(result)
                }
                #expect(results.count == 100)
            }
        }

    }

    // MARK: - Super Encoder + Single Value Container

    @Suite("Super Encoder Single Value Cleanup")
    struct SuperEncoderCleanupTests {

        @Test("Unkeyed superEncoder with singleValueContainer does not crash")
        func unkeyedSuperEncoderSingleValue() async throws {
            await #expect(processExitsWith: .success) {
                struct Wrapper: Encodable {
                    let inner: Inner

                    struct Inner: Encodable {
                        let value: String

                        func encode(to encoder: any Swift.Encoder) throws {
                            var container = encoder.singleValueContainer()
                            try container.encode(value)
                        }
                    }

                    func encode(to encoder: any Swift.Encoder) throws {
                        var container = encoder.unkeyedContainer()
                        try inner.encode(to: container.superEncoder())
                    }
                }

                let value = Wrapper(inner: .init(value: "hello"))
                _ = try JSON.Encoder().encode(value)
            }
        }

        @Test("Keyed superEncoder with singleValueContainer does not crash")
        func keyedSuperEncoderSingleValue() async throws {
            await #expect(processExitsWith: .success) {
                struct Wrapper: Encodable {
                    let inner: Inner

                    enum CodingKeys: String, CodingKey {
                        case inner
                    }

                    struct Inner: Encodable {
                        let value: String

                        func encode(to encoder: any Swift.Encoder) throws {
                            var container = encoder.singleValueContainer()
                            try container.encode(value)
                        }
                    }

                    func encode(to encoder: any Swift.Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try inner.encode(to: container.superEncoder(forKey: .inner))
                    }
                }

                let value = Wrapper(inner: .init(value: "hello"))
                let encoder = JSON.Encoder()
                encoder.outputFormatting = .sortedKeys
                let jbird = try encoder.encode(value)
                let foundation = try {
                    let encoder = JSONEncoder()
                    encoder.outputFormatting = .sortedKeys
                    return try encoder.encode(value)
                }()
                precondition(jbird == foundation)
            }
        }

        @Test("Unkeyed superEncoder with singleValueContainer matches Foundation")
        func unkeyedSuperEncoderSingleValueParity() async throws {
            await #expect(processExitsWith: .success) {
                struct Wrapper: Encodable {
                    let values: [String]

                    func encode(to encoder: any Swift.Encoder) throws {
                        var container = encoder.unkeyedContainer()
                        for value in values {
                            let superEnc = container.superEncoder()
                            var svc = superEnc.singleValueContainer()
                            try svc.encode(value)
                        }
                    }
                }

                let value = Wrapper(values: ["a", "b", "c"])
                let foundation = try JSONEncoder().encode(value)
                let jbird = try JSON.Encoder().encode(value)
                precondition(foundation == jbird)
            }
        }

    }

}
