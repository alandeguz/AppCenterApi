//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** IntuneAppsResponse */
public class IntuneAppsResponse: APIModel {

    /** App id */
    public var appId: String?

    /** PartitionKey year-month */
    public var createdMonth: String?

    /** Refresh Status */
    public var refreshStatus: String?

    public init(appId: String? = nil, createdMonth: String? = nil, refreshStatus: String? = nil) {
        self.appId = appId
        self.createdMonth = createdMonth
        self.refreshStatus = refreshStatus
    }

    private enum CodingKeys: String, CodingKey {
        case appId = "app_id"
        case createdMonth = "created_month"
        case refreshStatus
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decodeIfPresent(.appId)
        createdMonth = try container.decodeIfPresent(.createdMonth)
        refreshStatus = try container.decodeIfPresent(.refreshStatus)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(createdMonth, forKey: .createdMonth)
        try container.encodeIfPresent(refreshStatus, forKey: .refreshStatus)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? IntuneAppsResponse else { return false }
      guard self.appId == object.appId else { return false }
      guard self.createdMonth == object.createdMonth else { return false }
      guard self.refreshStatus == object.refreshStatus else { return false }
      return true
    }

    public static func == (lhs: IntuneAppsResponse, rhs: IntuneAppsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
