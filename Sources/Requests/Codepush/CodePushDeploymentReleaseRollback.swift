//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Codepush {

    /**
    Rollback the latest or a specific release for an app deployment
    */
    public enum CodePushDeploymentReleaseRollback {

        public static let service = APIService<Response>(id: "codePushDeploymentRelease_rollback", tag: "codepush", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/deployments/{deployment_name}/rollback_release", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Rollback the latest or a specific release for an app deployment */
            public class ReleaseLabel: APIModel {

                public var label: String?

                public init(label: String? = nil) {
                    self.label = label
                }

                private enum CodingKeys: String, CodingKey {
                    case label
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    label = try container.decodeIfPresent(.label)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(label, forKey: .label)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? ReleaseLabel else { return false }
                  guard self.label == object.label else { return false }
                  return true
                }

                public static func == (lhs: ReleaseLabel, rhs: ReleaseLabel) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

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

            public var releaseLabel: ReleaseLabel?

            public init(releaseLabel: ReleaseLabel?, options: Options) {
                self.releaseLabel = releaseLabel
                self.options = options
                super.init(service: CodePushDeploymentReleaseRollback.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(releaseLabel)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(deploymentName: String, releaseLabel: ReleaseLabel? = nil, ownerName: String, appName: String) {
                let options = Options(deploymentName: deploymentName, ownerName: ownerName, appName: appName)
                self.init(releaseLabel: releaseLabel, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "deploymentName" + "}", with: "\(self.options.deploymentName)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Rollback the latest or a specific release for an app deployment */
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

            /** Success */
            case status201(UNKNOWN_ALL_OFF)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: UNKNOWN_ALL_OFF? {
                switch self {
                case .status201(let response): return response
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
                case .status201(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status201: return 201
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status201: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 201: self = try .status201(decoder.decode(UNKNOWN_ALL_OFF.self, from: data))
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