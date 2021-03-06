//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppMembership: APIModel {

    public enum Origin: String, Codable {
        case appcenter = "appcenter"
        case hockeyapp = "hockeyapp"
        case codepush = "codepush"
        case testcloud = "testcloud"
        case hockeyappDogfood = "hockeyapp-dogfood"

        public static let cases: [Origin] = [
          .appcenter,
          .hockeyapp,
          .codepush,
          .testcloud,
          .hockeyappDogfood,
        ]
    }

    public enum SourceType: String, Codable {
        case user = "user"
        case org = "org"
        case distributionGroup = "distribution_group"
        case team = "team"
        case release = "release"

        public static let cases: [SourceType] = [
          .user,
          .org,
          .distributionGroup,
          .team,
          .release,
        ]
    }

    public var appId: String?

    public var origin: Origin?

    public var permissions: [String]?

    public var sourceId: String?

    public var sourceType: SourceType?

    public var userId: String?

    public init(appId: String? = nil, origin: Origin? = nil, permissions: [String]? = nil, sourceId: String? = nil, sourceType: SourceType? = nil, userId: String? = nil) {
        self.appId = appId
        self.origin = origin
        self.permissions = permissions
        self.sourceId = sourceId
        self.sourceType = sourceType
        self.userId = userId
    }

    private enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case origin
        case permissions
        case sourceId = "source_id"
        case sourceType = "source_type"
        case userId = "user_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decodeIfPresent(.appId)
        origin = try container.decodeIfPresent(.origin)
        permissions = try container.decodeArrayIfPresent(.permissions)
        sourceId = try container.decodeIfPresent(.sourceId)
        sourceType = try container.decodeIfPresent(.sourceType)
        userId = try container.decodeIfPresent(.userId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(origin, forKey: .origin)
        try container.encodeIfPresent(permissions, forKey: .permissions)
        try container.encodeIfPresent(sourceId, forKey: .sourceId)
        try container.encodeIfPresent(sourceType, forKey: .sourceType)
        try container.encodeIfPresent(userId, forKey: .userId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppMembership else { return false }
      guard self.appId == object.appId else { return false }
      guard self.origin == object.origin else { return false }
      guard self.permissions == object.permissions else { return false }
      guard self.sourceId == object.sourceId else { return false }
      guard self.sourceType == object.sourceType else { return false }
      guard self.userId == object.userId else { return false }
      return true
    }

    public static func == (lhs: AppMembership, rhs: AppMembership) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
