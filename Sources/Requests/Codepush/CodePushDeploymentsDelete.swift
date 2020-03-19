//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Codepush {

    /**
    Deletes a CodePush Deployment for the given app
    */
    public enum CodePushDeploymentsDelete {

        public static let service = APIService<Response>(id: "codePushDeployments_delete", tag: "codepush", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** deployment name */
                public var deploymentName: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(deploymentName: String, ownerName: String, appName: String) {
                    self.deploymentName = deploymentName
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var body: [String: Any]?

            public init(body: [String: Any]?, options: Options) {
                self.body = body
                self.options = options
                super.init(service: CodePushDeploymentsDelete.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(AnyCodable(body).value)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(deploymentName: String, body: [String: Any]? = nil, ownerName: String, appName: String) {
                let options = Options(deploymentName: deploymentName, ownerName: ownerName, appName: appName)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "deploymentName" + "}", with: "\(self.options.deploymentName)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Deletes a CodePush Deployment for the given app */
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
            public typealias SuccessType = Void

            /** Success */
            case status204

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Void? {
                switch self {
                case .status204: return ()
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
            public var responseResult: APIResponseResult<Void, DefaultResponse> {
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
                case .defaultResponse(_, let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
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
