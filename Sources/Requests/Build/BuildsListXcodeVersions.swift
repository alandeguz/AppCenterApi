//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Gets the Xcode versions available to this app
    */
    public enum BuildsListXcodeVersions {

        public static let service = APIService<Response>(id: "builds_listXcodeVersions", tag: "build", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/xcode_versions", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

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
                super.init(service: BuildsListXcodeVersions.service)
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

            /** Gets the Xcode versions available to this app */
            public class DefaultResponse: APIModel {

                public var id: String

                public var code: String

                public var message: String

                public init(id: String, code: String, message: String) {
                    self.id = id
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.id == object.id else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = [Status200]

            /** Success */
            case status200([Status200])

            /** Bad Request */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: [Status200]? {
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
            public var responseResult: APIResponseResult<[Status200], DefaultResponse> {
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
                case 200: self = try .status200(decoder.decode([Status200].self, from: data))
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
