//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Alerting Email Settings of the user for a particular app */
public class AlertUserAppEmailSettingsResult: APIModel {

    public init() {
    }


    public required init(from decoder: Decoder) throws {
    }

    public func encode(to encoder: Encoder) throws {
    }

    public func isEqual(to object: Any?) -> Bool {
      guard object is AlertUserAppEmailSettingsResult else { return false }
      return true
    }

    public static func == (lhs: AlertUserAppEmailSettingsResult, rhs: AlertUserAppEmailSettingsResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
