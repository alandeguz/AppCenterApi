//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS.
    */
    public enum ReleasesGetIosManifest {

        public static let service = APIService<Response>(id: "releases_getIosManifest", tag: "distribute", method: "GET", path: "/v0.1/public/apps/{app_id}/releases/{release_id}/ios_manifest", hasBody: false)

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The ID of the application */
                public var appId: String

                /** The release_id */
                public var releaseId: Int

                /** A hash that authorizes the download if it matches the release info. */
                public var token: String

                public init(appId: String, releaseId: Int, token: String) {
                    self.appId = appId
                    self.releaseId = releaseId
                    self.token = token
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ReleasesGetIosManifest.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(appId: String, releaseId: Int, token: String) {
                let options = Options(appId: appId, releaseId: releaseId, token: token)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "appId" + "}", with: "\(self.options.appId)").replacingOccurrences(of: "{" + "releaseId" + "}", with: "\(self.options.releaseId)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["token"] = options.token
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
            public class Status400: APIModel {

                /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
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
                  guard let object = object as? Status400 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
            public class Status403: APIModel {

                /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
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
                  guard let object = object as? Status403 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status403, rhs: Status403) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
            public class Status404: APIModel {

                /** Returns the manifest.plist in XML format for installing the release on a device. Only available for iOS. */
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
                  guard let object = object as? Status404 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Void

            /** Success */
            case status200

            /** The app's OS is not iOS. */
            case status400(Status400)

            /** Forbidden - The token provided doesn't match the release's token. */
            case status403(Status403)

            /** The app or release can't be found. */
            case status404(Status404)

            public var success: Void? {
                switch self {
                case .status200: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status400(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = .status200
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
                case 403: self = try .status403(decoder.decode(Status403.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
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
