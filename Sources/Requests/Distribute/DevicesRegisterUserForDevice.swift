//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Registers a user for an existing device
    */
    public enum DevicesRegisterUserForDevice {

        public static let service = APIService<Response>(id: "devices_registerUserForDevice", tag: "distribute", method: "POST", path: "/v0.1/users/{user_id}/devices/register", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Registers a user for an existing device */
            public class Body: APIModel {

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
                  guard let object = object as? Body else { return false }
                  guard self.udid == object.udid else { return false }
                  guard self.model == object.model else { return false }
                  guard self.imei == object.imei else { return false }
                  guard self.osBuild == object.osBuild else { return false }
                  guard self.osVersion == object.osVersion else { return false }
                  guard self.ownerId == object.ownerId else { return false }
                  guard self.serial == object.serial else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The ID of the user */
                public var userId: String

                public init(userId: String) {
                    self.userId = userId
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options) {
                self.body = body
                self.options = options
                super.init(service: DevicesRegisterUserForDevice.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(userId: String, body: Body) {
                let options = Options(userId: userId)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "userId" + "}", with: "\(self.options.userId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Registers a user for an existing device */
            public class Status200: APIModel {

                /** The Unique Device IDentifier of the device */
                public var udid: String

                /** The model identifier of the device, in the format iDeviceM,N */
                public var model: String

                /** The device description, in the format "iPhone 7 Plus (A1784)" */
                public var deviceName: String

                /** The last known OS version running on the device */
                public var osBuild: String

                /** The last known OS version running on the device */
                public var osVersion: String

                /** The provisioning status of the device. */
                public var status: String

                /** A combination of the device model name and the owner name. */
                public var fullDeviceName: String?

                /** The device's International Mobile Equipment Identity number. Always empty or undefined at present. */
                public var imei: String?

                /** The user ID of the device owner. */
                public var ownerId: String?

                /** Timestamp of when the device was registered in ISO format. */
                public var registeredAt: String?

                /** The device's serial number. Always empty or undefined at present. */
                public var serial: String?

                public init(udid: String, model: String, deviceName: String, osBuild: String, osVersion: String, status: String, fullDeviceName: String? = nil, imei: String? = nil, ownerId: String? = nil, registeredAt: String? = nil, serial: String? = nil) {
                    self.udid = udid
                    self.model = model
                    self.deviceName = deviceName
                    self.osBuild = osBuild
                    self.osVersion = osVersion
                    self.status = status
                    self.fullDeviceName = fullDeviceName
                    self.imei = imei
                    self.ownerId = ownerId
                    self.registeredAt = registeredAt
                    self.serial = serial
                }

                private enum CodingKeys: String, CodingKey {
                    case udid
                    case model
                    case deviceName = "device_name"
                    case osBuild = "os_build"
                    case osVersion = "os_version"
                    case status
                    case fullDeviceName = "full_device_name"
                    case imei
                    case ownerId = "owner_id"
                    case registeredAt = "registered_at"
                    case serial
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    udid = try container.decode(.udid)
                    model = try container.decode(.model)
                    deviceName = try container.decode(.deviceName)
                    osBuild = try container.decode(.osBuild)
                    osVersion = try container.decode(.osVersion)
                    status = try container.decode(.status)
                    fullDeviceName = try container.decodeIfPresent(.fullDeviceName)
                    imei = try container.decodeIfPresent(.imei)
                    ownerId = try container.decodeIfPresent(.ownerId)
                    registeredAt = try container.decodeIfPresent(.registeredAt)
                    serial = try container.decodeIfPresent(.serial)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(udid, forKey: .udid)
                    try container.encode(model, forKey: .model)
                    try container.encode(deviceName, forKey: .deviceName)
                    try container.encode(osBuild, forKey: .osBuild)
                    try container.encode(osVersion, forKey: .osVersion)
                    try container.encode(status, forKey: .status)
                    try container.encodeIfPresent(fullDeviceName, forKey: .fullDeviceName)
                    try container.encodeIfPresent(imei, forKey: .imei)
                    try container.encodeIfPresent(ownerId, forKey: .ownerId)
                    try container.encodeIfPresent(registeredAt, forKey: .registeredAt)
                    try container.encodeIfPresent(serial, forKey: .serial)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.udid == object.udid else { return false }
                  guard self.model == object.model else { return false }
                  guard self.deviceName == object.deviceName else { return false }
                  guard self.osBuild == object.osBuild else { return false }
                  guard self.osVersion == object.osVersion else { return false }
                  guard self.status == object.status else { return false }
                  guard self.fullDeviceName == object.fullDeviceName else { return false }
                  guard self.imei == object.imei else { return false }
                  guard self.ownerId == object.ownerId else { return false }
                  guard self.registeredAt == object.registeredAt else { return false }
                  guard self.serial == object.serial else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Registers a user for an existing device */
            public class Status404: APIModel {

                /** Registers a user for an existing device */
                public enum Code: String, Codable {
                    case badRequest = "BadRequest"
                    case conflict = "Conflict"
                    case notAcceptable = "NotAcceptable"
                    case notFound = "NotFound"
                    case internalServerError = "InternalServerError"
                    case unauthorized = "Unauthorized"
                    case tooManyRequests = "TooManyRequests"

                    public static let cases: [Code] = [
                      .badRequest,
                      .conflict,
                      .notAcceptable,
                      .notFound,
                      .internalServerError,
                      .unauthorized,
                      .tooManyRequests,
                    ]
                }

                public var code: Code

                public var message: String

                public init(code: Code, message: String) {
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            /** <b>not_found</b>: The user or the device can't be found.
 */
            case status404(Status404)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: Status404? {
                switch self {
                case .status404(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, Status404> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status404(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
