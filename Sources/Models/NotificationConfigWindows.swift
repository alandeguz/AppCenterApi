//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** WNS notification configuration. The 'type' property must be set to 'wns_config' */
public class NotificationConfigWindows: APIModel {

    /** Package security identifier (SID). */
    public var packageSid: String

    /** Secret key. */
    public var secretKey: String

    public init(packageSid: String, secretKey: String) {
        self.packageSid = packageSid
        self.secretKey = secretKey
    }

    private enum CodingKeys: String, CodingKey {
        case packageSid = "package_sid"
        case secretKey = "secret_key"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        packageSid = try container.decode(.packageSid)
        secretKey = try container.decode(.secretKey)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(packageSid, forKey: .packageSid)
        try container.encode(secretKey, forKey: .secretKey)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationConfigWindows else { return false }
      guard self.packageSid == object.packageSid else { return false }
      guard self.secretKey == object.secretKey else { return false }
      return true
    }

    public static func == (lhs: NotificationConfigWindows, rhs: NotificationConfigWindows) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
