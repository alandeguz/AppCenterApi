//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Type of endpoint the certificate or token are associated with */
/** Type of endpoint the certificate or token are associated with */
public enum AppleNotificationEndpointType: String, Codable {
    case production = "production"
    case sandbox = "sandbox"

    public static let cases: [AppleNotificationEndpointType] = [
      .production,
      .sandbox,
    ]
}
