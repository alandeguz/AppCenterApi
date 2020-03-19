//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The place code and the count. */
public class Place: APIModel {

    /** The place code. */
    public var code: String?

    /** The count of the this place. */
    public var count: Int?

    /** The count of previous time range of the place. */
    public var previousCount: Int?

    public init(code: String? = nil, count: Int? = nil, previousCount: Int? = nil) {
        self.code = code
        self.count = count
        self.previousCount = previousCount
    }

    private enum CodingKeys: String, CodingKey {
        case code
        case count
        case previousCount = "previous_count"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        code = try container.decodeIfPresent(.code)
        count = try container.decodeIfPresent(.count)
        previousCount = try container.decodeIfPresent(.previousCount)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(previousCount, forKey: .previousCount)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Place else { return false }
      guard self.code == object.code else { return false }
      guard self.count == object.count else { return false }
      guard self.previousCount == object.previousCount else { return false }
      return true
    }

    public static func == (lhs: Place, rhs: Place) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}