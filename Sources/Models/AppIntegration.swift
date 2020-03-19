//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppIntegration: APIModel {

    /** app id */
    public var appId: ID

    /** integration state */
    public var state: String

    /** provider type */
    public var provider: String

    public init(appId: ID, state: String, provider: String) {
        self.appId = appId
        self.state = state
        self.provider = provider
    }

    private enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case state
        case provider
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decode(.appId)
        state = try container.decode(.state)
        provider = try container.decode(.provider)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(appId, forKey: .appId)
        try container.encode(state, forKey: .state)
        try container.encode(provider, forKey: .provider)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppIntegration else { return false }
      guard self.appId == object.appId else { return false }
      guard self.state == object.state else { return false }
      guard self.provider == object.provider else { return false }
      return true
    }

    public static func == (lhs: AppIntegration, rhs: AppIntegration) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
