//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppVersion: APIModel {

    public var appVersionId: String

    public var appId: String

    public var displayName: String

    public var appVersion: String

    public var buildNumber: String?

    public init(appVersionId: String, appId: String, displayName: String, appVersion: String, buildNumber: String? = nil) {
        self.appVersionId = appVersionId
        self.appId = appId
        self.displayName = displayName
        self.appVersion = appVersion
        self.buildNumber = buildNumber
    }

    private enum CodingKeys: String, CodingKey {
        case appVersionId = "app_version_id"
        case appId = "app_id"
        case displayName = "display_name"
        case appVersion = "app_version"
        case buildNumber = "build_number"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appVersionId = try container.decode(.appVersionId)
        appId = try container.decode(.appId)
        displayName = try container.decode(.displayName)
        appVersion = try container.decode(.appVersion)
        buildNumber = try container.decodeIfPresent(.buildNumber)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(appVersionId, forKey: .appVersionId)
        try container.encode(appId, forKey: .appId)
        try container.encode(displayName, forKey: .displayName)
        try container.encode(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(buildNumber, forKey: .buildNumber)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppVersion else { return false }
      guard self.appVersionId == object.appVersionId else { return false }
      guard self.appId == object.appId else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.appVersion == object.appVersion else { return false }
      guard self.buildNumber == object.buildNumber else { return false }
      return true
    }

    public static func == (lhs: AppVersion, rhs: AppVersion) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}