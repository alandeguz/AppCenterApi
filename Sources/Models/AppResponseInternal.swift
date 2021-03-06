//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppResponseInternal: APIModel {

    /** The cutover date of this app */
    public var cutoverFromHockeyappAt: String?

    /** The feature flags that are enabled for this app */
    public var featureFlags: [String]?

    /** The repositories associated with this app */
    public var repositories: [Repositories]?

    /** the permissions for the specified app user */
    public var userPermissions: UserPermissions?

    public class UserPermissions: APIModel {

        public enum Permissions: String, Codable {
            case manager = "manager"
            case developer = "developer"
            case viewer = "viewer"
            case tester = "tester"

            public static let cases: [Permissions] = [
              .manager,
              .developer,
              .viewer,
              .tester,
            ]
        }

        public var permissions: [Permissions]?

        public var userId: ID?

        public init(permissions: [Permissions]? = nil, userId: ID? = nil) {
            self.permissions = permissions
            self.userId = userId
        }

        private enum CodingKeys: String, CodingKey {
            case permissions
            case userId = "user_id"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            permissions = try container.decodeArrayIfPresent(.permissions)
            userId = try container.decodeIfPresent(.userId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(permissions, forKey: .permissions)
            try container.encodeIfPresent(userId, forKey: .userId)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? UserPermissions else { return false }
          guard self.permissions == object.permissions else { return false }
          guard self.userId == object.userId else { return false }
          return true
        }

        public static func == (lhs: UserPermissions, rhs: UserPermissions) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(cutoverFromHockeyappAt: String? = nil, featureFlags: [String]? = nil, repositories: [Repositories]? = nil, userPermissions: UserPermissions? = nil) {
        self.cutoverFromHockeyappAt = cutoverFromHockeyappAt
        self.featureFlags = featureFlags
        self.repositories = repositories
        self.userPermissions = userPermissions
    }

    private enum CodingKeys: String, CodingKey {
        case cutoverFromHockeyappAt = "cutover_from_hockeyapp_at"
        case featureFlags = "feature_flags"
        case repositories
        case userPermissions = "user_permissions"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cutoverFromHockeyappAt = try container.decodeIfPresent(.cutoverFromHockeyappAt)
        featureFlags = try container.decodeArrayIfPresent(.featureFlags)
        repositories = try container.decodeArrayIfPresent(.repositories)
        userPermissions = try container.decodeIfPresent(.userPermissions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(cutoverFromHockeyappAt, forKey: .cutoverFromHockeyappAt)
        try container.encodeIfPresent(featureFlags, forKey: .featureFlags)
        try container.encodeIfPresent(repositories, forKey: .repositories)
        try container.encodeIfPresent(userPermissions, forKey: .userPermissions)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppResponseInternal else { return false }
      guard self.cutoverFromHockeyappAt == object.cutoverFromHockeyappAt else { return false }
      guard self.featureFlags == object.featureFlags else { return false }
      guard self.repositories == object.repositories else { return false }
      guard self.userPermissions == object.userPermissions else { return false }
      return true
    }

    public static func == (lhs: AppResponseInternal, rhs: AppResponseInternal) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
