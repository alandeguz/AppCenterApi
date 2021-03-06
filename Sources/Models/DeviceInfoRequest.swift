//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The information for a single iOS device */
public class DeviceInfoRequest: APIModel {

    /** The Unique Device IDentifier of the device */
    public var udid: String

    /** The model identifier of the device, in the format iDeviceM,N */
    public var model: String

    /** The device's International Mobile Equipment Identity number. Always empty or undefined at present. */
    public var imei: String?

    /** The build number of the last known OS version running on the device */
    public var osBuild: String?

    /** The last known OS version running on the device */
    public var osVersion: String?

    /** The user ID of the device owner. */
    public var ownerId: String?

    /** The device's serial number. Always empty or undefined at present. */
    public var serial: String?

    public init(udid: String, model: String, imei: String? = nil, osBuild: String? = nil, osVersion: String? = nil, ownerId: String? = nil, serial: String? = nil) {
        self.udid = udid
        self.model = model
        self.imei = imei
        self.osBuild = osBuild
        self.osVersion = osVersion
        self.ownerId = ownerId
        self.serial = serial
    }

    private enum CodingKeys: String, CodingKey {
        case udid
        case model
        case imei
        case osBuild = "os_build"
        case osVersion = "os_version"
        case ownerId = "owner_id"
        case serial
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        udid = try container.decode(.udid)
        model = try container.decode(.model)
        imei = try container.decodeIfPresent(.imei)
        osBuild = try container.decodeIfPresent(.osBuild)
        osVersion = try container.decodeIfPresent(.osVersion)
        ownerId = try container.decodeIfPresent(.ownerId)
        serial = try container.decodeIfPresent(.serial)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(udid, forKey: .udid)
        try container.encode(model, forKey: .model)
        try container.encodeIfPresent(imei, forKey: .imei)
        try container.encodeIfPresent(osBuild, forKey: .osBuild)
        try container.encodeIfPresent(osVersion, forKey: .osVersion)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(serial, forKey: .serial)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceInfoRequest else { return false }
      guard self.udid == object.udid else { return false }
      guard self.model == object.model else { return false }
      guard self.imei == object.imei else { return false }
      guard self.osBuild == object.osBuild else { return false }
      guard self.osVersion == object.osVersion else { return false }
      guard self.ownerId == object.ownerId else { return false }
      guard self.serial == object.serial else { return false }
      return true
    }

    public static func == (lhs: DeviceInfoRequest, rhs: DeviceInfoRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
