//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Account {

    /**
    Creates a new organization and returns it to the caller
    */
    public enum OrganizationsCreateOrUpdate {

        public static let service = APIService<Response>(id: "organizations_createOrUpdate", tag: "account", method: "POST", path: "/v0.1/orgs", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Creates a new organization and returns it to the caller */
            public class Organization: APIModel {

                /** The display name of the organization */
                public var displayName: String?

                /** The name of the organization used in URLs */
                public var name: String?

                public init(displayName: String? = nil, name: String? = nil) {
                    self.displayName = displayName
                    self.name = name
                }

                private enum CodingKeys: String, CodingKey {
                    case displayName = "display_name"
                    case name
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    displayName = try container.decodeIfPresent(.displayName)
                    name = try container.decodeIfPresent(.name)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(displayName, forKey: .displayName)
                    try container.encodeIfPresent(name, forKey: .name)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Organization else { return false }
                  guard self.displayName == object.displayName else { return false }
                  guard self.name == object.name else { return false }
                  return true
                }

                public static func == (lhs: Organization, rhs: Organization) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public var organization: Organization

            public init(organization: Organization) {
                self.organization = organization
                super.init(service: OrganizationsCreateOrUpdate.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(organization)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Creates a new organization and returns it to the caller */
            public class Status201: APIModel {

                /** The creation origin of this organization */
                public enum Origin: String, Codable {
                    case appcenter = "appcenter"
                    case hockeyapp = "hockeyapp"

                    public static let cases: [Origin] = [
                      .appcenter,
                      .hockeyapp,
                    ]
                }

                /** The internal unique id (UUID) of the organization. */
                public var id: ID

                /** The display name of the organization */
                public var displayName: String

                /** The slug name of the organization */
                public var name: String

                /** The creation origin of this organization */
                public var origin: Origin

                /** The creation date of this organization */
                public var createdAt: String

                /** The date the organization was last updated at */
                public var updatedAt: String

                /** The URL to a user-uploaded Avatar image */
                public var avatarURL: String?

                public init(id: ID, displayName: String, name: String, origin: Origin, createdAt: String, updatedAt: String, avatarURL: String? = nil) {
                    self.id = id
                    self.displayName = displayName
                    self.name = name
                    self.origin = origin
                    self.createdAt = createdAt
                    self.updatedAt = updatedAt
                    self.avatarURL = avatarURL
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case displayName = "display_name"
                    case name
                    case origin
                    case createdAt = "created_at"
                    case updatedAt = "updated_at"
                    case avatarURL = "avatar_url"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    displayName = try container.decode(.displayName)
                    name = try container.decode(.name)
                    origin = try container.decode(.origin)
                    createdAt = try container.decode(.createdAt)
                    updatedAt = try container.decode(.updatedAt)
                    avatarURL = try container.decodeIfPresent(.avatarURL)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(displayName, forKey: .displayName)
                    try container.encode(name, forKey: .name)
                    try container.encode(origin, forKey: .origin)
                    try container.encode(createdAt, forKey: .createdAt)
                    try container.encode(updatedAt, forKey: .updatedAt)
                    try container.encodeIfPresent(avatarURL, forKey: .avatarURL)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status201 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.displayName == object.displayName else { return false }
                  guard self.name == object.name else { return false }
                  guard self.origin == object.origin else { return false }
                  guard self.createdAt == object.createdAt else { return false }
                  guard self.updatedAt == object.updatedAt else { return false }
                  guard self.avatarURL == object.avatarURL else { return false }
                  return true
                }

                public static func == (lhs: Status201, rhs: Status201) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates a new organization and returns it to the caller */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Creates a new organization and returns it to the caller */
                public class ErrorType: APIModel {

                    /** Creates a new organization and returns it to the caller */
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
            public typealias SuccessType = Status201

            /** Created */
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
