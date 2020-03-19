//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class UserProfileResponsev2: APIModel {

    /** The creation origin of this user */
    public enum Origin: String, Codable {
        case appcenter = "appcenter"
        case hockeyapp = "hockeyapp"
        case codepush = "codepush"

        public static let cases: [Origin] = [
          .appcenter,
          .hockeyapp,
          .codepush,
        ]
    }

    /** The new admin_role */
    public enum AdminRole: String, Codable {
        case superAdmin = "superAdmin"
        case admin = "admin"
        case devOps = "devOps"
        case customerSupport = "customerSupport"
        case notAdmin = "notAdmin"

        public static let cases: [AdminRole] = [
          .superAdmin,
          .admin,
          .devOps,
          .customerSupport,
          .notAdmin,
        ]
    }

    /** The unique id (UUID) of the user */
    public var id: ID

    /** The full name of the user. Might for example be first and last name */
    public var displayName: String

    /** The email address of the user */
    public var email: String

    /** The unique name that is used to identify the user. */
    public var name: String

    /** The creation origin of this user */
    public var origin: Origin

    /** The new admin_role */
    public var adminRole: AdminRole?

    /** The avatar URL of the user */
    public var avatarURL: String?

    /** User is required to send an old password in order to change the password. */
    public var canChangePassword: Bool?

    /** The created date of the user */
    public var createdAt: String?

    /** The feature flags that are enabled for this user */
    public var featureFlags: [String]?

    /** The date in the future when the user should be checked again for NPS eligibility */
    public var nextNpsSurveyDate: String?

    /** The session hash of the user */
    public var sessionHash: String?

    /** The user's settings */
    public var settings: [String: Any]?

    public init(id: ID, displayName: String, email: String, name: String, origin: Origin, adminRole: AdminRole? = nil, avatarURL: String? = nil, canChangePassword: Bool? = nil, createdAt: String? = nil, featureFlags: [String]? = nil, nextNpsSurveyDate: String? = nil, sessionHash: String? = nil, settings: [String: Any]? = nil) {
        self.id = id
        self.displayName = displayName
        self.email = email
        self.name = name
        self.origin = origin
        self.adminRole = adminRole
        self.avatarURL = avatarURL
        self.canChangePassword = canChangePassword
        self.createdAt = createdAt
        self.featureFlags = featureFlags
        self.nextNpsSurveyDate = nextNpsSurveyDate
        self.sessionHash = sessionHash
        self.settings = settings
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case displayName = "display_name"
        case email
        case name
        case origin
        case adminRole = "admin_role"
        case avatarURL = "avatar_url"
        case canChangePassword = "can_change_password"
        case createdAt = "created_at"
        case featureFlags = "feature_flags"
        case nextNpsSurveyDate = "next_nps_survey_date"
        case sessionHash = "session_hash"
        case settings
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        displayName = try container.decode(.displayName)
        email = try container.decode(.email)
        name = try container.decode(.name)
        origin = try container.decode(.origin)
        adminRole = try container.decodeIfPresent(.adminRole)
        avatarURL = try container.decodeIfPresent(.avatarURL)
        canChangePassword = try container.decodeIfPresent(.canChangePassword)
        createdAt = try container.decodeIfPresent(.createdAt)
        featureFlags = try container.decodeArrayIfPresent(.featureFlags)
        nextNpsSurveyDate = try container.decodeIfPresent(.nextNpsSurveyDate)
        sessionHash = try container.decodeIfPresent(.sessionHash)
        settings = try container.decodeAnyIfPresent(.settings)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(email, forKey: .email)
        try container.encode(name, forKey: .name)
        try container.encode(origin, forKey: .origin)
        try container.encodeIfPresent(adminRole, forKey: .adminRole)
        try container.encodeIfPresent(avatarURL, forKey: .avatarURL)
        try container.encodeIfPresent(canChangePassword, forKey: .canChangePassword)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(featureFlags, forKey: .featureFlags)
        try container.encodeIfPresent(nextNpsSurveyDate, forKey: .nextNpsSurveyDate)
        try container.encodeIfPresent(sessionHash, forKey: .sessionHash)
        try container.encodeAnyIfPresent(settings, forKey: .settings)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UserProfileResponsev2 else { return false }
      guard self.id == object.id else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.email == object.email else { return false }
      guard self.name == object.name else { return false }
      guard self.origin == object.origin else { return false }
      guard self.adminRole == object.adminRole else { return false }
      guard self.avatarURL == object.avatarURL else { return false }
      guard self.canChangePassword == object.canChangePassword else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.featureFlags == object.featureFlags else { return false }
      guard self.nextNpsSurveyDate == object.nextNpsSurveyDate else { return false }
      guard self.sessionHash == object.sessionHash else { return false }
      guard NSDictionary(dictionary: self.settings ?? [:]).isEqual(to: object.settings ?? [:]) else { return false }
      return true
    }

    public static func == (lhs: UserProfileResponsev2, rhs: UserProfileResponsev2) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
