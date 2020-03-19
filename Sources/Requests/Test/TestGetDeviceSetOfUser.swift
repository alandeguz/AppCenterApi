//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Test {

    /**
    Gets a device set belonging to the user
    */
    public enum TestGetDeviceSetOfUser {

        public static let service = APIService<Response>(id: "test_getDeviceSetOfUser", tag: "test", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/user/device_sets/{id}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The UUID of the device set */
                public var id: ID

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(id: ID, ownerName: String, appName: String) {
                    self.id = id
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: TestGetDeviceSetOfUser.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: ID, ownerName: String, appName: String) {
                let options = Options(id: id, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id.encode())").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets a device set belonging to the user */
            public class Status200: APIModel {

                /** Identifier of the device set */
                public var id: String

                /** Name of the device set */
                public var name: String

                /** The owner of a device set */
                public var owner: Owner

                public var deviceConfigurations: [DeviceConfigurations]

                /** The number of manufacturers in the device set's device selection */
                public var manufacturerCount: Double?

                /** The number of os versions in the device set's device selection */
                public var osVersionCount: Double?

                /** Slug of the device set */
                public var slug: String?

                /** Gets a device set belonging to the user */
                public class Owner: APIModel {

                    /** Type of account */
                    public var type: String

                    /** Account ID */
                    public var id: String

                    /** Name of the account */
                    public var name: String

                    /** Display name of the account */
                    public var displayName: String?

                    public init(type: String, id: String, name: String, displayName: String? = nil) {
                        self.type = type
                        self.id = id
                        self.name = name
                        self.displayName = displayName
                    }

                    private enum CodingKeys: String, CodingKey {
                        case type
                        case id
                        case name
                        case displayName
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        type = try container.decode(.type)
                        id = try container.decode(.id)
                        name = try container.decode(.name)
                        displayName = try container.decodeIfPresent(.displayName)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(type, forKey: .type)
                        try container.encode(id, forKey: .id)
                        try container.encode(name, forKey: .name)
                        try container.encodeIfPresent(displayName, forKey: .displayName)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Owner else { return false }
                      guard self.type == object.type else { return false }
                      guard self.id == object.id else { return false }
                      guard self.name == object.name else { return false }
                      guard self.displayName == object.displayName else { return false }
                      return true
                    }

                    public static func == (lhs: Owner, rhs: Owner) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(id: String, name: String, owner: Owner, deviceConfigurations: [DeviceConfigurations], manufacturerCount: Double? = nil, osVersionCount: Double? = nil, slug: String? = nil) {
                    self.id = id
                    self.name = name
                    self.owner = owner
                    self.deviceConfigurations = deviceConfigurations
                    self.manufacturerCount = manufacturerCount
                    self.osVersionCount = osVersionCount
                    self.slug = slug
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case name
                    case owner
                    case deviceConfigurations
                    case manufacturerCount
                    case osVersionCount
                    case slug
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    name = try container.decode(.name)
                    owner = try container.decode(.owner)
                    deviceConfigurations = try container.decodeArray(.deviceConfigurations)
                    manufacturerCount = try container.decodeIfPresent(.manufacturerCount)
                    osVersionCount = try container.decodeIfPresent(.osVersionCount)
                    slug = try container.decodeIfPresent(.slug)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(name, forKey: .name)
                    try container.encode(owner, forKey: .owner)
                    try container.encode(deviceConfigurations, forKey: .deviceConfigurations)
                    try container.encodeIfPresent(manufacturerCount, forKey: .manufacturerCount)
                    try container.encodeIfPresent(osVersionCount, forKey: .osVersionCount)
                    try container.encodeIfPresent(slug, forKey: .slug)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.name == object.name else { return false }
                  guard self.owner == object.owner else { return false }
                  guard self.deviceConfigurations == object.deviceConfigurations else { return false }
                  guard self.manufacturerCount == object.manufacturerCount else { return false }
                  guard self.osVersionCount == object.osVersionCount else { return false }
                  guard self.slug == object.slug else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
            case status200(Status200)

            /** Device set with the given ID was not found */
            case status404

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
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
                case 404: self = .status404
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