//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppUserPermissionResponse: APIModel {

    /** The permissions the user has for the app */
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

    /** The creation origin of this app */
    public enum AppOrigin: String, Codable {
        case appcenter = "appcenter"
        case codepush = "codepush"

        public static let cases: [AppOrigin] = [
          .appcenter,
          .codepush,
        ]
    }

    /** The unique id (UUID) of the app */
    public var appId: ID

    /** The unique id (UUID) of the user */
    public var userId: ID

    /** The email of the user */
    public var userEmail: String

    /** The permissions the user has for the app */
    public var permissions: [Permissions]

    /** The creation origin of this app */
    public var appOrigin: AppOrigin

    /** A unique and secret key used to identify the app in communication with the ingestion endpoint for crash reporting and analytics */
    public var appSecret: String

    public init(appId: ID, userId: ID, userEmail: String, permissions: [Permissions], appOrigin: AppOrigin, appSecret: String) {
        self.appId = appId
        self.userId = userId
        self.userEmail = userEmail
        self.permissions = permissions
        self.appOrigin = appOrigin
        self.appSecret = appSecret
    }

    private enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case userId = "user_id"
        case userEmail = "user_email"
        case permissions
        case appOrigin = "app_origin"
        case appSecret = "app_secret"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decode(.appId)
        userId = try container.decode(.userId)
        userEmail = try container.decode(.userEmail)
        permissions = try container.decodeArray(.permissions)
        appOrigin = try container.decode(.appOrigin)
        appSecret = try container.decode(.appSecret)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(appId, forKey: .appId)
        try container.encode(userId, forKey: .userId)
        try container.encode(userEmail, forKey: .userEmail)
        try container.encode(permissions, forKey: .permissions)
        try container.encode(appOrigin, forKey: .appOrigin)
        try container.encode(appSecret, forKey: .appSecret)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppUserPermissionResponse else { return false }
      guard self.appId == object.appId else { return false }
      guard self.userId == object.userId else { return false }
      guard self.userEmail == object.userEmail else { return false }
      guard self.permissions == object.permissions else { return false }
      guard self.appOrigin == object.appOrigin else { return false }
      guard self.appSecret == object.appSecret else { return false }
      return true
    }

    public static func == (lhs: AppUserPermissionResponse, rhs: AppUserPermissionResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
