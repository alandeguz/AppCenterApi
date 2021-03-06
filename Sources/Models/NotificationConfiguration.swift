//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class NotificationConfiguration: APIModel {

    public enum Reason: String, Codable {
        case notSetByUser = "NotSetByUser"
        case setByUser = "SetByUser"
        case error = "Error"

        public static let cases: [Reason] = [
          .notSetByUser,
          .setByUser,
          .error,
        ]
    }

    public enum State: String, Codable {
        case disabled = "Disabled"
        case disabling = "Disabling"
        case enabling = "Enabling"
        case enabled = "Enabled"

        public static let cases: [State] = [
          .disabled,
          .disabling,
          .enabling,
          .enabled,
        ]
    }

    public var appId: String?

    public var reason: Reason?

    public var state: State?

    public init(appId: String? = nil, reason: Reason? = nil, state: State? = nil) {
        self.appId = appId
        self.reason = reason
        self.state = state
    }

    private enum CodingKeys: String, CodingKey {
        case appId
        case reason
        case state
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decodeIfPresent(.appId)
        reason = try container.decodeIfPresent(.reason)
        state = try container.decodeIfPresent(.state)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(state, forKey: .state)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationConfiguration else { return false }
      guard self.appId == object.appId else { return false }
      guard self.reason == object.reason else { return false }
      guard self.state == object.state else { return false }
      return true
    }

    public static func == (lhs: NotificationConfiguration, rhs: NotificationConfiguration) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
