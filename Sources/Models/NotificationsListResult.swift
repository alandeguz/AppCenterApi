//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** List of notifications */
public class NotificationsListResult: APIModel {

    public var values: [Values]

    public var nextLink: String?

    /** the total count of notifications */
    public var total: Int?

    public init(values: [Values], nextLink: String? = nil, total: Int? = nil) {
        self.values = values
        self.nextLink = nextLink
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case values
        case nextLink
        case total
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        values = try container.decodeArray(.values)
        nextLink = try container.decodeIfPresent(.nextLink)
        total = try container.decodeIfPresent(.total)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(values, forKey: .values)
        try container.encodeIfPresent(nextLink, forKey: .nextLink)
        try container.encodeIfPresent(total, forKey: .total)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationsListResult else { return false }
      guard self.values == object.values else { return false }
      guard self.nextLink == object.nextLink else { return false }
      guard self.total == object.total else { return false }
      return true
    }

    public static func == (lhs: NotificationsListResult, rhs: NotificationsListResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
