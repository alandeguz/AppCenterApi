//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Return the Real time Status publishing of release from store.
    */
    public enum StoreReleasesGetRealTimeStatusByReleaseId {

        public static let service = APIService<Response>(id: "storeReleases_getRealTimeStatusByReleaseId", tag: "distribute", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/distribution_stores/{store_name}/releases/{release_id}/realtimestatus", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the store */
                public var storeName: String

                /** The id of the release */
                public var releaseId: Double

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(storeName: String, releaseId: Double, ownerName: String, appName: String) {
                    self.storeName = storeName
                    self.releaseId = releaseId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: StoreReleasesGetRealTimeStatusByReleaseId.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(storeName: String, releaseId: Double, ownerName: String, appName: String) {
                let options = Options(storeName: storeName, releaseId: releaseId, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "storeName" + "}", with: "\(self.options.storeName)").replacingOccurrences(of: "{" + "releaseId" + "}", with: "\(self.options.releaseId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Return the Real time Status publishing of release from store. */
            public class Status200: APIModel {

                /** app id */
                public var appId: String?

                /** release id */
                public var releaseId: String?

                /** Status Data from store */
                public var status: Status?

                /** Return the Real time Status publishing of release from store. */
                public class Status: APIModel {

                    /** status from store */
                    public var status: String?

                    /** store type */
                    public var storetype: String?

                    /** track information from store */
                    public var track: String?

                    /** version of the app from store */
                    public var version: String?

                    public init(status: String? = nil, storetype: String? = nil, track: String? = nil, version: String? = nil) {
                        self.status = status
                        self.storetype = storetype
                        self.track = track
                        self.version = version
                    }

                    private enum CodingKeys: String, CodingKey {
                        case status
                        case storetype
                        case track
                        case version
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        status = try container.decodeIfPresent(.status)
                        storetype = try container.decodeIfPresent(.storetype)
                        track = try container.decodeIfPresent(.track)
                        version = try container.decodeIfPresent(.version)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encodeIfPresent(status, forKey: .status)
                        try container.encodeIfPresent(storetype, forKey: .storetype)
                        try container.encodeIfPresent(track, forKey: .track)
                        try container.encodeIfPresent(version, forKey: .version)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Status else { return false }
                      guard self.status == object.status else { return false }
                      guard self.storetype == object.storetype else { return false }
                      guard self.track == object.track else { return false }
                      guard self.version == object.version else { return false }
                      return true
                    }

                    public static func == (lhs: Status, rhs: Status) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(appId: String? = nil, releaseId: String? = nil, status: Status? = nil) {
                    self.appId = appId
                    self.releaseId = releaseId
                    self.status = status
                }

                private enum CodingKeys: String, CodingKey {
                    case appId = "app_id"
                    case releaseId = "release_id"
                    case status
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    appId = try container.decodeIfPresent(.appId)
                    releaseId = try container.decodeIfPresent(.releaseId)
                    status = try container.decodeIfPresent(.status)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(appId, forKey: .appId)
                    try container.encodeIfPresent(releaseId, forKey: .releaseId)
                    try container.encodeIfPresent(status, forKey: .status)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.appId == object.appId else { return false }
                  guard self.releaseId == object.releaseId else { return false }
                  guard self.status == object.status else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Return the Real time Status publishing of release from store. */
            public class DefaultResponse: APIModel {

                /** Return the Real time Status publishing of release from store. */
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
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: DefaultResponse? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, DefaultResponse> {
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
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
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