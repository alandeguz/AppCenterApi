//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class OrganizationInvitationDetailResponse: APIModel {

    /** The unique ID (UUID) of the invitation */
    public var id: ID

    /** The email address of the invited user */
    public var email: String

    /** Indicates whether the invited user already exists */
    public var isExistingUser: Bool

    public var invitedBy: InvitedBy

    public var organization: Organization

    /** The role assigned to the invited user */
    public var role: String?

    public class InvitedBy: APIModel {

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

        /** The avatar URL of the user */
        public var avatarURL: String?

        /** User is required to send an old password in order to change the password. */
        public var canChangePassword: Bool?

        /** The permissions the user has for the app */
        public var permissions: [Permissions]?

        public init(id: ID, displayName: String, email: String, name: String, origin: Origin, avatarURL: String? = nil, canChangePassword: Bool? = nil, permissions: [Permissions]? = nil) {
            self.id = id
            self.displayName = displayName
            self.email = email
            self.name = name
            self.origin = origin
            self.avatarURL = avatarURL
            self.canChangePassword = canChangePassword
            self.permissions = permissions
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case displayName = "display_name"
            case email
            case name
            case origin
            case avatarURL = "avatar_url"
            case canChangePassword = "can_change_password"
            case permissions
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(.id)
            displayName = try container.decode(.displayName)
            email = try container.decode(.email)
            name = try container.decode(.name)
            origin = try container.decode(.origin)
            avatarURL = try container.decodeIfPresent(.avatarURL)
            canChangePassword = try container.decodeIfPresent(.canChangePassword)
            permissions = try container.decodeArrayIfPresent(.permissions)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(id, forKey: .id)
            try container.encode(displayName, forKey: .displayName)
            try container.encode(email, forKey: .email)
            try container.encode(name, forKey: .name)
            try container.encode(origin, forKey: .origin)
            try container.encodeIfPresent(avatarURL, forKey: .avatarURL)
            try container.encodeIfPresent(canChangePassword, forKey: .canChangePassword)
            try container.encodeIfPresent(permissions, forKey: .permissions)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? InvitedBy else { return false }
          guard self.id == object.id else { return false }
          guard self.displayName == object.displayName else { return false }
          guard self.email == object.email else { return false }
          guard self.name == object.name else { return false }
          guard self.origin == object.origin else { return false }
          guard self.avatarURL == object.avatarURL else { return false }
          guard self.canChangePassword == object.canChangePassword else { return false }
          guard self.permissions == object.permissions else { return false }
          return true
        }

        public static func == (lhs: InvitedBy, rhs: InvitedBy) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public class Organization: APIModel {

        /** The creation origin of this organization */
        public enum Origin: String, Codable {
            case appcenter = "appcenter"
            case hockeyapp = "hockeyapp"

            public static let cases: [Origin] = [
              .appcenter,
              .hockeyapp,
            ]
        }

        /** The internal unique id (UUID) of the organization. */
        public var id: ID

        /** The display name of the organization */
        public var displayName: String

        /** The slug name of the organization */
        public var name: String

        /** The creation origin of this organization */
        public var origin: Origin

        /** The creation date of this organization */
        public var createdAt: String

        /** The date the organization was last updated at */
        public var updatedAt: String

        /** The URL to a user-uploaded Avatar image */
        public var avatarURL: String?

        public init(id: ID, displayName: String, name: String, origin: Origin, createdAt: String, updatedAt: String, avatarURL: String? = nil) {
            self.id = id
            self.displayName = displayName
            self.name = name
            self.origin = origin
            self.createdAt = createdAt
            self.updatedAt = updatedAt
            self.avatarURL = avatarURL
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case displayName = "display_name"
            case name
            case origin
            case createdAt = "created_at"
            case updatedAt = "updated_at"
            case avatarURL = "avatar_url"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(.id)
            displayName = try container.decode(.displayName)
            name = try container.decode(.name)
            origin = try container.decode(.origin)
            createdAt = try container.decode(.createdAt)
            updatedAt = try container.decode(.updatedAt)
            avatarURL = try container.decodeIfPresent(.avatarURL)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(id, forKey: .id)
            try container.encode(displayName, forKey: .displayName)
            try container.encode(name, forKey: .name)
            try container.encode(origin, forKey: .origin)
            try container.encode(createdAt, forKey: .createdAt)
            try container.encode(updatedAt, forKey: .updatedAt)
            try container.encodeIfPresent(avatarURL, forKey: .avatarURL)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Organization else { return false }
          guard self.id == object.id else { return false }
          guard self.displayName == object.displayName else { return false }
          guard self.name == object.name else { return false }
          guard self.origin == object.origin else { return false }
          guard self.createdAt == object.createdAt else { return false }
          guard self.updatedAt == object.updatedAt else { return false }
          guard self.avatarURL == object.avatarURL else { return false }
          return true
        }

        public static func == (lhs: Organization, rhs: Organization) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(id: ID, email: String, isExistingUser: Bool, invitedBy: InvitedBy, organization: Organization, role: String? = nil) {
        self.id = id
        self.email = email
        self.isExistingUser = isExistingUser
        self.invitedBy = invitedBy
        self.organization = organization
        self.role = role
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case email
        case isExistingUser = "is_existing_user"
        case invitedBy = "invited_by"
        case organization
        case role
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        email = try container.decode(.email)
        isExistingUser = try container.decode(.isExistingUser)
        invitedBy = try container.decode(.invitedBy)
        organization = try container.decode(.organization)
        role = try container.decodeIfPresent(.role)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(email, forKey: .email)
        try container.encode(isExistingUser, forKey: .isExistingUser)
        try container.encode(invitedBy, forKey: .invitedBy)
        try container.encode(organization, forKey: .organization)
        try container.encodeIfPresent(role, forKey: .role)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OrganizationInvitationDetailResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.email == object.email else { return false }
      guard self.isExistingUser == object.isExistingUser else { return false }
      guard self.invitedBy == object.invitedBy else { return false }
      guard self.organization == object.organization else { return false }
      guard self.role == object.role else { return false }
      return true
    }

    public static func == (lhs: OrganizationInvitationDetailResponse, rhs: OrganizationInvitationDetailResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}