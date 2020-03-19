//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The url that can be navigated to in order to start the device registration process. */
public class DeviceRegistrationUrl: APIModel {

    /** The url that can be navigated to in order to start the device registration process. */
    public var registrationURL: String

    public init(registrationURL: String) {
        self.registrationURL = registrationURL
    }

    private enum CodingKeys: String, CodingKey {
        case registrationURL = "registration_url"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        registrationURL = try container.decode(.registrationURL)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(registrationURL, forKey: .registrationURL)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceRegistrationUrl else { return false }
      guard self.registrationURL == object.registrationURL else { return false }
      return true
    }

    public static func == (lhs: DeviceRegistrationUrl, rhs: DeviceRegistrationUrl) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}