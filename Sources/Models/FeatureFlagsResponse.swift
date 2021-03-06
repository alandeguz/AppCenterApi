//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FeatureFlagsResponse: APIModel {

    public var featureFlags: [String]

    public init(featureFlags: [String]) {
        self.featureFlags = featureFlags
    }

    private enum CodingKeys: String, CodingKey {
        case featureFlags = "feature_flags"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        featureFlags = try container.decodeArray(.featureFlags)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(featureFlags, forKey: .featureFlags)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FeatureFlagsResponse else { return false }
      guard self.featureFlags == object.featureFlags else { return false }
      return true
    }

    public static func == (lhs: FeatureFlagsResponse, rhs: FeatureFlagsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
