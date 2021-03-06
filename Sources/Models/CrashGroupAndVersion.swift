//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupAndVersion: APIModel {

    public var appVersion: String?

    public var crashGroupId: String?

    public init(appVersion: String? = nil, crashGroupId: String? = nil) {
        self.appVersion = appVersion
        self.crashGroupId = crashGroupId
    }

    private enum CodingKeys: String, CodingKey {
        case appVersion = "app_version"
        case crashGroupId = "crash_group_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appVersion = try container.decodeIfPresent(.appVersion)
        crashGroupId = try container.decodeIfPresent(.crashGroupId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(crashGroupId, forKey: .crashGroupId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupAndVersion else { return false }
      guard self.appVersion == object.appVersion else { return false }
      guard self.crashGroupId == object.crashGroupId else { return false }
      return true
    }

    public static func == (lhs: CrashGroupAndVersion, rhs: CrashGroupAndVersion) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
