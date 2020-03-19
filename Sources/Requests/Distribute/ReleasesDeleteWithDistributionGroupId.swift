//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Deletes a release with id 'release_id' in a given distribution group.
    */
    public enum ReleasesDeleteWithDistributionGroupId {

        public static let service = APIService<Response>(id: "releases_deleteWithDistributionGroupId", tag: "distribute", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/distribution_groups/{distribution_group_name}/releases/{release_id}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the app owner */
                public var ownerName: String

                /** The name of the app */
                public var appName: String

                /** The name of the distribution group. */
                public var distributionGroupName: String

                /** The ID identifying the unique release. */
                public var releaseId: Int

                public init(ownerName: String, appName: String, distributionGroupName: String, releaseId: Int) {
                    self.ownerName = ownerName
                    self.appName = appName
                    self.distributionGroupName = distributionGroupName
                    self.releaseId = releaseId
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ReleasesDeleteWithDistributionGroupId.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ownerName: String, appName: String, distributionGroupName: String, releaseId: Int) {
                let options = Options(ownerName: ownerName, appName: appName, distributionGroupName: distributionGroupName, releaseId: releaseId)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)").replacingOccurrences(of: "{" + "distributionGroupName" + "}", with: "\(self.options.distributionGroupName)").replacingOccurrences(of: "{" + "releaseId" + "}", with: "\(self.options.releaseId)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Deletes a release with id 'release_id' in a given distribution group. */
            public class Status403: APIModel {

                /** Deletes a release with id 'release_id' in a given distribution group. */
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
            public typealias SuccessType = Void

            /** Success */
            case status200

            /** error code - forbidden - A release from a legacy HockeyApp distribution group can’t be deleted with App Center API. To delete a legacy HockeyApp release, please use the HockeyApp API. https://support.hockeyapp.net/kb/api/api-versions#delete-single-version */
            case status403(Status403)

            /** Error codes:
- `distribution_group_not_found` - Distribution group or the app doesn't exist.
- `not_found` - release isn't found.
 */
            case status404

            public var success: Void? {
                switch self {
                case .status200: return ()
                default: return nil
                }
            }

            public var failure: Status403? {
                switch self {
                case .status403(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Void, Status403> {
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
                case .status403(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status403: return 403
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status403: return false
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = .status200
                case 403: self = try .status403(decoder.decode(Status403.self, from: data))
                case 404: self = .status404
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
