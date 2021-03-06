//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** List of audiences. */
public class AudienceListResult: APIModel {

    /** List of audiences. */
    public var values: [Values]

    public var nextLink: String?

    public init(values: [Values], nextLink: String? = nil) {
        self.values = values
        self.nextLink = nextLink
    }

    private enum CodingKeys: String, CodingKey {
        case values
        case nextLink
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        values = try container.decodeArray(.values)
        nextLink = try container.decodeIfPresent(.nextLink)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(values, forKey: .values)
        try container.encodeIfPresent(nextLink, forKey: .nextLink)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AudienceListResult else { return false }
      guard self.values == object.values else { return false }
      guard self.nextLink == object.nextLink else { return false }
      return true
    }

    public static func == (lhs: AudienceListResult, rhs: AudienceListResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
