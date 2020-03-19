//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Errors {

    /**
    Delete a specific error and related attachments and blobs for an app. Searchable data will not be deleted immediately and may take up to 30 days.
    */
    public enum ErrorsDeleteError {

        public static let service = APIService<Response>(id: "Errors_DeleteError", tag: "errors", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/errors/errorGroups/{errorGroupId}/errors/{errorId}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The id of the error group */
                public var errorGroupId: String

                /** The id of the error */
                public var errorId: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(errorGroupId: String, errorId: String, ownerName: String, appName: String) {
                    self.errorGroupId = errorGroupId
                    self.errorId = errorId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ErrorsDeleteError.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(errorGroupId: String, errorId: String, ownerName: String, appName: String) {
                let options = Options(errorGroupId: errorGroupId, errorId: errorId, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "errorGroupId" + "}", with: "\(self.options.errorGroupId)").replacingOccurrences(of: "{" + "errorId" + "}", with: "\(self.options.errorId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Delete a specific error and related attachments and blobs for an app. Searchable data will not be deleted immediately and may take up to 30 days. */
            public class Status200: APIModel {

                public var appId: String?

                public var attachmentsDeleted: Int?

                public var blobsFailed: Int?

                public var blobsSucceeded: Int?

                public var errorGroupId: String?

                public var errorId: String?

                public var errorsDeleted: Int?

                public init(appId: String? = nil, attachmentsDeleted: Int? = nil, blobsFailed: Int? = nil, blobsSucceeded: Int? = nil, errorGroupId: String? = nil, errorId: String? = nil, errorsDeleted: Int? = nil) {
                    self.appId = appId
                    self.attachmentsDeleted = attachmentsDeleted
                    self.blobsFailed = blobsFailed
                    self.blobsSucceeded = blobsSucceeded
                    self.errorGroupId = errorGroupId
                    self.errorId = errorId
                    self.errorsDeleted = errorsDeleted
                }

                private enum CodingKeys: String, CodingKey {
                    case appId
                    case attachmentsDeleted
                    case blobsFailed
                    case blobsSucceeded
                    case errorGroupId
                    case errorId
                    case errorsDeleted
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    appId = try container.decodeIfPresent(.appId)
                    attachmentsDeleted = try container.decodeIfPresent(.attachmentsDeleted)
                    blobsFailed = try container.decodeIfPresent(.blobsFailed)
                    blobsSucceeded = try container.decodeIfPresent(.blobsSucceeded)
                    errorGroupId = try container.decodeIfPresent(.errorGroupId)
                    errorId = try container.decodeIfPresent(.errorId)
                    errorsDeleted = try container.decodeIfPresent(.errorsDeleted)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(appId, forKey: .appId)
                    try container.encodeIfPresent(attachmentsDeleted, forKey: .attachmentsDeleted)
                    try container.encodeIfPresent(blobsFailed, forKey: .blobsFailed)
                    try container.encodeIfPresent(blobsSucceeded, forKey: .blobsSucceeded)
                    try container.encodeIfPresent(errorGroupId, forKey: .errorGroupId)
                    try container.encodeIfPresent(errorId, forKey: .errorId)
                    try container.encodeIfPresent(errorsDeleted, forKey: .errorsDeleted)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.appId == object.appId else { return false }
                  guard self.attachmentsDeleted == object.attachmentsDeleted else { return false }
                  guard self.blobsFailed == object.blobsFailed else { return false }
                  guard self.blobsSucceeded == object.blobsSucceeded else { return false }
                  guard self.errorGroupId == object.errorGroupId else { return false }
                  guard self.errorId == object.errorId else { return false }
                  guard self.errorsDeleted == object.errorsDeleted else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Delete a specific error and related attachments and blobs for an app. Searchable data will not be deleted immediately and may take up to 30 days. */
            public class DefaultResponse: APIModel {

                public var error: ErrorType

                /** Delete a specific error and related attachments and blobs for an app. Searchable data will not be deleted immediately and may take up to 30 days. */
                public class ErrorType: APIModel {

                    /** Delete a specific error and related attachments and blobs for an app. Searchable data will not be deleted immediately and may take up to 30 days. */
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

            /** Success. */
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
