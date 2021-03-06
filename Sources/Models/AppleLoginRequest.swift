//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Apple credentials needed to log into the Apple Developer Portal */
public class AppleLoginRequest: APIModel {

    /** The username for the Apple Developer account. */
    public var username: String

    /** The password for the Apple Developer account. */
    public var password: String

    /** The 30-day session cookie for multi-factor authentication backed accounts. */
    public var cookie: String?

    /** Identifier of the team to use when logged in. */
    public var teamIdentifier: String?

    public init(username: String, password: String, cookie: String? = nil, teamIdentifier: String? = nil) {
        self.username = username
        self.password = password
        self.cookie = cookie
        self.teamIdentifier = teamIdentifier
    }

    private enum CodingKeys: String, CodingKey {
        case username
        case password
        case cookie
        case teamIdentifier = "team_identifier"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        username = try container.decode(.username)
        password = try container.decode(.password)
        cookie = try container.decodeIfPresent(.cookie)
        teamIdentifier = try container.decodeIfPresent(.teamIdentifier)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(username, forKey: .username)
        try container.encode(password, forKey: .password)
        try container.encodeIfPresent(cookie, forKey: .cookie)
        try container.encodeIfPresent(teamIdentifier, forKey: .teamIdentifier)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppleLoginRequest else { return false }
      guard self.username == object.username else { return false }
      guard self.password == object.password else { return false }
      guard self.cookie == object.cookie else { return false }
      guard self.teamIdentifier == object.teamIdentifier else { return false }
      return true
    }

    public static func == (lhs: AppleLoginRequest, rhs: AppleLoginRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
