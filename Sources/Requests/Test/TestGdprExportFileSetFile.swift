//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Test {

    /**
    Lists file set file data
    */
    public enum TestGdprExportFileSetFile {

        public static let service = APIService<Response>(id: "test_gdprExportFileSetFile", tag: "test", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/test/export/fileSetFiles", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

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
                super.init(service: TestGdprExportFileSetFile.service)
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

            /** Lists file set file data */
            public class Status200: APIModel {

                public var appUploadId: ID?

                public var hashFileId: ID?

                public var hashFileURL: String?

                public var path: String?

                public init(appUploadId: ID? = nil, hashFileId: ID? = nil, hashFileURL: String? = nil, path: String? = nil) {
                    self.appUploadId = appUploadId
                    self.hashFileId = hashFileId
                    self.hashFileURL = hashFileURL
                    self.path = path
                }

                private enum CodingKeys: String, CodingKey {
                    case appUploadId = "app_upload_id"
                    case hashFileId = "hash_file_id"
                    case hashFileURL = "hash_file_url"
                    case path
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    appUploadId = try container.decodeIfPresent(.appUploadId)
                    hashFileId = try container.decodeIfPresent(.hashFileId)
                    hashFileURL = try container.decodeIfPresent(.hashFileURL)
                    path = try container.decodeIfPresent(.path)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(appUploadId, forKey: .appUploadId)
                    try container.encodeIfPresent(hashFileId, forKey: .hashFileId)
                    try container.encodeIfPresent(hashFileURL, forKey: .hashFileURL)
                    try container.encodeIfPresent(path, forKey: .path)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.appUploadId == object.appUploadId else { return false }
                  guard self.hashFileId == object.hashFileId else { return false }
                  guard self.hashFileURL == object.hashFileURL else { return false }
                  guard self.path == object.path else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
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
