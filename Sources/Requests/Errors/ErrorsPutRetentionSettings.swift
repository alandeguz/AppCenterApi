//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Errors {

    /**
    Creates and updates the retention settings in days
    */
    public enum ErrorsPutRetentionSettings {

        public static let service = APIService<Response>(id: "errors_putRetentionSettings", tag: "errors", method: "PUT", path: "/v0.1/apps/{owner_name}/{app_name}/errors/retention_settings", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Creates and updates the retention settings in days */
            public class ErrorRetentionInDays: APIModel {

                /** Creates and updates the retention settings in days */
                public enum RetentionInDays: Int, Codable {
                    case _28 = 28
                    case _90 = 90

                    public static let cases: [RetentionInDays] = [
                      ._28,
                      ._90,
                    ]
                }

                public var retentionInDays: RetentionInDays

                public init(retentionInDays: RetentionInDays) {
                    self.retentionInDays = retentionInDays
                }

                private enum CodingKeys: String, CodingKey {
                    case retentionInDays = "retention_in_days"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    retentionInDays = try container.decode(.retentionInDays)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(retentionInDays, forKey: .retentionInDays)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? ErrorRetentionInDays else { return false }
                  guard self.retentionInDays == object.retentionInDays else { return false }
                  return true
                }

                public static func == (lhs: ErrorRetentionInDays, rhs: ErrorRetentionInDays) -> Bool {
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

            public var errorRetentionInDays: ErrorRetentionInDays

            public init(errorRetentionInDays: ErrorRetentionInDays, options: Options) {
                self.errorRetentionInDays = errorRetentionInDays
                self.options = options
                super.init(service: ErrorsPutRetentionSettings.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(errorRetentionInDays)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(errorRetentionInDays: ErrorRetentionInDays, ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(errorRetentionInDays: errorRetentionInDays, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Creates and updates the retention settings in days */
            public class Status200: APIModel {

                /** Creates and updates the retention settings in days */
                public enum RetentionInDays: Int, Codable {
                    case _28 = 28
                    case _90 = 90

                    public static let cases: [RetentionInDays] = [
                      ._28,
                      ._90,
                    ]
                }

                public var retentionInDays: RetentionInDays

                public init(retentionInDays: RetentionInDays) {
                    self.retentionInDays = retentionInDays
                }

                private enum CodingKeys: String, CodingKey {
                    case retentionInDays = "retention_in_days"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    retentionInDays = try container.decode(.retentionInDays)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(retentionInDays, forKey: .retentionInDays)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.retentionInDays == object.retentionInDays else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates and updates the retention settings in days */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Creates and updates the retention settings in days */
                public class ErrorType: APIModel {

                    /** Creates and updates the retention settings in days */
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

            /** Success */
            case status200(Status200)

            /** Error code with reason. */
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
