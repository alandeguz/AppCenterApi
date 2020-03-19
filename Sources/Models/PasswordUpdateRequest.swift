//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PasswordUpdateRequest: APIModel {

    /** The new password that will be set for the user. Needs to be at least 8 characters long and contain at least one lower- and one uppercase letter. */
    public var newPassword: String

    /** The old password, if needed. */
    public var oldPassword: String?

    public init(newPassword: String, oldPassword: String? = nil) {
        self.newPassword = newPassword
        self.oldPassword = oldPassword
    }

    private enum CodingKeys: String, CodingKey {
        case newPassword = "new_password"
        case oldPassword = "old_password"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        newPassword = try container.decode(.newPassword)
        oldPassword = try container.decodeIfPresent(.oldPassword)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(newPassword, forKey: .newPassword)
        try container.encodeIfPresent(oldPassword, forKey: .oldPassword)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PasswordUpdateRequest else { return false }
      guard self.newPassword == object.newPassword else { return false }
      guard self.oldPassword == object.oldPassword else { return false }
      return true
    }

    public static func == (lhs: PasswordUpdateRequest, rhs: PasswordUpdateRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
