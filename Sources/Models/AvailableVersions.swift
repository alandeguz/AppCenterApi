//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AvailableVersions: APIModel {

    /** The full number of versions across all pages. */
    public var totalCount: Int?

    /** List of available versions. */
    public var versions: [String]?

    public init(totalCount: Int? = nil, versions: [String]? = nil) {
        self.totalCount = totalCount
        self.versions = versions
    }

    private enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case versions
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        totalCount = try container.decodeIfPresent(.totalCount)
        versions = try container.decodeArrayIfPresent(.versions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(totalCount, forKey: .totalCount)
        try container.encodeIfPresent(versions, forKey: .versions)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AvailableVersions else { return false }
      guard self.totalCount == object.totalCount else { return false }
      guard self.versions == object.versions else { return false }
      return true
    }

    public static func == (lhs: AvailableVersions, rhs: AvailableVersions) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
