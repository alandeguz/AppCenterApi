//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Distributes a release to a user
    */
    public enum ReleasesAddTesters {

        public static let service = APIService<Response>(id: "releases_addTesters", tag: "distribute", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/releases/{release_id}/testers", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Distributes a release to a user */
            public class Body: APIModel {

                /** Tester's email address */
                public var email: String

                /** Flag to mark the release for the provided destinations as mandatory */
                public var mandatoryUpdate: Bool?

                /** Flag to enable or disable notifications to testers */
                public var notifyTesters: Bool?

                public init(email: String, mandatoryUpdate: Bool? = nil, notifyTesters: Bool? = nil) {
                    self.email = email
                    self.mandatoryUpdate = mandatoryUpdate
                    self.notifyTesters = notifyTesters
                }

                private enum CodingKeys: String, CodingKey {
                    case email
                    case mandatoryUpdate = "mandatory_update"
                    case notifyTesters = "notify_testers"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    email = try container.decode(.email)
                    mandatoryUpdate = try container.decodeIfPresent(.mandatoryUpdate)
                    notifyTesters = try container.decodeIfPresent(.notifyTesters)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(email, forKey: .email)
                    try container.encodeIfPresent(mandatoryUpdate, forKey: .mandatoryUpdate)
                    try container.encodeIfPresent(notifyTesters, forKey: .notifyTesters)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Body else { return false }
                  guard self.email == object.email else { return false }
                  guard self.mandatoryUpdate == object.mandatoryUpdate else { return false }
                  guard self.notifyTesters == object.notifyTesters else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The ID of the release */
                public var releaseId: Int

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(releaseId: Int, ownerName: String, appName: String) {
                    self.releaseId = releaseId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options) {
                self.body = body
                self.options = options
                super.init(service: ReleasesAddTesters.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(releaseId: Int, body: Body, ownerName: String, appName: String) {
                let options = Options(releaseId: releaseId, ownerName: ownerName, appName: appName)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "releaseId" + "}", with: "\(self.options.releaseId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Distributes a release to a user */
            public class Status400: APIModel {

                /** Distributes a release to a user */
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
                  guard let object = object as? Status400 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Distributes a release to a user */
            public class Status404: APIModel {

                /** Distributes a release to a user */
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
            public typealias SuccessType = [String: Any]

            /** Created */
            case status201([String: Any])

            /** Failure */
            case status400(Status400)

            /** Release not found */
            case status404(Status404)

            public var success: [String: Any]? {
                switch self {
                case .status201(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status201(let response): return response
                case .status400(let response): return response
                case .status404(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .status400: return 400
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .status400: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decodeAny([String: Any].self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
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
