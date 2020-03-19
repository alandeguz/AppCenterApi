//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Gets the download URI
    */
    public enum BuildsGetDownloadUri {

        public static let service = APIService<Response>(id: "builds_getDownloadUri", tag: "build", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/builds/{build_id}/downloads/{download_type}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        /** The download type */
        public enum DownloadType: String, Codable {
            case build = "build"
            case symbols = "symbols"
            case logs = "logs"
            case mapping = "mapping"
            case bundle = "bundle"

            public static let cases: [DownloadType] = [
              .build,
              .symbols,
              .logs,
              .mapping,
              .bundle,
            ]
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The build ID */
                public var buildId: Int

                /** The download type */
                public var downloadType: DownloadType

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(buildId: Int, downloadType: DownloadType, ownerName: String, appName: String) {
                    self.buildId = buildId
                    self.downloadType = downloadType
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: BuildsGetDownloadUri.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(buildId: Int, downloadType: DownloadType, ownerName: String, appName: String) {
                let options = Options(buildId: buildId, downloadType: downloadType, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "buildId" + "}", with: "\(self.options.buildId)").replacingOccurrences(of: "{" + "downloadType" + "}", with: "\(self.options.downloadType.encode())").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets the download URI */
            public class Status200: APIModel {

                /** Download URI */
                public var uri: String

                public init(uri: String) {
                    self.uri = uri
                }

                private enum CodingKeys: String, CodingKey {
                    case uri
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    uri = try container.decode(.uri)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(uri, forKey: .uri)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.uri == object.uri else { return false }
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
