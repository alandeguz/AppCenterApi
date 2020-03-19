//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Application specific build service status
    */
    public enum BuildsGetStatusByAppId {

        public static let service = APIService<Response>(id: "builds_getStatusByAppId", tag: "build", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/build_service_status", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

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
                super.init(service: BuildsGetStatusByAppId.service)
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

            /** Application specific build service status */
            public class Status200: APIModel {

                public var message: String?

                public var os: String?

                public var service: String?

                public var status: String?

                public var url: String?

                public var validUntil: Int?

                public init(message: String? = nil, os: String? = nil, service: String? = nil, status: String? = nil, url: String? = nil, validUntil: Int? = nil) {
                    self.message = message
                    self.os = os
                    self.service = service
                    self.status = status
                    self.url = url
                    self.validUntil = validUntil
                }

                private enum CodingKeys: String, CodingKey {
                    case message
                    case os
                    case service
                    case status
                    case url
                    case validUntil = "valid_until"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    message = try container.decodeIfPresent(.message)
                    os = try container.decodeIfPresent(.os)
                    service = try container.decodeIfPresent(.service)
                    status = try container.decodeIfPresent(.status)
                    url = try container.decodeIfPresent(.url)
                    validUntil = try container.decodeIfPresent(.validUntil)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(message, forKey: .message)
                    try container.encodeIfPresent(os, forKey: .os)
                    try container.encodeIfPresent(service, forKey: .service)
                    try container.encodeIfPresent(status, forKey: .status)
                    try container.encodeIfPresent(url, forKey: .url)
                    try container.encodeIfPresent(validUntil, forKey: .validUntil)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.message == object.message else { return false }
                  guard self.os == object.os else { return false }
                  guard self.service == object.service else { return false }
                  guard self.status == object.status else { return false }
                  guard self.url == object.url else { return false }
                  guard self.validUntil == object.validUntil else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success. Availability for build service status is stored in response schema. */
            case status200(Status200)

            /** Bad Request */
            case defaultResponse(statusCode: Int)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode): return statusCode
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
                default: self = .defaultResponse(statusCode: statusCode)
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
