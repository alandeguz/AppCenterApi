//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Push {

    /**
    Get a list of notifications from the service.
    */
    public enum PushList {

        public static let service = APIService<Response>(id: "Push_List", tag: "push", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/push/notifications", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The maximum number of results to return. (0 will fetch all results) */
                public var dollartop: Int?

                /** The value identifies a starting point in the collection of entities. This parameter along with limit is used to perform pagination. */
                public var dollarskiptoken: String?

                /** controls the sorting order and sorting based on which column */
                public var dollarorderby: String?

                /** Controls whether or not to include a count of all the items across all pages. */
                public var dollarinlinecount: InlineCountParameter?

                /** Include arhived push notifications */
                public var includeArchived: Bool?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(dollartop: Int? = nil, dollarskiptoken: String? = nil, dollarorderby: String? = nil, dollarinlinecount: InlineCountParameter? = nil, includeArchived: Bool? = nil, ownerName: String, appName: String) {
                    self.dollartop = dollartop
                    self.dollarskiptoken = dollarskiptoken
                    self.dollarorderby = dollarorderby
                    self.dollarinlinecount = dollarinlinecount
                    self.includeArchived = includeArchived
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: PushList.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(dollartop: Int? = nil, dollarskiptoken: String? = nil, dollarorderby: String? = nil, dollarinlinecount: InlineCountParameter? = nil, includeArchived: Bool? = nil, ownerName: String, appName: String) {
                let options = Options(dollartop: dollartop, dollarskiptoken: dollarskiptoken, dollarorderby: dollarorderby, dollarinlinecount: dollarinlinecount, includeArchived: includeArchived, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let dollartop = options.dollartop {
                  params["$top"] = dollartop
                }
                if let dollarskiptoken = options.dollarskiptoken {
                  params["$skiptoken"] = dollarskiptoken
                }
                if let dollarorderby = options.dollarorderby {
                  params["$orderby"] = dollarorderby
                }
                if let dollarinlinecount = options.dollarinlinecount?.encode() {
                  params["$inlinecount"] = dollarinlinecount
                }
                if let includeArchived = options.includeArchived {
                  params["include_archived"] = includeArchived
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Get a list of notifications from the service. */
            public class Status200: APIModel {

                public var values: [Values]

                public var nextLink: String?

                /** the total count of notifications */
                public var total: Int?

                public init(values: [Values], nextLink: String? = nil, total: Int? = nil) {
                    self.values = values
                    self.nextLink = nextLink
                    self.total = total
                }

                private enum CodingKeys: String, CodingKey {
                    case values
                    case nextLink
                    case total
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    values = try container.decodeArray(.values)
                    nextLink = try container.decodeIfPresent(.nextLink)
                    total = try container.decodeIfPresent(.total)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(values, forKey: .values)
                    try container.encodeIfPresent(nextLink, forKey: .nextLink)
                    try container.encodeIfPresent(total, forKey: .total)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.values == object.values else { return false }
                  guard self.nextLink == object.nextLink else { return false }
                  guard self.total == object.total else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Get a list of notifications from the service. */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Get a list of notifications from the service. */
                public class ErrorType: APIModel {

                    /** Get a list of notifications from the service. */
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

            /** List of notifications */
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
