//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Subscription information */
public class Subscription: APIModel {

    /** Is the subscription currently active? */
    public var active: Bool?

    /** The number of days left in the subscription */
    public var daysLeft: Double?

    /** The date the subscription will end or ended */
    public var endsAt: String?

    /** Id of the subscription */
    public var id: ID?

    /** The date the subscription began */
    public var startsAt: String?

    public var tier: Tier?

    /** Subscription information */
    public class Tier: APIModel {

        /** The name of the tier */
        public var name: String?

        public init(name: String? = nil) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decodeIfPresent(.name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(name, forKey: .name)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Tier else { return false }
          guard self.name == object.name else { return false }
          return true
        }

        public static func == (lhs: Tier, rhs: Tier) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(active: Bool? = nil, daysLeft: Double? = nil, endsAt: String? = nil, id: ID? = nil, startsAt: String? = nil, tier: Tier? = nil) {
        self.active = active
        self.daysLeft = daysLeft
        self.endsAt = endsAt
        self.id = id
        self.startsAt = startsAt
        self.tier = tier
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case daysLeft
        case endsAt
        case id
        case startsAt
        case tier
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        active = try container.decodeIfPresent(.active)
        daysLeft = try container.decodeIfPresent(.daysLeft)
        endsAt = try container.decodeIfPresent(.endsAt)
        id = try container.decodeIfPresent(.id)
        startsAt = try container.decodeIfPresent(.startsAt)
        tier = try container.decodeIfPresent(.tier)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(daysLeft, forKey: .daysLeft)
        try container.encodeIfPresent(endsAt, forKey: .endsAt)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(startsAt, forKey: .startsAt)
        try container.encodeIfPresent(tier, forKey: .tier)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Subscription else { return false }
      guard self.active == object.active else { return false }
      guard self.daysLeft == object.daysLeft else { return false }
      guard self.endsAt == object.endsAt else { return false }
      guard self.id == object.id else { return false }
      guard self.startsAt == object.startsAt else { return false }
      guard self.tier == object.tier else { return false }
      return true
    }

    public static func == (lhs: Subscription, rhs: Subscription) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}