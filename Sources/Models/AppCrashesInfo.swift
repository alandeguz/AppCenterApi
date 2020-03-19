//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppCrashesInfo: APIModel {

    public var hasCrashes: Bool

    public var features: Features

    public class Features: APIModel {

        /** App supports download of raw crashes */
        public var crashDownloadRaw: Bool?

        /** App supports the 'crash free user' metric */
        public var crashgroupAnalyticsCrashfreeusers: Bool?

        /** App supports the 'impacted users' metric */
        public var crashgroupAnalyticsImpactedusers: Bool?

        /** App supports modification of crashgroup annotation */
        public var crashgroupModifyAnnotation: Bool?

        /** App supports modification of crashgroup status */
        public var crashgroupModifyStatus: Bool?

        /** App supports search API */
        public var search: Bool?

        public init(crashDownloadRaw: Bool? = nil, crashgroupAnalyticsCrashfreeusers: Bool? = nil, crashgroupAnalyticsImpactedusers: Bool? = nil, crashgroupModifyAnnotation: Bool? = nil, crashgroupModifyStatus: Bool? = nil, search: Bool? = nil) {
            self.crashDownloadRaw = crashDownloadRaw
            self.crashgroupAnalyticsCrashfreeusers = crashgroupAnalyticsCrashfreeusers
            self.crashgroupAnalyticsImpactedusers = crashgroupAnalyticsImpactedusers
            self.crashgroupModifyAnnotation = crashgroupModifyAnnotation
            self.crashgroupModifyStatus = crashgroupModifyStatus
            self.search = search
        }

        private enum CodingKeys: String, CodingKey {
            case crashDownloadRaw = "crash_download_raw"
            case crashgroupAnalyticsCrashfreeusers = "crashgroup_analytics_crashfreeusers"
            case crashgroupAnalyticsImpactedusers = "crashgroup_analytics_impactedusers"
            case crashgroupModifyAnnotation = "crashgroup_modify_annotation"
            case crashgroupModifyStatus = "crashgroup_modify_status"
            case search
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            crashDownloadRaw = try container.decodeIfPresent(.crashDownloadRaw)
            crashgroupAnalyticsCrashfreeusers = try container.decodeIfPresent(.crashgroupAnalyticsCrashfreeusers)
            crashgroupAnalyticsImpactedusers = try container.decodeIfPresent(.crashgroupAnalyticsImpactedusers)
            crashgroupModifyAnnotation = try container.decodeIfPresent(.crashgroupModifyAnnotation)
            crashgroupModifyStatus = try container.decodeIfPresent(.crashgroupModifyStatus)
            search = try container.decodeIfPresent(.search)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(crashDownloadRaw, forKey: .crashDownloadRaw)
            try container.encodeIfPresent(crashgroupAnalyticsCrashfreeusers, forKey: .crashgroupAnalyticsCrashfreeusers)
            try container.encodeIfPresent(crashgroupAnalyticsImpactedusers, forKey: .crashgroupAnalyticsImpactedusers)
            try container.encodeIfPresent(crashgroupModifyAnnotation, forKey: .crashgroupModifyAnnotation)
            try container.encodeIfPresent(crashgroupModifyStatus, forKey: .crashgroupModifyStatus)
            try container.encodeIfPresent(search, forKey: .search)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Features else { return false }
          guard self.crashDownloadRaw == object.crashDownloadRaw else { return false }
          guard self.crashgroupAnalyticsCrashfreeusers == object.crashgroupAnalyticsCrashfreeusers else { return false }
          guard self.crashgroupAnalyticsImpactedusers == object.crashgroupAnalyticsImpactedusers else { return false }
          guard self.crashgroupModifyAnnotation == object.crashgroupModifyAnnotation else { return false }
          guard self.crashgroupModifyStatus == object.crashgroupModifyStatus else { return false }
          guard self.search == object.search else { return false }
          return true
        }

        public static func == (lhs: Features, rhs: Features) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(hasCrashes: Bool, features: Features) {
        self.hasCrashes = hasCrashes
        self.features = features
    }

    private enum CodingKeys: String, CodingKey {
        case hasCrashes = "has_crashes"
        case features
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        hasCrashes = try container.decode(.hasCrashes)
        features = try container.decode(.features)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(hasCrashes, forKey: .hasCrashes)
        try container.encode(features, forKey: .features)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppCrashesInfo else { return false }
      guard self.hasCrashes == object.hasCrashes else { return false }
      guard self.features == object.features else { return false }
      return true
    }

    public static func == (lhs: AppCrashesInfo, rhs: AppCrashesInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
