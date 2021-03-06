//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Places and count during the time range in descending order. */
public class Places: APIModel {

    public var places: [Places]?

    public var total: Int?

    public init(places: [Places]? = nil, total: Int? = nil) {
        self.places = places
        self.total = total
    }

    private enum CodingKeys: String, CodingKey {
        case places
        case total
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        places = try container.decodeArrayIfPresent(.places)
        total = try container.decodeIfPresent(.total)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(places, forKey: .places)
        try container.encodeIfPresent(total, forKey: .total)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Places else { return false }
      guard self.places == object.places else { return false }
      guard self.total == object.total else { return false }
      return true
    }

    public static func == (lhs: Places, rhs: Places) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
