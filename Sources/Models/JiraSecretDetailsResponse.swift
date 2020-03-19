//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Jira secret details */
public class JiraSecretDetailsResponse: APIModel {

    /** baseUrl to connect to jira instance */
    public var baseUrl: String

    /** username to connect to jira instance */
    public var username: String

    public init(baseUrl: String, username: String) {
        self.baseUrl = baseUrl
        self.username = username
    }

    private enum CodingKeys: String, CodingKey {
        case baseUrl
        case username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        baseUrl = try container.decode(.baseUrl)
        username = try container.decode(.username)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(baseUrl, forKey: .baseUrl)
        try container.encode(username, forKey: .username)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? JiraSecretDetailsResponse else { return false }
      guard self.baseUrl == object.baseUrl else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: JiraSecretDetailsResponse, rhs: JiraSecretDetailsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
