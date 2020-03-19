//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Errors {

    /**
    Error groups list based on search parameters
    */
    public enum ErrorsErrorGroupsSearch {

        public static let service = APIService<Response>(id: "Errors_ErrorGroupsSearch", tag: "errors", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/errors/errorGroups/search", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** A filter as specified in OData notation */
                public var filter: String?

                /** A query string */
                public var q: String?

                /** It controls the order of sorting */
                public var order: ErrorSearchOrderParameter?

                /** It controls the sort based on specified field */
                public var sort: ErrorGroupSearchSortParameter?

                /** The maximum number of results to return */
                public var dollartop: Int?

                /** The offset (starting at 0) of the first result to return. This parameter along with limit is used to perform pagination. */
                public var dollarskip: Int?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(filter: String? = nil, q: String? = nil, order: ErrorSearchOrderParameter? = nil, sort: ErrorGroupSearchSortParameter? = nil, dollartop: Int? = nil, dollarskip: Int? = nil, ownerName: String, appName: String) {
                    self.filter = filter
                    self.q = q
                    self.order = order
                    self.sort = sort
                    self.dollartop = dollartop
                    self.dollarskip = dollarskip
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ErrorsErrorGroupsSearch.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(filter: String? = nil, q: String? = nil, order: ErrorSearchOrderParameter? = nil, sort: ErrorGroupSearchSortParameter? = nil, dollartop: Int? = nil, dollarskip: Int? = nil, ownerName: String, appName: String) {
                let options = Options(filter: filter, q: q, order: order, sort: sort, dollartop: dollartop, dollarskip: dollarskip, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let filter = options.filter {
                  params["filter"] = filter
                }
                if let q = options.q {
                  params["q"] = q
                }
                if let order = options.order?.encode() {
                  params["order"] = order
                }
                if let sort = options.sort?.encode() {
                  params["sort"] = sort
                }
                if let dollartop = options.dollartop {
                  params["$top"] = dollartop
                }
                if let dollarskip = options.dollarskip {
                  params["$skip"] = dollarskip
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Error groups list based on search parameters */
            public class Status200: APIModel {

                public var errorGroups: [[String: Any]]?

                public var hasMoreResults: Bool?

                public init(errorGroups: [[String: Any]]? = nil, hasMoreResults: Bool? = nil) {
                    self.errorGroups = errorGroups
                    self.hasMoreResults = hasMoreResults
                }

                private enum CodingKeys: String, CodingKey {
                    case errorGroups
                    case hasMoreResults
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    errorGroups = try container.decodeAnyIfPresent(.errorGroups)
                    hasMoreResults = try container.decodeIfPresent(.hasMoreResults)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeAnyIfPresent(errorGroups, forKey: .errorGroups)
                    try container.encodeIfPresent(hasMoreResults, forKey: .hasMoreResults)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.errorGroups == object.errorGroups else { return false }
                  guard self.hasMoreResults == object.hasMoreResults else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Error groups list based on search parameters */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Error groups list based on search parameters */
                public class ErrorType: APIModel {

                    /** Error groups list based on search parameters */
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

            /** List of error groups */
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
