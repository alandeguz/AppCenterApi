//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Codepush {

    /**
    Promote one release (default latest one) from one deployment to another
    */
    public enum CodePushDeploymentsPromote {

        public static let service = APIService<Response>(id: "codePushDeployments_promote", tag: "codepush", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}/promote_release/{promote_deployment_name}", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** deployment name */
                public var deploymentName: String

                /** deployment name */
                public var promoteDeploymentName: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(deploymentName: String, promoteDeploymentName: String, ownerName: String, appName: String) {
                    self.deploymentName = deploymentName
                    self.promoteDeploymentName = promoteDeploymentName
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var release: UNKNOWN_ALL_OFF?

            public init(release: UNKNOWN_ALL_OFF?, options: Options) {
                self.release = release
                self.options = options
                super.init(service: CodePushDeploymentsPromote.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(release)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(deploymentName: String, promoteDeploymentName: String, release: UNKNOWN_ALL_OFF? = nil, ownerName: String, appName: String) {
                let options = Options(deploymentName: deploymentName, promoteDeploymentName: promoteDeploymentName, ownerName: ownerName, appName: appName)
                self.init(release: release, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "deploymentName" + "}", with: "\(self.options.deploymentName)").replacingOccurrences(of: "{" + "promoteDeploymentName" + "}", with: "\(self.options.promoteDeploymentName)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Promote one release (default latest one) from one deployment to another */
            public class DefaultResponse: APIModel {

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
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = UNKNOWN_ALL_OFF

            /** Promote a new release to the target deployment, return this new release. */
            case status200(UNKNOWN_ALL_OFF)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: UNKNOWN_ALL_OFF? {
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
            public var responseResult: APIResponseResult<UNKNOWN_ALL_OFF, DefaultResponse> {
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
                case 200: self = try .status200(decoder.decode(UNKNOWN_ALL_OFF.self, from: data))
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
