//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Error log. */
public class LogFlowErrorLog: APIModel {

    /** Session ID.
 */
    public var sessionId: ID

    /** Error identifier. */
    public var id: ID

    /** Corresponds to the number of milliseconds elapsed between the time the error occurred and the app was launched.
 */
    public var appLaunchToffset: Int?

    public init(sessionId: ID, id: ID, appLaunchToffset: Int? = nil) {
        self.sessionId = sessionId
        self.id = id
        self.appLaunchToffset = appLaunchToffset
    }

    private enum CodingKeys: String, CodingKey {
        case sessionId = "session_id"
        case id
        case appLaunchToffset = "app_launch_toffset"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        sessionId = try container.decode(.sessionId)
        id = try container.decode(.id)
        appLaunchToffset = try container.decodeIfPresent(.appLaunchToffset)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(sessionId, forKey: .sessionId)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(appLaunchToffset, forKey: .appLaunchToffset)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LogFlowErrorLog else { return false }
      guard self.sessionId == object.sessionId else { return false }
      guard self.id == object.id else { return false }
      guard self.appLaunchToffset == object.appLaunchToffset else { return false }
      return true
    }

    public static func == (lhs: LogFlowErrorLog, rhs: LogFlowErrorLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
