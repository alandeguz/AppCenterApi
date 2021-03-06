//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GDPRInvitationDetailResponse: APIModel {

    /** The id of the invitation */
    public var invitationId: ID

    public var app: UNKNOWN_ALL_OFF?

    public var organization: Organization?

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

    public init(invitationId: ID, app: UNKNOWN_ALL_OFF? = nil, organization: Organization? = nil) {
        self.invitationId = invitationId
        self.app = app
        self.organization = organization
    }

    private enum CodingKeys: String, CodingKey {
        case invitationId = "invitation_id"
        case app
        case organization
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        invitationId = try container.decode(.invitationId)
        app = try container.decodeIfPresent(.app)
        organization = try container.decodeIfPresent(.organization)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(invitationId, forKey: .invitationId)
        try container.encodeIfPresent(app, forKey: .app)
        try container.encodeIfPresent(organization, forKey: .organization)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GDPRInvitationDetailResponse else { return false }
      guard self.invitationId == object.invitationId else { return false }
      guard self.app == object.app else { return false }
      guard self.organization == object.organization else { return false }
      return true
    }

    public static func == (lhs: GDPRInvitationDetailResponse, rhs: GDPRInvitationDetailResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
