//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Crash {

    /**
    Marks a symbol by id (uuid) as ignored
    */
    public enum SymbolsIgnore {

        public static let service = APIService<Response>(id: "symbols_ignore", tag: "crash", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/symbols/{symbol_id}/ignore", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The ID of the symbol (uuid of the symbol) */
                public var symbolId: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(symbolId: String, ownerName: String, appName: String) {
                    self.symbolId = symbolId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: SymbolsIgnore.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(symbolId: String, ownerName: String, appName: String) {
                let options = Options(symbolId: symbolId, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "symbolId" + "}", with: "\(self.options.symbolId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Marks a symbol by id (uuid) as ignored */
            public class Status200: APIModel {

                /** The type of the symbol for the current symbol upload */
                public enum `Type`: String, Codable {
                    case apple = "Apple"
                    case javaScript = "JavaScript"
                    case breakpad = "Breakpad"
                    case androidProguard = "AndroidProguard"
                    case uwp = "UWP"

                    public static let cases: [`Type`] = [
                      .apple,
                      .javaScript,
                      .breakpad,
                      .androidProguard,
                      .uwp,
                    ]
                }

                /** The origin of the symbol file */
                public enum Origin: String, Codable {
                    case system = "System"
                    case user = "User"

                    public static let cases: [Origin] = [
                      .system,
                      .user,
                    ]
                }

                /** Whether the symbol is ignored. */
                public enum Status: String, Codable {
                    case available = "available"
                    case ignored = "ignored"

                    public static let cases: [Status] = [
                      .available,
                      .ignored,
                    ]
                }

                /** The unique id for this symbol (uuid) */
                public var symbolId: String

                /** The platform that this symbol is associated with */
                public var platform: String

                /** The type of the symbol for the current symbol upload */
                public var type: `Type`

                /** The application that this symbol belongs to */
                public var appId: String

                /** The path name of the symbol file in blob storage */
                public var url: String

                /** The origin of the symbol file */
                public var origin: Origin

                /** The other symbols in the same file */
                public var alternateSymbolIds: [String]

                /** Whether the symbol is ignored. */
                public var status: Status

                /** The id of the symbol upload this symbol belongs to. */
                public var symbolUploadId: String

                /** The build number. Optional for Apple. Required for Android. */
                public var build: String?

                /** The version number. Optional for Apple. Required for Android. */
                public var version: String?

                public init(symbolId: String, platform: String, type: `Type`, appId: String, url: String, origin: Origin, alternateSymbolIds: [String], status: Status, symbolUploadId: String, build: String? = nil, version: String? = nil) {
                    self.symbolId = symbolId
                    self.platform = platform
                    self.type = type
                    self.appId = appId
                    self.url = url
                    self.origin = origin
                    self.alternateSymbolIds = alternateSymbolIds
                    self.status = status
                    self.symbolUploadId = symbolUploadId
                    self.build = build
                    self.version = version
                }

                private enum CodingKeys: String, CodingKey {
                    case symbolId = "symbol_id"
                    case platform
                    case type
                    case appId = "app_id"
                    case url
                    case origin
                    case alternateSymbolIds = "alternate_symbol_ids"
                    case status
                    case symbolUploadId = "symbol_upload_id"
                    case build
                    case version
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    symbolId = try container.decode(.symbolId)
                    platform = try container.decode(.platform)
                    type = try container.decode(.type)
                    appId = try container.decode(.appId)
                    url = try container.decode(.url)
                    origin = try container.decode(.origin)
                    alternateSymbolIds = try container.decodeArray(.alternateSymbolIds)
                    status = try container.decode(.status)
                    symbolUploadId = try container.decode(.symbolUploadId)
                    build = try container.decodeIfPresent(.build)
                    version = try container.decodeIfPresent(.version)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(symbolId, forKey: .symbolId)
                    try container.encode(platform, forKey: .platform)
                    try container.encode(type, forKey: .type)
                    try container.encode(appId, forKey: .appId)
                    try container.encode(url, forKey: .url)
                    try container.encode(origin, forKey: .origin)
                    try container.encode(alternateSymbolIds, forKey: .alternateSymbolIds)
                    try container.encode(status, forKey: .status)
                    try container.encode(symbolUploadId, forKey: .symbolUploadId)
                    try container.encodeIfPresent(build, forKey: .build)
                    try container.encodeIfPresent(version, forKey: .version)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.symbolId == object.symbolId else { return false }
                  guard self.platform == object.platform else { return false }
                  guard self.type == object.type else { return false }
                  guard self.appId == object.appId else { return false }
                  guard self.url == object.url else { return false }
                  guard self.origin == object.origin else { return false }
                  guard self.alternateSymbolIds == object.alternateSymbolIds else { return false }
                  guard self.status == object.status else { return false }
                  guard self.symbolUploadId == object.symbolUploadId else { return false }
                  guard self.build == object.build else { return false }
                  guard self.version == object.version else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Marks a symbol by id (uuid) as ignored */
            public class Status403: APIModel {

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
                  guard let object = object as? Status403 else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status403, rhs: Status403) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Marks a symbol by id (uuid) as ignored */
            public class Status404: APIModel {

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
                  guard let object = object as? Status404 else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Marks a symbol by id (uuid) as ignored */
            public class Status500: APIModel {

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
                  guard let object = object as? Status500 else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status500, rhs: Status500) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            /** Unauthorized */
            case status403(Status403)

            /** Not found */
            case status404(Status404)

            /** Internal error */
            case status500(Status500)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status403(let response): return response
                case .status404(let response): return response
                case .status500(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status403: return 403
                case .status404: return 404
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status403: return false
                case .status404: return false
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 403: self = try .status403(decoder.decode(Status403.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                case 500: self = try .status500(decoder.decode(Status500.self, from: data))
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
