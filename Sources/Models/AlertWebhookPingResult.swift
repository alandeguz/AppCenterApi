//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Alerting webhook ping operation result */
public class AlertWebhookPingResult: APIModel {

    /** Unique request identifier for tracking */
    public var requestId: String

    public init(requestId: String) {
        self.requestId = requestId
    }

    private enum CodingKeys: String, CodingKey {
        case requestId = "request_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        requestId = try container.decode(.requestId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(requestId, forKey: .requestId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertWebhookPingResult else { return false }
      guard self.requestId == object.requestId else { return false }
      return true
    }

    public static func == (lhs: AlertWebhookPingResult, rhs: AlertWebhookPingResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
