//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Analytics {

    /**
    Percentage of crash-free device by day in the time range based on the selected versions. Api will return -1 if crash devices is greater than active devices.
    */
    public enum AnalyticsCrashFreeDevicePercentages {

        public static let service = APIService<Response>(id: "Analytics_CrashFreeDevicePercentages", tag: "analytics", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/analytics/crashfree_device_percentages", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** Start date time in data in ISO 8601 date time format. */
                public var start: DateTime

                /** Last date time in data in ISO 8601 date time format. */
                public var end: DateTime?

                public var version: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(start: DateTime, end: DateTime? = nil, version: String, ownerName: String, appName: String) {
                    self.start = start
                    self.end = end
                    self.version = version
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: AnalyticsCrashFreeDevicePercentages.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(start: DateTime, end: DateTime? = nil, version: String, ownerName: String, appName: String) {
                let options = Options(start: start, end: end, version: version, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["start"] = options.start.encode()
                if let end = options.end?.encode() {
                  params["end"] = end
                }
                params["version"] = options.version
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Percentage of crash-free device by day in the time range based on the selected versions. Api will return -1 if crash devices is greater than active devices. */
            public class Status200: APIModel {

                /** Average percentage. */
                public var averagePercentage: Double?

                /** The crash-free percentage per day. */
                public var dailyPercentages: [DailyPercentages]?

                public init(averagePercentage: Double? = nil, dailyPercentages: [DailyPercentages]? = nil) {
                    self.averagePercentage = averagePercentage
                    self.dailyPercentages = dailyPercentages
                }

                private enum CodingKeys: String, CodingKey {
                    case averagePercentage = "average_percentage"
                    case dailyPercentages = "daily_percentages"
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

            /** Percentage of crash-free device by day in the time range based on the selected versions. Api will return -1 if crash devices is greater than active devices. */
            public class DefaultResponse: APIModel {

                public var error: ErrorType?

                /** Percentage of crash-free device by day in the time range based on the selected versions. Api will return -1 if crash devices is greater than active devices. */
                public class ErrorType: APIModel {

                    /** The status code return by the API. It can be 400 or 403 or 500. */
                    public enum Code: Int, Codable {
                        case _400 = 400
                        case _403 = 403
                        case _500 = 500

                        public static let cases: [Code] = [
                          ._400,
                          ._403,
                          ._500,
                        ]
                    }

                    /** The status code return by the API. It can be 400 or 403 or 500. */
                    public var code: Code?

                    /** The reason for the request failed. */
                    public var message: String?

                    public init(code: Code? = nil, message: String? = nil) {
                        self.code = code
                        self.message = message
                    }

                    private enum CodingKeys: String, CodingKey {
                        case code
                        case message
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        code = try container.decodeIfPresent(.code)
                        message = try container.decodeIfPresent(.message)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encodeIfPresent(code, forKey: .code)
                        try container.encodeIfPresent(message, forKey: .message)
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

                public init(error: ErrorType? = nil) {
                    self.error = error
                }

                private enum CodingKeys: String, CodingKey {
                    case error
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    error = try container.decodeIfPresent(.error)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(error, forKey: .error)
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

            /** Percentage of crash-free devices by day in the time range and overall percentage of the time range. */
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
