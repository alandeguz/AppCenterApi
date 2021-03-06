//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Mbaas {

    public enum DataGetResourceProvisioning {

        public static let service = APIService<Response>(id: "data_getResourceProvisioning", tag: "mbaas", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/data/resource_provisioning", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

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

            public init(options: Options) {
                self.options = options
                super.init(service: DataGetResourceProvisioning.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            public class Status200: APIModel {

                public enum Status: String, Codable {
                    case empty = "Empty"
                    case accepted = "Accepted"
                    case creating = "Creating"
                    case connected = "Connected"
                    case invalid = "Invalid"

                    public static let cases: [Status] = [
                      .empty,
                      .accepted,
                      .creating,
                      .connected,
                      .invalid,
                    ]
                }

                public var status: Status

                public var message: String?

                public init(status: Status, message: String? = nil) {
                    self.status = status
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case status
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    status = try container.decode(.status)
                    message = try container.decodeIfPresent(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(status, forKey: .status)
                    try container.encodeIfPresent(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status404: APIModel {

                public enum Status: String, Codable {
                    case empty = "Empty"
                    case accepted = "Accepted"
                    case creating = "Creating"
                    case connected = "Connected"
                    case invalid = "Invalid"

                    public static let cases: [Status] = [
                      .empty,
                      .accepted,
                      .creating,
                      .connected,
                      .invalid,
                    ]
                }

                public var status: Status

                public var message: String?

                public init(status: Status, message: String? = nil) {
                    self.status = status
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case status
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    status = try container.decode(.status)
                    message = try container.decodeIfPresent(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(status, forKey: .status)
                    try container.encodeIfPresent(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public class Status500: APIModel {

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
                  guard let object = object as? Status500 else { return false }
                  guard self.error == object.error else { return false }
                  return true
                }

                public static func == (lhs: Status500, rhs: Status500) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            /** Not Found */
            case status404(Status404)

            /** Server Error */
            case status500(Status500)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status404: return 404
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status404: return false
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 500: self = try .status500(decoder.decode(Status500.self, from: data))
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
