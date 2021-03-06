//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupAppsDeleteRequest: APIModel {

    /** The list of apps to delete from the distribution group */
    public var apps: [Apps]?

    public init(apps: [Apps]? = nil) {
        self.apps = apps
    }

    private enum CodingKeys: String, CodingKey {
        case apps
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        apps = try container.decodeArrayIfPresent(.apps)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(apps, forKey: .apps)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupAppsDeleteRequest else { return false }
      guard self.apps == object.apps else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupAppsDeleteRequest, rhs: DistributionGroupAppsDeleteRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
