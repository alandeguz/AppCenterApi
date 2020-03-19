//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Repository owner object */
public class AlertBugTrackerRepoOwner: APIModel {

    public var id: String?

    public var login: String?

    public var name: String?

    public init(id: String? = nil, login: String? = nil, name: String? = nil) {
        self.id = id
        self.login = login
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case login
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(.id)
        login = try container.decodeIfPresent(.login)
        name = try container.decodeIfPresent(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(login, forKey: .login)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertBugTrackerRepoOwner else { return false }
      guard self.id == object.id else { return false }
      guard self.login == object.login else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: AlertBugTrackerRepoOwner, rhs: AlertBugTrackerRepoOwner) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
