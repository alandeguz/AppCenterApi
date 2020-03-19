//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Page view log (as in screens or activities). */
public class PageLog: APIModel {

    /** Name of the page.
 */
    public var name: String

    /** Session ID.
 */
    public var sessionId: ID

    public init(name: String, sessionId: ID) {
        self.name = name
        self.sessionId = sessionId
    }

    private enum CodingKeys: String, CodingKey {
        case name
        case sessionId = "session_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(.name)
        sessionId = try container.decode(.sessionId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encode(sessionId, forKey: .sessionId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PageLog else { return false }
      guard self.name == object.name else { return false }
      guard self.sessionId == object.sessionId else { return false }
      return true
    }

    public static func == (lhs: PageLog, rhs: PageLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
