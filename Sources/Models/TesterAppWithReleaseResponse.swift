//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TesterAppWithReleaseResponse: APIModel {

    /** The description of the app */
    public var description: String?

    /** The app's display name. */
    public var displayName: String?

    /** A URL to the app's icon. */
    public var iconURL: String?

    /** The unique ID (UUID) of the app */
    public var id: String?

    /** The app's name. */
    public var name: String?

    /** The app's os. */
    public var os: String?

    /** The information about the app's owner */
    public var owner: Owner?

    public var release: UNKNOWN_ALL_OFF?

    public class Owner: APIModel {

        /** The owner type. Can either be 'org' or 'user' */
        public enum `Type`: String, Codable {
            case org = "org"
            case user = "user"

            public static let cases: [`Type`] = [
              .org,
              .user,
            ]
        }

        /** The avatar URL of the owner */
        public var avatarURL: String?

        /** The owner's display name */
        public var displayName: String?

        /** The owner's email address */
        public var email: String?

        /** The unique id (UUID) of the owner */
        public var id: String?

        /** The unique name that used to identify the owner */
        public var name: String?

        /** The owner type. Can either be 'org' or 'user' */
        public var type: `Type`?

        public init(avatarURL: String? = nil, displayName: String? = nil, email: String? = nil, id: String? = nil, name: String? = nil, type: `Type`? = nil) {
            self.avatarURL = avatarURL
            self.displayName = displayName
            self.email = email
            self.id = id
            self.name = name
            self.type = type
        }

        private enum CodingKeys: String, CodingKey {
            case avatarURL = "avatar_url"
            case displayName = "display_name"
            case email
            case id
            case name
            case type
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            avatarURL = try container.decodeIfPresent(.avatarURL)
            displayName = try container.decodeIfPresent(.displayName)
            email = try container.decodeIfPresent(.email)
            id = try container.decodeIfPresent(.id)
            name = try container.decodeIfPresent(.name)
            type = try container.decodeIfPresent(.type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(avatarURL, forKey: .avatarURL)
            try container.encodeIfPresent(displayName, forKey: .displayName)
            try container.encodeIfPresent(email, forKey: .email)
            try container.encodeIfPresent(id, forKey: .id)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(type, forKey: .type)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Owner else { return false }
          guard self.avatarURL == object.avatarURL else { return false }
          guard self.displayName == object.displayName else { return false }
          guard self.email == object.email else { return false }
          guard self.id == object.id else { return false }
          guard self.name == object.name else { return false }
          guard self.type == object.type else { return false }
          return true
        }

        public static func == (lhs: Owner, rhs: Owner) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(description: String? = nil, displayName: String? = nil, iconURL: String? = nil, id: String? = nil, name: String? = nil, os: String? = nil, owner: Owner? = nil, release: UNKNOWN_ALL_OFF? = nil) {
        self.description = description
        self.displayName = displayName
        self.iconURL = iconURL
        self.id = id
        self.name = name
        self.os = os
        self.owner = owner
        self.release = release
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case displayName = "display_name"
        case iconURL = "icon_url"
        case id
        case name
        case os
        case owner
        case release
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        displayName = try container.decodeIfPresent(.displayName)
        iconURL = try container.decodeIfPresent(.iconURL)
        id = try container.decodeIfPresent(.id)
        name = try container.decodeIfPresent(.name)
        os = try container.decodeIfPresent(.os)
        owner = try container.decodeIfPresent(.owner)
        release = try container.decodeIfPresent(.release)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(iconURL, forKey: .iconURL)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(os, forKey: .os)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(release, forKey: .release)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TesterAppWithReleaseResponse else { return false }
      guard self.description == object.description else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.iconURL == object.iconURL else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.os == object.os else { return false }
      guard self.owner == object.owner else { return false }
      guard self.release == object.release else { return false }
      return true
    }

    public static func == (lhs: TesterAppWithReleaseResponse, rhs: TesterAppWithReleaseResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
