//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Versions: APIModel {

    /** The total count of versions. */
    public var total: Int?

    /** List of version count. */
    public var versions: [Versions]?

    public init(total: Int? = nil, versions: [Versions]? = nil) {
        self.total = total
        self.versions = versions
    }

    private enum CodingKeys: String, CodingKey {
        case total
        case versions
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        total = try container.decodeIfPresent(.total)
        versions = try container.decodeArrayIfPresent(.versions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(versions, forKey: .versions)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Versions else { return false }
      guard self.total == object.total else { return false }
      guard self.versions == object.versions else { return false }
      return true
    }

    public static func == (lhs: Versions, rhs: Versions) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
