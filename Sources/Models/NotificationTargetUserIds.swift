//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Notification per User IDs */
public class NotificationTargetUserIds: APIModel {

    /** List of user IDs to target */
    public var userIds: [String]

    public init(userIds: [String]) {
        self.userIds = userIds
    }

    private enum CodingKeys: String, CodingKey {
        case userIds = "user_ids"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        userIds = try container.decodeArray(.userIds)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(userIds, forKey: .userIds)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationTargetUserIds else { return false }
      guard self.userIds == object.userIds else { return false }
      return true
    }

    public static func == (lhs: NotificationTargetUserIds, rhs: NotificationTargetUserIds) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
