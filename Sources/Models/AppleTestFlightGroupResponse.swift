//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** test flight group details for the app. */
public class AppleTestFlightGroupResponse: APIModel {

    /** true if group is in active state. */
    public var active: Bool?

    /** apple id of the group. */
    public var appAdamId: Double?

    /** id of the group. */
    public var id: String?

    /** true if the group is an internal group. */
    public var isInternalGroup: Bool?

    /** name of the group. */
    public var name: String?

    /** provider id of the group. */
    public var providerId: Double?

    public init(active: Bool? = nil, appAdamId: Double? = nil, id: String? = nil, isInternalGroup: Bool? = nil, name: String? = nil, providerId: Double? = nil) {
        self.active = active
        self.appAdamId = appAdamId
        self.id = id
        self.isInternalGroup = isInternalGroup
        self.name = name
        self.providerId = providerId
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case appAdamId
        case id
        case isInternalGroup
        case name
        case providerId
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        active = try container.decodeIfPresent(.active)
        appAdamId = try container.decodeIfPresent(.appAdamId)
        id = try container.decodeIfPresent(.id)
        isInternalGroup = try container.decodeIfPresent(.isInternalGroup)
        name = try container.decodeIfPresent(.name)
        providerId = try container.decodeIfPresent(.providerId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(active, forKey: .active)
        try container.encodeIfPresent(appAdamId, forKey: .appAdamId)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isInternalGroup, forKey: .isInternalGroup)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(providerId, forKey: .providerId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppleTestFlightGroupResponse else { return false }
      guard self.active == object.active else { return false }
      guard self.appAdamId == object.appAdamId else { return false }
      guard self.id == object.id else { return false }
      guard self.isInternalGroup == object.isInternalGroup else { return false }
      guard self.name == object.name else { return false }
      guard self.providerId == object.providerId else { return false }
      return true
    }

    public static func == (lhs: AppleTestFlightGroupResponse, rhs: AppleTestFlightGroupResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
