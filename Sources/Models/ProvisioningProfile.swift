//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** An object containing information about an iOS provisioning profile. */
public class ProvisioningProfile: APIModel {

    /** An object containing information about an iOS provisioning profile. */
    public enum ProfileType: String, Codable {
        case adhoc = "adhoc"
        case enterprise = "enterprise"
        case other = "other"

        public static let cases: [ProfileType] = [
          .adhoc,
          .enterprise,
          .other,
        ]
    }

    /** The name of the provisioning profile. */
    public var name: String

    /** The application identifier. */
    public var applicationIdentifier: String

    /** The team identifier. */
    public var teamIdentifier: String

    public var profileType: ProfileType

    /** The profile's expiration date in RFC 3339 format, i.e. 2017-07-21T17:32:28Z */
    public var expiredAt: DateTime

    public var udids: [String]?

    public init(name: String, applicationIdentifier: String, teamIdentifier: String, profileType: ProfileType, expiredAt: DateTime, udids: [String]? = nil) {
        self.name = name
        self.applicationIdentifier = applicationIdentifier
        self.teamIdentifier = teamIdentifier
        self.profileType = profileType
        self.expiredAt = expiredAt
        self.udids = udids
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case applicationIdentifier = "application_identifier"
        case teamIdentifier = "team_identifier"
        case profileType = "profile_type"
        case expiredAt = "expired_at"
        case udids
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(.name)
        applicationIdentifier = try container.decode(.applicationIdentifier)
        teamIdentifier = try container.decode(.teamIdentifier)
        profileType = try container.decode(.profileType)
        expiredAt = try container.decode(.expiredAt)
        udids = try container.decodeArrayIfPresent(.udids)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encode(applicationIdentifier, forKey: .applicationIdentifier)
        try container.encode(teamIdentifier, forKey: .teamIdentifier)
        try container.encode(profileType, forKey: .profileType)
        try container.encode(expiredAt, forKey: .expiredAt)
        try container.encodeIfPresent(udids, forKey: .udids)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProvisioningProfile else { return false }
      guard self.name == object.name else { return false }
      guard self.applicationIdentifier == object.applicationIdentifier else { return false }
      guard self.teamIdentifier == object.teamIdentifier else { return false }
      guard self.profileType == object.profileType else { return false }
      guard self.expiredAt == object.expiredAt else { return false }
      guard self.udids == object.udids else { return false }
      return true
    }

    public static func == (lhs: ProvisioningProfile, rhs: ProvisioningProfile) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}