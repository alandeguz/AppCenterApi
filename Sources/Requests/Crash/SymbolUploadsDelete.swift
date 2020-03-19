//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Crash {

    /**
    Deletes a symbol upload by id for the specified application
    */
    public enum SymbolUploadsDelete {

        public static let service = APIService<Response>(id: "symbolUploads_delete", tag: "crash", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/symbol_uploads/{symbol_upload_id}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The ID of the symbol upload */
                public var symbolUploadId: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(symbolUploadId: String, ownerName: String, appName: String) {
                    self.symbolUploadId = symbolUploadId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: SymbolUploadsDelete.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(symbolUploadId: String, ownerName: String, appName: String) {
                let options = Options(symbolUploadId: symbolUploadId, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "symbolUploadId" + "}", with: "\(self.options.symbolUploadId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Deletes a symbol upload by id for the specified application */
            public class Status200: APIModel {

                /** The current status for the symbol upload */
                public enum Status: String, Codable {
                    case created = "created"
                    case committed = "committed"
                    case aborted = "aborted"
                    case processing = "processing"
                    case indexed = "indexed"
                    case failed = "failed"

                    public static let cases: [Status] = [
                      .created,
                      .committed,
                      .aborted,
                      .processing,
                      .indexed,
                      .failed,
                    ]
                }

                /** The type of the symbol for the current symbol upload */
                public enum SymbolType: String, Codable {
                    case apple = "Apple"
                    case javaScript = "JavaScript"
                    case breakpad = "Breakpad"
                    case androidProguard = "AndroidProguard"
                    case uwp = "UWP"

                    public static let cases: [SymbolType] = [
                      .apple,
                      .javaScript,
                      .breakpad,
                      .androidProguard,
                      .uwp,
                    ]
                }

                /** The origin of the symbol upload */
                public enum Origin: String, Codable {
                    case user = "User"
                    case system = "System"

                    public static let cases: [Origin] = [
                      .user,
                      .system,
                    ]
                }

                /** The id for the current symbol upload */
                public var symbolUploadId: String

                /** The application that this symbol upload belongs to */
                public var appId: String

                /** The current status for the symbol upload */
                public var status: Status

                /** The type of the symbol for the current symbol upload */
                public var symbolType: SymbolType

                /** The file name for the symbol upload */
                public var fileName: String?

                /** The size of the file in Mebibytes. This may be 0 until the status is indexed */
                public var fileSize: Double?

                /** The origin of the symbol upload */
                public var origin: Origin?

                /** The symbols found in the upload. This may be empty until the status is indexed */
                public var symbolsUploaded: [SymbolsUploaded]?

                /** When the symbol upload was committed, or last transaction time if not committed */
                public var timestamp: DateTime?

                /** User information of the one who intitiated the symbol upload */
                public var user: User?

                /** Deletes a symbol upload by id for the specified application */
                public class User: APIModel {

                    /** The full name of the user. Might for example be first and last name */
                    public var displayName: String?

                    /** The email of the user */
                    public var email: String?

                    public init(displayName: String? = nil, email: String? = nil) {
                        self.displayName = displayName
                        self.email = email
                    }

                    private enum CodingKeys: String, CodingKey {
                        case displayName = "display_name"
                        case email
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        displayName = try container.decodeIfPresent(.displayName)
                        email = try container.decodeIfPresent(.email)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encodeIfPresent(displayName, forKey: .displayName)
                        try container.encodeIfPresent(email, forKey: .email)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? User else { return false }
                      guard self.displayName == object.displayName else { return false }
                      guard self.email == object.email else { return false }
                      return true
                    }

                    public static func == (lhs: User, rhs: User) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(symbolUploadId: String, appId: String, status: Status, symbolType: SymbolType, fileName: String? = nil, fileSize: Double? = nil, origin: Origin? = nil, symbolsUploaded: [SymbolsUploaded]? = nil, timestamp: DateTime? = nil, user: User? = nil) {
                    self.symbolUploadId = symbolUploadId
                    self.appId = appId
                    self.status = status
                    self.symbolType = symbolType
                    self.fileName = fileName
                    self.fileSize = fileSize
                    self.origin = origin
                    self.symbolsUploaded = symbolsUploaded
                    self.timestamp = timestamp
                    self.user = user
                }

                private enum CodingKeys: String, CodingKey {
                    case symbolUploadId = "symbol_upload_id"
                    case appId = "app_id"
                    case status
                    case symbolType = "symbol_type"
                    case fileName = "file_name"
                    case fileSize = "file_size"
                    case origin
                    case symbolsUploaded = "symbols_uploaded"
                    case timestamp
                    case user
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    symbolUploadId = try container.decode(.symbolUploadId)
                    appId = try container.decode(.appId)
                    status = try container.decode(.status)
                    symbolType = try container.decode(.symbolType)
                    fileName = try container.decodeIfPresent(.fileName)
                    fileSize = try container.decodeIfPresent(.fileSize)
                    origin = try container.decodeIfPresent(.origin)
                    symbolsUploaded = try container.decodeArrayIfPresent(.symbolsUploaded)
                    timestamp = try container.decodeIfPresent(.timestamp)
                    user = try container.decodeIfPresent(.user)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(symbolUploadId, forKey: .symbolUploadId)
                    try container.encode(appId, forKey: .appId)
                    try container.encode(status, forKey: .status)
                    try container.encode(symbolType, forKey: .symbolType)
                    try container.encodeIfPresent(fileName, forKey: .fileName)
                    try container.encodeIfPresent(fileSize, forKey: .fileSize)
                    try container.encodeIfPresent(origin, forKey: .origin)
                    try container.encodeIfPresent(symbolsUploaded, forKey: .symbolsUploaded)
                    try container.encodeIfPresent(timestamp, forKey: .timestamp)
                    try container.encodeIfPresent(user, forKey: .user)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.symbolUploadId == object.symbolUploadId else { return false }
                  guard self.appId == object.appId else { return false }
                  guard self.status == object.status else { return false }
                  guard self.symbolType == object.symbolType else { return false }
                  guard self.fileName == object.fileName else { return false }
                  guard self.fileSize == object.fileSize else { return false }
                  guard self.origin == object.origin else { return false }
                  guard self.symbolsUploaded == object.symbolsUploaded else { return false }
                  guard self.timestamp == object.timestamp else { return false }
                  guard self.user == object.user else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Deletes a symbol upload by id for the specified application */
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

            /** Deletes a symbol upload by id for the specified application */
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

            /** Deletes a symbol upload by id for the specified application */
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
