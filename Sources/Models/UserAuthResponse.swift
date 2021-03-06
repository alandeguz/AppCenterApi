//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class UserAuthResponse: APIModel {

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

    /** The unique id (UUID) of the user */
    public var id: ID

    /** The full name of the user. Might for example be first and last name */
    public var displayName: String

    /** The email address of the user */
    public var email: String

    /** The unique name that is used to identify the user */
    public var name: String

    /** The creation origin of this user */
    public var origin: Origin

    /** The name of the external auth provider */
    public var externalProvider: String?

    /** The user ID given by the external provider */
    public var externalUserId: String?

    public init(id: ID, displayName: String, email: String, name: String, origin: Origin, externalProvider: String? = nil, externalUserId: String? = nil) {
        self.id = id
        self.displayName = displayName
        self.email = email
        self.name = name
        self.origin = origin
        self.externalProvider = externalProvider
        self.externalUserId = externalUserId
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case displayName = "display_name"
        case email
        case name
        case origin
        case externalProvider = "external_provider"
        case externalUserId = "external_user_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        displayName = try container.decode(.displayName)
        email = try container.decode(.email)
        name = try container.decode(.name)
        origin = try container.decode(.origin)
        externalProvider = try container.decodeIfPresent(.externalProvider)
        externalUserId = try container.decodeIfPresent(.externalUserId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(email, forKey: .email)
        try container.encode(name, forKey: .name)
        try container.encode(origin, forKey: .origin)
        try container.encodeIfPresent(externalProvider, forKey: .externalProvider)
        try container.encodeIfPresent(externalUserId, forKey: .externalUserId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UserAuthResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.email == object.email else { return false }
      guard self.name == object.name else { return false }
      guard self.origin == object.origin else { return false }
      guard self.externalProvider == object.externalProvider else { return false }
      guard self.externalUserId == object.externalUserId else { return false }
      return true
    }

    public static func == (lhs: UserAuthResponse, rhs: UserAuthResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
