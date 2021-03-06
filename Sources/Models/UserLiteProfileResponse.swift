//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class UserLiteProfileResponse: APIModel {

    /** The unique id (UUID) of the user */
    public var id: ID

    /** The full name of the user. Might for example be first and last name */
    public var displayName: String

    /** The email address of the user */
    public var email: String

    public init(id: ID, displayName: String, email: String) {
        self.id = id
        self.displayName = displayName
        self.email = email
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case displayName = "display_name"
        case email
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        displayName = try container.decode(.displayName)
        email = try container.decode(.email)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(email, forKey: .email)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UserLiteProfileResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.email == object.email else { return false }
      return true
    }

    public static func == (lhs: UserLiteProfileResponse, rhs: UserLiteProfileResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
