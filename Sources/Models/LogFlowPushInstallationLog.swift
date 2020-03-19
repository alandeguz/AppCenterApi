//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Push installation Information. */
public class LogFlowPushInstallationLog: APIModel {

    /** The PNS handle for this installation.
 */
    public var pushToken: String

    public init(pushToken: String) {
        self.pushToken = pushToken
    }

    private enum CodingKeys: String, CodingKey {
        case pushToken = "push_token"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        pushToken = try container.decode(.pushToken)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(pushToken, forKey: .pushToken)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LogFlowPushInstallationLog else { return false }
      guard self.pushToken == object.pushToken else { return false }
      return true
    }

    public static func == (lhs: LogFlowPushInstallationLog, rhs: LogFlowPushInstallationLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
