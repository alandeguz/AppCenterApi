//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Create a new asset to upload a file
    */
    public enum FileAssetsCreate {

        public static let service = APIService<Response>(id: "fileAssets_create", tag: "build", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/file_asset", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(ownerName: String, appName: String) {
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var payload: [String: Any]?

            public init(payload: [String: Any]?, options: Options) {
                self.payload = payload
                self.options = options
                super.init(service: FileAssetsCreate.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(AnyCodable(payload).value)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(payload: [String: Any]? = nil, ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(payload: payload, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Create a new asset to upload a file */
            public class Status200: APIModel {

                public var id: String?

                public var location: String?

                public var token: String?

                public var uploadDomain: String?

                public var uploadWindowLocation: String?

                public var urlEncodedToken: String?

                public init(id: String? = nil, location: String? = nil, token: String? = nil, uploadDomain: String? = nil, uploadWindowLocation: String? = nil, urlEncodedToken: String? = nil) {
                    self.id = id
                    self.location = location
                    self.token = token
                    self.uploadDomain = uploadDomain
                    self.uploadWindowLocation = uploadWindowLocation
                    self.urlEncodedToken = urlEncodedToken
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case location
                    case token
                    case uploadDomain
                    case uploadWindowLocation
                    case urlEncodedToken
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decodeIfPresent(.id)
                    location = try container.decodeIfPresent(.location)
                    token = try container.decodeIfPresent(.token)
                    uploadDomain = try container.decodeIfPresent(.uploadDomain)
                    uploadWindowLocation = try container.decodeIfPresent(.uploadWindowLocation)
                    urlEncodedToken = try container.decodeIfPresent(.urlEncodedToken)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(id, forKey: .id)
                    try container.encodeIfPresent(location, forKey: .location)
                    try container.encodeIfPresent(token, forKey: .token)
                    try container.encodeIfPresent(uploadDomain, forKey: .uploadDomain)
                    try container.encodeIfPresent(uploadWindowLocation, forKey: .uploadWindowLocation)
                    try container.encodeIfPresent(urlEncodedToken, forKey: .urlEncodedToken)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.location == object.location else { return false }
                  guard self.token == object.token else { return false }
                  guard self.uploadDomain == object.uploadDomain else { return false }
                  guard self.uploadWindowLocation == object.uploadWindowLocation else { return false }
                  guard self.urlEncodedToken == object.urlEncodedToken else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Create a new asset to upload a file */
            public class DefaultResponse: APIModel {

                public var id: String

                public var code: String

                public var message: String

                public init(id: String, code: String, message: String) {
                    self.id = id
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.id == object.id else { return false }
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

            /** Bad Request */
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
