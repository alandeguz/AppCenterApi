//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Account {

    /**
    Adds an app to a team
    */
    public enum TeamsAddApp {

        public static let service = APIService<Response>(id: "teams_addApp", tag: "account", method: "POST", path: "/v0.1/orgs/{org_name}/teams/{team_name}/apps", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Adds an app to a team */
            public class App: APIModel {

                /** The name of the app to be added to the distribution group */
                public var name: String

                public init(name: String) {
                    self.name = name
                }

                private enum CodingKeys: String, CodingKey {
                    case name
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    name = try container.decode(.name)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(name, forKey: .name)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? App else { return false }
                  guard self.name == object.name else { return false }
                  return true
                }

                public static func == (lhs: App, rhs: App) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The organization's name */
                public var orgName: String

                /** The team's name */
                public var teamName: String

                public init(orgName: String, teamName: String) {
                    self.orgName = orgName
                    self.teamName = teamName
                }
            }

            public var options: Options

            public var app: App

            public init(app: App, options: Options) {
                self.app = app
                self.options = options
                super.init(service: TeamsAddApp.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(app)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(orgName: String, teamName: String, app: App) {
                let options = Options(orgName: orgName, teamName: teamName)
                self.init(app: app, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "orgName" + "}", with: "\(self.options.orgName)").replacingOccurrences(of: "{" + "teamName" + "}", with: "\(self.options.teamName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Adds an app to a team */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Adds an app to a team */
                public class ErrorType: APIModel {

                    /** Adds an app to a team */
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
                      guard let object = object as? ErrorType else { return false }
                      guard self.code == object.code else { return false }
                      guard self.message == object.message else { return false }
                      return true
                    }

                    public static func == (lhs: ErrorType, rhs: ErrorType) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(error: ErrorType) {
                    self.error = error
                }

                private enum CodingKeys: String, CodingKey {
                    case error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    error = try container.decode(.error)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(error, forKey: .error)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = UNKNOWN_ALL_OFF

            /** Success */
            case status201(UNKNOWN_ALL_OFF)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: UNKNOWN_ALL_OFF? {
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
            public var responseResult: APIResponseResult<UNKNOWN_ALL_OFF, DefaultResponse> {
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
                case 201: self = try .status201(decoder.decode(UNKNOWN_ALL_OFF.self, from: data))
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
