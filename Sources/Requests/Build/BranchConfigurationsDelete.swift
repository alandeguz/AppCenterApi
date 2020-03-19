//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Deletes the branch build configuration
    */
    public enum BranchConfigurationsDelete {

        public static let service = APIService<Response>(id: "branchConfigurations_delete", tag: "build", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/branches/{branch}/config", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The branch name */
                public var branch: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(branch: String, ownerName: String, appName: String) {
                    self.branch = branch
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var payload: [String: Any]?

            public init(payload: [String: Any]?, options: Options) {
                self.payload = payload
                self.options = options
                super.init(service: BranchConfigurationsDelete.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(AnyCodable(payload).value)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(branch: String, payload: [String: Any]? = nil, ownerName: String, appName: String) {
                let options = Options(branch: branch, ownerName: ownerName, appName: appName)
                self.init(payload: payload, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "branch" + "}", with: "\(self.options.branch)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Deletes the branch build configuration */
            public class Status200: APIModel {

                public var message: String

                public init(message: String) {
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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