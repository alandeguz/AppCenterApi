//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ResendVerificationRequest: APIModel {

    /** The email or name of the user to resend verification */
    public var name: String

    public init(name: String) {
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ResendVerificationRequest else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: ResendVerificationRequest, rhs: ResendVerificationRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
