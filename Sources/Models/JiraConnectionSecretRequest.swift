//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Jira connection secrets */
public class JiraConnectionSecretRequest: APIModel {

    /** jira secret details */
    public var data: DataType

    /** Jira connection secrets */
    public class DataType: APIModel {

        /** baseUrl to connect to jira instance */
        public var baseUrl: String

        /** username to connect to jira instance */
        public var username: String

        /** password to connect to jira instance */
        public var password: String

        public init(baseUrl: String, username: String, password: String) {
            self.baseUrl = baseUrl
            self.username = username
            self.password = password
        }

        private enum CodingKeys: String, CodingKey {
            case baseUrl
            case username
            case password
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            baseUrl = try container.decode(.baseUrl)
            username = try container.decode(.username)
            password = try container.decode(.password)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(baseUrl, forKey: .baseUrl)
            try container.encode(username, forKey: .username)
            try container.encode(password, forKey: .password)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? DataType else { return false }
          guard self.baseUrl == object.baseUrl else { return false }
          guard self.username == object.username else { return false }
          guard self.password == object.password else { return false }
          return true
        }

        public static func == (lhs: DataType, rhs: DataType) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(data: DataType) {
        self.data = data
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        data = try container.decode(.data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(data, forKey: .data)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? JiraConnectionSecretRequest else { return false }
      guard self.data == object.data else { return false }
      return true
    }

    public static func == (lhs: JiraConnectionSecretRequest, rhs: JiraConnectionSecretRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
