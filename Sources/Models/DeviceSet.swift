//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The name and devices of the device set */
public class DeviceSet: APIModel {

    /** Identifier of the device set */
    public var id: String

    /** Name of the device set */
    public var name: String

    /** The owner of a device set */
    public var owner: Owner

    public var deviceConfigurations: [DeviceConfigurations]

    /** The number of manufacturers in the device set's device selection */
    public var manufacturerCount: Double?

    /** The number of os versions in the device set's device selection */
    public var osVersionCount: Double?

    /** Slug of the device set */
    public var slug: String?

    /** The name and devices of the device set */
    public class Owner: APIModel {

        /** Type of account */
        public var type: String

        /** Account ID */
        public var id: String

        /** Name of the account */
        public var name: String

        /** Display name of the account */
        public var displayName: String?

        public init(type: String, id: String, name: String, displayName: String? = nil) {
            self.type = type
            self.id = id
            self.name = name
            self.displayName = displayName
        }

        private enum CodingKeys: String, CodingKey {
            case type
            case id
            case name
            case displayName
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(.type)
            id = try container.decode(.id)
            name = try container.decode(.name)
            displayName = try container.decodeIfPresent(.displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(type, forKey: .type)
            try container.encode(id, forKey: .id)
            try container.encode(name, forKey: .name)
            try container.encodeIfPresent(displayName, forKey: .displayName)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Owner else { return false }
          guard self.type == object.type else { return false }
          guard self.id == object.id else { return false }
          guard self.name == object.name else { return false }
          guard self.displayName == object.displayName else { return false }
          return true
        }

        public static func == (lhs: Owner, rhs: Owner) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(id: String, name: String, owner: Owner, deviceConfigurations: [DeviceConfigurations], manufacturerCount: Double? = nil, osVersionCount: Double? = nil, slug: String? = nil) {
        self.id = id
        self.name = name
        self.owner = owner
        self.deviceConfigurations = deviceConfigurations
        self.manufacturerCount = manufacturerCount
        self.osVersionCount = osVersionCount
        self.slug = slug
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case owner
        case deviceConfigurations
        case manufacturerCount
        case osVersionCount
        case slug
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        name = try container.decode(.name)
        owner = try container.decode(.owner)
        deviceConfigurations = try container.decodeArray(.deviceConfigurations)
        manufacturerCount = try container.decodeIfPresent(.manufacturerCount)
        osVersionCount = try container.decodeIfPresent(.osVersionCount)
        slug = try container.decodeIfPresent(.slug)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(owner, forKey: .owner)
        try container.encode(deviceConfigurations, forKey: .deviceConfigurations)
        try container.encodeIfPresent(manufacturerCount, forKey: .manufacturerCount)
        try container.encodeIfPresent(osVersionCount, forKey: .osVersionCount)
        try container.encodeIfPresent(slug, forKey: .slug)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceSet else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.owner == object.owner else { return false }
      guard self.deviceConfigurations == object.deviceConfigurations else { return false }
      guard self.manufacturerCount == object.manufacturerCount else { return false }
      guard self.osVersionCount == object.osVersionCount else { return false }
      guard self.slug == object.slug else { return false }
      return true
    }

    public static func == (lhs: DeviceSet, rhs: DeviceSet) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}