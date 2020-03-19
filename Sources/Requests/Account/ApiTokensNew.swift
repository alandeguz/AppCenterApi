//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Account {

    /**
    Creates a new API token
    */
    public enum ApiTokensNew {

        public static let service = APIService<Response>(id: "apiTokens_new", tag: "account", method: "POST", path: "/v0.1/api_tokens", hasBody: true, securityRequirement: SecurityRequirement(type: "Basic", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Creates a new API token */
            public class Description: APIModel {

                /** The scope for this token. */
                public enum Scope: String, Codable {
                    case all = "all"
                    case viewer = "viewer"

                    public static let cases: [Scope] = [
                      .all,
                      .viewer,
                    ]
                }

                /** The description of the token */
                public var description: String?

                /** The scope for this token. */
                public var scope: [Scope]?

                public init(description: String? = nil, scope: [Scope]? = nil) {
                    self.description = description
                    self.scope = scope
                }

                private enum CodingKeys: String, CodingKey {
                    case description
                    case scope
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    description = try container.decodeIfPresent(.description)
                    scope = try container.decodeArrayIfPresent(.scope)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(description, forKey: .description)
                    try container.encodeIfPresent(scope, forKey: .scope)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Description else { return false }
                  guard self.description == object.description else { return false }
                  guard self.scope == object.scope else { return false }
                  return true
                }

                public static func == (lhs: Description, rhs: Description) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public var description: Description?

            public init(description: Description?) {
                self.description = description
                super.init(service: ApiTokensNew.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(description)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Creates a new API token */
            public class Status201: APIModel {

                /** The scope for this token. */
                public enum Scope: String, Codable {
                    case all = "all"
                    case viewer = "viewer"

                    public static let cases: [Scope] = [
                      .all,
                      .viewer,
                    ]
                }

                /** The unique id (UUID) of the api token */
                public var id: String

                /** The creation time */
                public var createdAt: String

                /** The api token generated will not be accessible again */
                public var apiToken: String

                /** The description of the token */
                public var description: String?

                /** The scope for this token. */
                public var scope: [Scope]?

                public init(id: String, createdAt: String, apiToken: String, description: String? = nil, scope: [Scope]? = nil) {
                    self.id = id
                    self.createdAt = createdAt
                    self.apiToken = apiToken
                    self.description = description
                    self.scope = scope
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case createdAt = "created_at"
                    case apiToken = "api_token"
                    case description
                    case scope
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    createdAt = try container.decode(.createdAt)
                    apiToken = try container.decode(.apiToken)
                    description = try container.decodeIfPresent(.description)
                    scope = try container.decodeArrayIfPresent(.scope)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(createdAt, forKey: .createdAt)
                    try container.encode(apiToken, forKey: .apiToken)
                    try container.encodeIfPresent(description, forKey: .description)
                    try container.encodeIfPresent(scope, forKey: .scope)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status201 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.createdAt == object.createdAt else { return false }
                  guard self.apiToken == object.apiToken else { return false }
                  guard self.description == object.description else { return false }
                  guard self.scope == object.scope else { return false }
                  return true
                }

                public static func == (lhs: Status201, rhs: Status201) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates a new API token */
            public class Status400: APIModel {

                public var error: ErrorType

                /** Creates a new API token */
                public class ErrorType: APIModel {

                    /** Creates a new API token */
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
                  guard let object = object as? Status400 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates a new API token */
            public class Status401: APIModel {

                public var error: ErrorType

                /** Creates a new API token */
                public class ErrorType: APIModel {

                    /** Creates a new API token */
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
                  guard let object = object as? Status401 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status401, rhs: Status401) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status201

            /** Success */
            case status201(Status201)

            /** Error */
            case status400(Status400)

            /** Unauthorized */
            case status401(Status401)

            public var success: Status201? {
                switch self {
                case .status201(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status201(let response): return response
                case .status400(let response): return response
                case .status401(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .status400: return 400
                case .status401: return 401
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .status400: return false
                case .status401: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(Status201.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 401: self = try .status401(decoder.decode(Status401.self, from: data))
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
