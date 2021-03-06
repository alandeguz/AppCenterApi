//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class InternalBulkAppResponse: APIModel {

    /** The name of the app */
    public var appName: String?

    /** The display name of the owner */
    public var ownerDisplayName: String?

    public init(appName: String? = nil, ownerDisplayName: String? = nil) {
        self.appName = appName
        self.ownerDisplayName = ownerDisplayName
    }

    private enum CodingKeys: String, CodingKey {
        case appName = "app_name"
        case ownerDisplayName = "owner_display_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appName = try container.decodeIfPresent(.appName)
        ownerDisplayName = try container.decodeIfPresent(.ownerDisplayName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(ownerDisplayName, forKey: .ownerDisplayName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? InternalBulkAppResponse else { return false }
      guard self.appName == object.appName else { return false }
      guard self.ownerDisplayName == object.ownerDisplayName else { return false }
      return true
    }

    public static func == (lhs: InternalBulkAppResponse, rhs: InternalBulkAppResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
