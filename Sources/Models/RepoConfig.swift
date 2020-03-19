//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RepoConfig: APIModel {

    /** State of the configuration */
    public enum State: String, Codable {
        case unauthorized = "unauthorized"
        case inactive = "inactive"
        case active = "active"

        public static let cases: [State] = [
          .unauthorized,
          .inactive,
          .active,
        ]
    }

    /** Repository configuration identifier */
    public var id: String

    /** Type of repository */
    public var type: String

    /** State of the configuration */
    public var state: State

    /** Email of the user who linked the repository */
    public var userEmail: String?

    public init(id: String, type: String, state: State, userEmail: String? = nil) {
        self.id = id
        self.type = type
        self.state = state
        self.userEmail = userEmail
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case type
        case state
        case userEmail = "user_email"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        type = try container.decode(.type)
        state = try container.decode(.state)
        userEmail = try container.decodeIfPresent(.userEmail)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(state, forKey: .state)
        try container.encodeIfPresent(userEmail, forKey: .userEmail)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RepoConfig else { return false }
      guard self.id == object.id else { return false }
      guard self.type == object.type else { return false }
      guard self.state == object.state else { return false }
      guard self.userEmail == object.userEmail else { return false }
      return true
    }

    public static func == (lhs: RepoConfig, rhs: RepoConfig) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
