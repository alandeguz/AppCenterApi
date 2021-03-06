//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyCollaborator: APIModel {

    /** Is current collaborator the same as current account. */
    public var isCurrentAccount: Bool?

    /** Which permission does current account has. */
    public var permission: String?

    public init(isCurrentAccount: Bool? = nil, permission: String? = nil) {
        self.isCurrentAccount = isCurrentAccount
        self.permission = permission
    }

    private enum CodingKeys: String, CodingKey {
        case isCurrentAccount
        case permission
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        isCurrentAccount = try container.decodeIfPresent(.isCurrentAccount)
        permission = try container.decodeIfPresent(.permission)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(isCurrentAccount, forKey: .isCurrentAccount)
        try container.encodeIfPresent(permission, forKey: .permission)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyCollaborator else { return false }
      guard self.isCurrentAccount == object.isCurrentAccount else { return false }
      guard self.permission == object.permission else { return false }
      return true
    }

    public static func == (lhs: LegacyCollaborator, rhs: LegacyCollaborator) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
