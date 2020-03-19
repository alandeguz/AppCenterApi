//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorDateTimeCounts: APIModel {

    /** count of the object */
    public var count: Int?

    /** the ISO 8601 datetime */
    public var datetime: String?

    public init(count: Int? = nil, datetime: String? = nil) {
        self.count = count
        self.datetime = datetime
    }

    private enum CodingKeys: String, CodingKey {
        case count
        case datetime
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        count = try container.decodeIfPresent(.count)
        datetime = try container.decodeIfPresent(.datetime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(datetime, forKey: .datetime)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorDateTimeCounts else { return false }
      guard self.count == object.count else { return false }
      guard self.datetime == object.datetime else { return false }
      return true
    }

    public static func == (lhs: ErrorDateTimeCounts, rhs: ErrorDateTimeCounts) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
