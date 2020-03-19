//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Google notification configuration result. */
public class NotificationConfigGoogleResult: APIModel {

    /** GCM API key. */
    public var googleApiKey: String

    public init(googleApiKey: String) {
        self.googleApiKey = googleApiKey
    }

    private enum CodingKeys: String, CodingKey {
        case googleApiKey = "google_api_key"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        googleApiKey = try container.decode(.googleApiKey)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(googleApiKey, forKey: .googleApiKey)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationConfigGoogleResult else { return false }
      guard self.googleApiKey == object.googleApiKey else { return false }
      return true
    }

    public static func == (lhs: NotificationConfigGoogleResult, rhs: NotificationConfigGoogleResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
