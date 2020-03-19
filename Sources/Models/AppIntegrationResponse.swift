//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppIntegrationResponse: APIModel {

    /** app id */
    public var appId: ID

    public init(appId: ID) {
        self.appId = appId
    }

    private enum CodingKeys: String, CodingKey {
        case appId = "app_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decode(.appId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(appId, forKey: .appId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppIntegrationResponse else { return false }
      guard self.appId == object.appId else { return false }
      return true
    }

    public static func == (lhs: AppIntegrationResponse, rhs: AppIntegrationResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}