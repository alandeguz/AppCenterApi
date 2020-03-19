//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Analytics {

    /**
    Logs received between the specified start time and the current time. The API will return a maximum of 100 logs per call.
    */
    public enum AnalyticsGenericLogFlow {

        public static let service = APIService<Response>(id: "Analytics_GenericLogFlow", tag: "analytics", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/analytics/generic_log_flow", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Start date time in data in ISO 8601 date time format. It must be within the current day in the UTC timezone. The default value is the start time of the current day in UTC timezone. */
                public var start: DateTime?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(start: DateTime? = nil, ownerName: String, appName: String) {
                    self.start = start
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AnalyticsGenericLogFlow.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(start: DateTime? = nil, ownerName: String, appName: String) {
                let options = Options(start: start, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let start = options.start?.encode() {
                  params["start"] = start
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Logs received between the specified start time and the current time. The API will return a maximum of 100 logs per call. */
            public class Status200: APIModel {

                /** the list of logs */
                public var logs: [Logs]

                /** indicates if the number of available logs are more than the max allowed return limit(100). */
                public var exceededMaxLimit: Bool?

                /** the timestamp of the last log received. This value can be used as the start time parameter in the consecutive API call. */
                public var lastReceivedLogTimestamp: DateTime?

                public init(logs: [Logs], exceededMaxLimit: Bool? = nil, lastReceivedLogTimestamp: DateTime? = nil) {
                    self.logs = logs
                    self.exceededMaxLimit = exceededMaxLimit
                    self.lastReceivedLogTimestamp = lastReceivedLogTimestamp
                }

                private enum CodingKeys: String, CodingKey {
                    case logs
                    case exceededMaxLimit = "exceeded_max_limit"
                    case lastReceivedLogTimestamp = "last_received_log_timestamp"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    logs = try container.decodeArray(.logs)
                    exceededMaxLimit = try container.decodeIfPresent(.exceededMaxLimit)
                    lastReceivedLogTimestamp = try container.decodeIfPresent(.lastReceivedLogTimestamp)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(logs, forKey: .logs)
                    try container.encodeIfPresent(exceededMaxLimit, forKey: .exceededMaxLimit)
                    try container.encodeIfPresent(lastReceivedLogTimestamp, forKey: .lastReceivedLogTimestamp)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.logs == object.logs else { return false }
                  guard self.exceededMaxLimit == object.exceededMaxLimit else { return false }
                  guard self.lastReceivedLogTimestamp == object.lastReceivedLogTimestamp else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Logs received between the specified start time and the current time. The API will return a maximum of 100 logs per call. */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Logs received between the specified start time and the current time. The API will return a maximum of 100 logs per call. */
                public class ErrorType: APIModel {

                    /** Logs received between the specified start time and the current time. The API will return a maximum of 100 logs per call. */
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

            /** List of logs for the requested time range. */
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
