//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupUserDeleteResponse: APIModel {

    /** The status code of the result */
    public var status: Int

    /** The code of the result */
    public var code: String?

    /** The message of the result */
    public var message: Int?

    /** The email of the user */
    public var userEmail: String?

    public init(status: Int, code: String? = nil, message: Int? = nil, userEmail: String? = nil) {
        self.status = status
        self.code = code
        self.message = message
        self.userEmail = userEmail
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case code
        case message
        case userEmail = "user_email"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        code = try container.decodeIfPresent(.code)
        message = try container.decodeIfPresent(.message)
        userEmail = try container.decodeIfPresent(.userEmail)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(userEmail, forKey: .userEmail)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupUserDeleteResponse else { return false }
      guard self.status == object.status else { return false }
      guard self.code == object.code else { return false }
      guard self.message == object.message else { return false }
      guard self.userEmail == object.userEmail else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupUserDeleteResponse, rhs: DistributionGroupUserDeleteResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
