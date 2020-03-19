//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Reconfigures the branch for build
    */
    public enum BranchConfigurationsUpdate {

        public static let service = APIService<Response>(id: "branchConfigurations_update", tag: "build", method: "PUT", path: "/v0.1/apps/{owner_name}/{app_name}/branches/{branch}/config", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

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

            public var params: [String: Params]

            public init(params: [String: Params], options: Options) {
                self.params = params
                self.options = options
                super.init(service: BranchConfigurationsUpdate.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(params)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(branch: String, params: [String: Params], ownerName: String, appName: String) {
                let options = Options(branch: branch, ownerName: ownerName, appName: appName)
                self.init(params: params, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "branch" + "}", with: "\(self.options.branch)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = UNKNOWN_ALL_OFF

            /** Success */
            case status200(UNKNOWN_ALL_OFF)

            public var success: UNKNOWN_ALL_OFF? {
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
                case 200: self = try .status200(decoder.decode(UNKNOWN_ALL_OFF.self, from: data))
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
