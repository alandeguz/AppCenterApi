//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Generic notification configuration result. */
public class NotificationConfigResult: APIModel {

    public var type: String

    public init(type: String) {
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decode(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationConfigResult else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: NotificationConfigResult, rhs: NotificationConfigResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
