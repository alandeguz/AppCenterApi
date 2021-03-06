//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Codepush {

    /**
    Creates a CodePush Deployment for the given app
    */
    public enum CodePushDeploymentsCreate {

        public static let service = APIService<Response>(id: "codePushDeployments_create", tag: "codepush", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/deployments", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Creates a CodePush Deployment for the given app */
            public class Deployment: APIModel {

                public var name: String

                public var key: String?

                public var latestRelease: UNKNOWN_ALL_OFF?

                public init(name: String, key: String? = nil, latestRelease: UNKNOWN_ALL_OFF? = nil) {
                    self.name = name
                    self.key = key
                    self.latestRelease = latestRelease
                }

                private enum CodingKeys: String, CodingKey {
                    case name
                    case key
                    case latestRelease = "latest_release"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    name = try container.decode(.name)
                    key = try container.decodeIfPresent(.key)
                    latestRelease = try container.decodeIfPresent(.latestRelease)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(name, forKey: .name)
                    try container.encodeIfPresent(key, forKey: .key)
                    try container.encodeIfPresent(latestRelease, forKey: .latestRelease)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Deployment else { return false }
                  guard self.name == object.name else { return false }
                  guard self.key == object.key else { return false }
                  guard self.latestRelease == object.latestRelease else { return false }
                  return true
                }

                public static func == (lhs: Deployment, rhs: Deployment) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

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

            public var deployment: Deployment

            public init(deployment: Deployment, options: Options) {
                self.deployment = deployment
                self.options = options
                super.init(service: CodePushDeploymentsCreate.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(deployment)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(deployment: Deployment, ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(deployment: deployment, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Creates a CodePush Deployment for the given app */
            public class Status201: APIModel {

                public var name: String

                public var key: String?

                public var latestRelease: UNKNOWN_ALL_OFF?

                public init(name: String, key: String? = nil, latestRelease: UNKNOWN_ALL_OFF? = nil) {
                    self.name = name
                    self.key = key
                    self.latestRelease = latestRelease
                }

                private enum CodingKeys: String, CodingKey {
                    case name
                    case key
                    case latestRelease = "latest_release"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    name = try container.decode(.name)
                    key = try container.decodeIfPresent(.key)
                    latestRelease = try container.decodeIfPresent(.latestRelease)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(name, forKey: .name)
                    try container.encodeIfPresent(key, forKey: .key)
                    try container.encodeIfPresent(latestRelease, forKey: .latestRelease)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status201 else { return false }
                  guard self.name == object.name else { return false }
                  guard self.key == object.key else { return false }
                  guard self.latestRelease == object.latestRelease else { return false }
                  return true
                }

                public static func == (lhs: Status201, rhs: Status201) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates a CodePush Deployment for the given app */
            public class DefaultResponse: APIModel {

                public var message: String

                public init(message: String) {
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status201

            /** Success */
            case status201(Status201)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Status201? {
                switch self {
                case .status201(let response): return response
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
            public var responseResult: APIResponseResult<Status201, DefaultResponse> {
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
                case .status201(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(Status201.self, from: data))
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
