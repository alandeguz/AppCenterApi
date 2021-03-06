//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Distribute a build
    */
    public enum BuildsDistribute {

        public static let service = APIService<Response>(id: "builds_distribute", tag: "build", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/builds/{build_id}/distribute", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Distribute a build */
            public class DistributeInfo: APIModel {

                /** Array of objects {id:string, type:string} with "id" being the distribution group ID, store ID, or tester email, and "type" being "group", "store", or "tester" */
                public var destinations: [Destinations]?

                public var mandatoryUpdate: Bool?

                public var notifyTesters: Bool?

                /** The release notes */
                public var releaseNotes: String?

                public init(destinations: [Destinations]? = nil, mandatoryUpdate: Bool? = nil, notifyTesters: Bool? = nil, releaseNotes: String? = nil) {
                    self.destinations = destinations
                    self.mandatoryUpdate = mandatoryUpdate
                    self.notifyTesters = notifyTesters
                    self.releaseNotes = releaseNotes
                }

                private enum CodingKeys: String, CodingKey {
                    case destinations
                    case mandatoryUpdate
                    case notifyTesters
                    case releaseNotes
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    destinations = try container.decodeArrayIfPresent(.destinations)
                    mandatoryUpdate = try container.decodeIfPresent(.mandatoryUpdate)
                    notifyTesters = try container.decodeIfPresent(.notifyTesters)
                    releaseNotes = try container.decodeIfPresent(.releaseNotes)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(destinations, forKey: .destinations)
                    try container.encodeIfPresent(mandatoryUpdate, forKey: .mandatoryUpdate)
                    try container.encodeIfPresent(notifyTesters, forKey: .notifyTesters)
                    try container.encodeIfPresent(releaseNotes, forKey: .releaseNotes)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DistributeInfo else { return false }
                  guard self.destinations == object.destinations else { return false }
                  guard self.mandatoryUpdate == object.mandatoryUpdate else { return false }
                  guard self.notifyTesters == object.notifyTesters else { return false }
                  guard self.releaseNotes == object.releaseNotes else { return false }
                  return true
                }

                public static func == (lhs: DistributeInfo, rhs: DistributeInfo) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The build ID */
                public var buildId: Int

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(buildId: Int, ownerName: String, appName: String) {
                    self.buildId = buildId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var distributeInfo: DistributeInfo

            public init(distributeInfo: DistributeInfo, options: Options) {
                self.distributeInfo = distributeInfo
                self.options = options
                super.init(service: BuildsDistribute.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(distributeInfo)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(buildId: Int, distributeInfo: DistributeInfo, ownerName: String, appName: String) {
                let options = Options(buildId: buildId, ownerName: ownerName, appName: appName)
                self.init(distributeInfo: distributeInfo, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "buildId" + "}", with: "\(self.options.buildId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Distribute a build */
            public class Status200: APIModel {

                /** Status of the Request */
                public var status: String?

                /** A unique ID of the upload */
                public var uploadId: String?

                public init(status: String? = nil, uploadId: String? = nil) {
                    self.status = status
                    self.uploadId = uploadId
                }

                private enum CodingKeys: String, CodingKey {
                    case status
                    case uploadId = "upload_id"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    status = try container.decodeIfPresent(.status)
                    uploadId = try container.decodeIfPresent(.uploadId)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(status, forKey: .status)
                    try container.encodeIfPresent(uploadId, forKey: .uploadId)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.uploadId == object.uploadId else { return false }
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
