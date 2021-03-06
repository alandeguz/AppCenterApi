//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ReleaseWithDistributionGroupAndUserId: APIModel {

    /** Unique user Id.  Will generate a new user Id if not provided.
 */
    public var userId: ID?

    public init(userId: ID? = nil) {
        self.userId = userId
    }

    private enum CodingKeys: String, CodingKey {
        case userId = "user_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        userId = try container.decodeIfPresent(.userId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(userId, forKey: .userId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ReleaseWithDistributionGroupAndUserId else { return false }
      guard self.userId == object.userId else { return false }
      return true
    }

    public static func == (lhs: ReleaseWithDistributionGroupAndUserId, rhs: ReleaseWithDistributionGroupAndUserId) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
