//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Symbol: APIModel {

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
      guard let object = object as? Symbol else { return false }
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

    public static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}