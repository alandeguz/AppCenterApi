//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A list of device IDs */
public class DeviceList: APIModel {

    public var devices: [String]

    public init(devices: [String]) {
        self.devices = devices
    }

    private enum CodingKeys: String, CodingKey {
        case devices
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        devices = try container.decodeArray(.devices)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(devices, forKey: .devices)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceList else { return false }
      guard self.devices == object.devices else { return false }
      return true
    }

    public static func == (lhs: DeviceList, rhs: DeviceList) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
