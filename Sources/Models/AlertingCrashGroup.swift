//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AlertingCrashGroup: APIModel {

    /** SDK/Platform this thread is beeing generated from */
    public enum AppPlatform: String, Codable {
        case ios = "ios"
        case android = "android"
        case xamarin = "xamarin"
        case reactNative = "react-native"
        case ndk = "ndk"
        case unity = "unity"
        case other = "other"

        public static let cases: [AppPlatform] = [
          .ios,
          .android,
          .xamarin,
          .reactNative,
          .ndk,
          .unity,
          .other,
        ]
    }

    public var appDisplayName: String?

    /** SDK/Platform this thread is beeing generated from */
    public var appPlatform: AppPlatform?

    public var appVersion: String?

    public var id: String?

    public var name: String?

    public var reason: String?

    public var stackTrace: [String]?

    public var url: String?

    public init(appDisplayName: String? = nil, appPlatform: AppPlatform? = nil, appVersion: String? = nil, id: String? = nil, name: String? = nil, reason: String? = nil, stackTrace: [String]? = nil, url: String? = nil) {
        self.appDisplayName = appDisplayName
        self.appPlatform = appPlatform
        self.appVersion = appVersion
        self.id = id
        self.name = name
        self.reason = reason
        self.stackTrace = stackTrace
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case appDisplayName = "app_display_name"
        case appPlatform = "app_platform"
        case appVersion = "app_version"
        case id
        case name
        case reason
        case stackTrace = "stack_trace"
        case url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appDisplayName = try container.decodeIfPresent(.appDisplayName)
        appPlatform = try container.decodeIfPresent(.appPlatform)
        appVersion = try container.decodeIfPresent(.appVersion)
        id = try container.decodeIfPresent(.id)
        name = try container.decodeIfPresent(.name)
        reason = try container.decodeIfPresent(.reason)
        stackTrace = try container.decodeArrayIfPresent(.stackTrace)
        url = try container.decodeIfPresent(.url)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
        try container.encodeIfPresent(appPlatform, forKey: .appPlatform)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(stackTrace, forKey: .stackTrace)
        try container.encodeIfPresent(url, forKey: .url)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertingCrashGroup else { return false }
      guard self.appDisplayName == object.appDisplayName else { return false }
      guard self.appPlatform == object.appPlatform else { return false }
      guard self.appVersion == object.appVersion else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.reason == object.reason else { return false }
      guard self.stackTrace == object.stackTrace else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: AlertingCrashGroup, rhs: AlertingCrashGroup) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
