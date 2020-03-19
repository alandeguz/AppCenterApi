//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Alerting Email Settings */
public class AlertEmailSettings: APIModel {

    /** The settings the user has for the app */
    public var settings: [Settings]

    public init(settings: [Settings]) {
        self.settings = settings
    }

    private enum CodingKeys: String, CodingKey {
        case settings
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        settings = try container.decodeArray(.settings)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(settings, forKey: .settings)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertEmailSettings else { return false }
      guard self.settings == object.settings else { return false }
      return true
    }

    public static func == (lhs: AlertEmailSettings, rhs: AlertEmailSettings) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
