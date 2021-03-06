//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GetReleasesContainer: APIModel {

    public var releases: [Releases]

    public init(releases: [Releases]) {
        self.releases = releases
    }

    private enum CodingKeys: String, CodingKey {
        case releases
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        releases = try container.decodeArray(.releases)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(releases, forKey: .releases)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GetReleasesContainer else { return false }
      guard self.releases == object.releases else { return false }
      return true
    }

    public static func == (lhs: GetReleasesContainer, rhs: GetReleasesContainer) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
