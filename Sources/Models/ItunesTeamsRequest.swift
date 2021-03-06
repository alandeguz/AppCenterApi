//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Apple credentials with username, password or service_connection_id of the stored credentials is needed. */
public class ItunesTeamsRequest: APIModel {

    /** The 30-day session cookie for multi-factor authentication backed accounts. */
    public var cookie: String?

    /** The password for the Apple Developer account. */
    public var password: String?

    /** The service_connection_id of the stored Apple credentials instead of username, password. */
    public var serviceConnectionId: String?

    /** The username for the Apple Developer account. */
    public var username: String?

    public init(cookie: String? = nil, password: String? = nil, serviceConnectionId: String? = nil, username: String? = nil) {
        self.cookie = cookie
        self.password = password
        self.serviceConnectionId = serviceConnectionId
        self.username = username
    }

    private enum CodingKeys: String, CodingKey {
        case cookie
        case password
        case serviceConnectionId = "service_connection_id"
        case username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cookie = try container.decodeIfPresent(.cookie)
        password = try container.decodeIfPresent(.password)
        serviceConnectionId = try container.decodeIfPresent(.serviceConnectionId)
        username = try container.decodeIfPresent(.username)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(cookie, forKey: .cookie)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(serviceConnectionId, forKey: .serviceConnectionId)
        try container.encodeIfPresent(username, forKey: .username)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ItunesTeamsRequest else { return false }
      guard self.cookie == object.cookie else { return false }
      guard self.password == object.password else { return false }
      guard self.serviceConnectionId == object.serviceConnectionId else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: ItunesTeamsRequest, rhs: ItunesTeamsRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
