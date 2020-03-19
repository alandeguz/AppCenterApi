//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupWithUsersResponse: APIModel {

    /** The unique ID of the distribution group */
    public var id: ID

    /** The name of the distribution group used in URLs */
    public var name: String

    /** The distribution group users */
    public var users: [Users]

    /** The count of users in the distribution group */
    public var totalUserCount: Double

    /** The count of non-pending users in the distribution group who will be notified by new releases */
    public var notifiedUserCount: Double

    /** The distribution group aad groups */
    public var aadGroups: [AadGroups]?

    /** Whether the distribution group is public */
    public var isPublic: Bool?

    /** The count of aad groups in the distribution group */
    public var totalGroupsCount: Double?

    public init(id: ID, name: String, users: [Users], totalUserCount: Double, notifiedUserCount: Double, aadGroups: [AadGroups]? = nil, isPublic: Bool? = nil, totalGroupsCount: Double? = nil) {
        self.id = id
        self.name = name
        self.users = users
        self.totalUserCount = totalUserCount
        self.notifiedUserCount = notifiedUserCount
        self.aadGroups = aadGroups
        self.isPublic = isPublic
        self.totalGroupsCount = totalGroupsCount
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case users
        case totalUserCount = "total_user_count"
        case notifiedUserCount = "notified_user_count"
        case aadGroups = "aad_groups"
        case isPublic = "is_public"
        case totalGroupsCount = "total_groups_count"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        name = try container.decode(.name)
        users = try container.decodeArray(.users)
        totalUserCount = try container.decode(.totalUserCount)
        notifiedUserCount = try container.decode(.notifiedUserCount)
        aadGroups = try container.decodeArrayIfPresent(.aadGroups)
        isPublic = try container.decodeIfPresent(.isPublic)
        totalGroupsCount = try container.decodeIfPresent(.totalGroupsCount)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(users, forKey: .users)
        try container.encode(totalUserCount, forKey: .totalUserCount)
        try container.encode(notifiedUserCount, forKey: .notifiedUserCount)
        try container.encodeIfPresent(aadGroups, forKey: .aadGroups)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(totalGroupsCount, forKey: .totalGroupsCount)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupWithUsersResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.users == object.users else { return false }
      guard self.totalUserCount == object.totalUserCount else { return false }
      guard self.notifiedUserCount == object.notifiedUserCount else { return false }
      guard self.aadGroups == object.aadGroups else { return false }
      guard self.isPublic == object.isPublic else { return false }
      guard self.totalGroupsCount == object.totalGroupsCount else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupWithUsersResponse, rhs: DistributionGroupWithUsersResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}