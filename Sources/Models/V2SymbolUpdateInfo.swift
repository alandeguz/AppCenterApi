//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** symbol update message */
public class V2SymbolUpdateInfo: APIModel {

    /** symbol upload status */
    public enum Status: String, Codable {
        case missing = "missing"
        case ignored = "ignored"
        case available = "available"

        public static let cases: [Status] = [
          .missing,
          .ignored,
          .available,
        ]
    }

    /** UUID of the symbol */
    public var symbolId: String

    /** application id */
    public var appId: String

    /** symbol upload status */
    public var status: Status

    public init(symbolId: String, appId: String, status: Status) {
        self.symbolId = symbolId
        self.appId = appId
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case symbolId = "symbol_id"
        case appId = "app_id"
        case status
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        symbolId = try container.decode(.symbolId)
        appId = try container.decode(.appId)
        status = try container.decode(.status)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(symbolId, forKey: .symbolId)
        try container.encode(appId, forKey: .appId)
        try container.encode(status, forKey: .status)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V2SymbolUpdateInfo else { return false }
      guard self.symbolId == object.symbolId else { return false }
      guard self.appId == object.appId else { return false }
      guard self.status == object.status else { return false }
      return true
    }

    public static func == (lhs: V2SymbolUpdateInfo, rhs: V2SymbolUpdateInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}