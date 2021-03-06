//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ActiveDeviceCounts: APIModel {

    /** The active device count for each interval. */
    public var daily: [Daily]?

    /** The active device count for each interval with a month's retention. */
    public var monthly: [Monthly]?

    /** The active device count for each interval with a week's retention. */
    public var weekly: [Weekly]?

    public init(daily: [Daily]? = nil, monthly: [Monthly]? = nil, weekly: [Weekly]? = nil) {
        self.daily = daily
        self.monthly = monthly
        self.weekly = weekly
    }

    private enum CodingKeys: String, CodingKey {
        case daily
        case monthly
        case weekly
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        daily = try container.decodeArrayIfPresent(.daily)
        monthly = try container.decodeArrayIfPresent(.monthly)
        weekly = try container.decodeArrayIfPresent(.weekly)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(daily, forKey: .daily)
        try container.encodeIfPresent(monthly, forKey: .monthly)
        try container.encodeIfPresent(weekly, forKey: .weekly)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ActiveDeviceCounts else { return false }
      guard self.daily == object.daily else { return false }
      guard self.monthly == object.monthly else { return false }
      guard self.weekly == object.weekly else { return false }
      return true
    }

    public static func == (lhs: ActiveDeviceCounts, rhs: ActiveDeviceCounts) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
