//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Gdpr {

    public enum DataSubjectRightDeleteStatusRequest {

        public static let service = APIService<Response>(id: "DataSubjectRight_DeleteStatusRequest", tag: "gdpr", method: "GET", path: "/v0.1/user/dsr/delete/{token}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Unique request ID (GUID) */
                public var token: ID

                /** Email used for delete with x-authz-bypass headers */
                public var email: String

                public init(token: ID, email: String) {
                    self.token = token
                    self.email = email
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DataSubjectRightDeleteStatusRequest.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(token: ID, email: String) {
                let options = Options(token: token, email: email)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "token" + "}", with: "\(self.options.token.encode())")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["email"] = options.email
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                /** Status of data subject right request */
                public enum Status: String, Codable {
                    case none = "None"
                    case created = "Created"
                    case queued = "Queued"
                    case inProgress = "InProgress"
                    case completed = "Completed"
                    case failed = "Failed"

                    public static let cases: [Status] = [
                      .none,
                      .created,
                      .queued,
                      .inProgress,
                      .completed,
                      .failed,
                    ]
                }

                /** Status of data subject right request */
                public var status: Status

                /** explanation message of the status */
                public var message: String

                /** Azure Storage shared access signature (SAS) URL for exported user data. */
                public var sasUrl: String?

                /** Whether Azure Storage shared access signature (SAS) URL has expired or not. */
                public var sasUrlExpired: Bool?

                public init(status: Status, message: String, sasUrl: String? = nil, sasUrlExpired: Bool? = nil) {
                    self.status = status
                    self.message = message
                    self.sasUrl = sasUrl
                    self.sasUrlExpired = sasUrlExpired
                }

                private enum CodingKeys: String, CodingKey {
                    case status
                    case message
                    case sasUrl
                    case sasUrlExpired
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    status = try container.decode(.status)
                    message = try container.decode(.message)
                    sasUrl = try container.decodeIfPresent(.sasUrl)
                    sasUrlExpired = try container.decodeIfPresent(.sasUrlExpired)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(status, forKey: .status)
                    try container.encode(message, forKey: .message)
                    try container.encodeIfPresent(sasUrl, forKey: .sasUrl)
                    try container.encodeIfPresent(sasUrlExpired, forKey: .sasUrlExpired)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.message == object.message else { return false }
                  guard self.sasUrl == object.sasUrl else { return false }
                  guard self.sasUrlExpired == object.sasUrlExpired else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class DefaultResponse: APIModel {

                public var error: ErrorType

                public class ErrorType: APIModel {

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
            public typealias SuccessType = Status200

            /** Data subject right delete request status successfully retrieved. */
            case status200(Status200)

            /** Error code with reason */
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
