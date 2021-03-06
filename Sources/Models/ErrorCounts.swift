//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorCounts: APIModel {

    /** total error count */
    public var count: Int?

    /** the total error count for day */
    public var errors: [Errors]?

    public init(count: Int? = nil, errors: [Errors]? = nil) {
        self.count = count
        self.errors = errors
    }

    private enum CodingKeys: String, CodingKey {
        case count
        case errors
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        count = try container.decodeIfPresent(.count)
        errors = try container.decodeArrayIfPresent(.errors)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(errors, forKey: .errors)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorCounts else { return false }
      guard self.count == object.count else { return false }
      guard self.errors == object.errors else { return false }
      return true
    }

    public static func == (lhs: ErrorCounts, rhs: ErrorCounts) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
