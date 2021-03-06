//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class BuildTimeline: APIModel {

    public var id: String?

    public var records: [Records]?

    public init(id: String? = nil, records: [Records]? = nil) {
        self.id = id
        self.records = records
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case records
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(.id)
        records = try container.decodeArrayIfPresent(.records)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(records, forKey: .records)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BuildTimeline else { return false }
      guard self.id == object.id else { return false }
      guard self.records == object.records else { return false }
      return true
    }

    public static func == (lhs: BuildTimeline, rhs: BuildTimeline) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
