//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Errors {

    /**
    Percentage of error-free devices by day in the time range. Api will return -1 if crash devices is greater than active devices
    */
    public enum ErrorsGroupErrorFreeDevicePercentages {

        public static let service = APIService<Response>(id: "Errors_GroupErrorFreeDevicePercentages", tag: "errors", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/errors/errorGroups/{errorGroupId}/errorfreeDevicePercentages", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the error group */
                public var errorGroupId: String

                /** Start date time in data in ISO 8601 date time format */
                public var start: DateTime

                /** Last date time in data in ISO 8601 date time format */
                public var end: DateTime?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(errorGroupId: String, start: DateTime, end: DateTime? = nil, ownerName: String, appName: String) {
                    self.errorGroupId = errorGroupId
                    self.start = start
                    self.end = end
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ErrorsGroupErrorFreeDevicePercentages.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(errorGroupId: String, start: DateTime, end: DateTime? = nil, ownerName: String, appName: String) {
                let options = Options(errorGroupId: errorGroupId, start: start, end: end, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "errorGroupId" + "}", with: "\(self.options.errorGroupId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["start"] = options.start.encode()
                if let end = options.end?.encode() {
                  params["end"] = end
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Percentage of error-free devices by day in the time range. Api will return -1 if crash devices is greater than active devices */
            public class Status200: APIModel {

                /** Average percentage */
                public var averagePercentage: Double?

                /** The error-free percentage per day. */
                public var dailyPercentages: [DailyPercentages]?

                public init(averagePercentage: Double? = nil, dailyPercentages: [DailyPercentages]? = nil) {
                    self.averagePercentage = averagePercentage
                    self.dailyPercentages = dailyPercentages
                }

                private enum CodingKeys: String, CodingKey {
                    case averagePercentage
                    case dailyPercentages
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    averagePercentage = try container.decodeIfPresent(.averagePercentage)
                    dailyPercentages = try container.decodeArrayIfPresent(.dailyPercentages)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(averagePercentage, forKey: .averagePercentage)
                    try container.encodeIfPresent(dailyPercentages, forKey: .dailyPercentages)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.averagePercentage == object.averagePercentage else { return false }
                  guard self.dailyPercentages == object.dailyPercentages else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Percentage of error-free devices by day in the time range. Api will return -1 if crash devices is greater than active devices */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Percentage of error-free devices by day in the time range. Api will return -1 if crash devices is greater than active devices */
                public class ErrorType: APIModel {

                    /** Percentage of error-free devices by day in the time range. Api will return -1 if crash devices is greater than active devices */
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

            /** Percentage of error-free devices by day in the time range and overall percentage of the time range. */
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
