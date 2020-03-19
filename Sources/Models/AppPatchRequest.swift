//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppPatchRequest: APIModel {

    /** A short text describing the app */
    public var description: String?

    /** The display name of the app */
    public var displayName: String?

    /** The uuid for the icon's asset id from ACFUS */
    public var iconAssetId: ID?

    /** The string representation of the URL pointing to the app's icon */
    public var iconURL: String?

    /** The name of the app used in URLs */
    public var name: String?

    /** A one-word descriptive release type value that starts with a capital letter but is otherwise lowercase */
    public var releaseType: String?

    public init(description: String? = nil, displayName: String? = nil, iconAssetId: ID? = nil, iconURL: String? = nil, name: String? = nil, releaseType: String? = nil) {
        self.description = description
        self.displayName = displayName
        self.iconAssetId = iconAssetId
        self.iconURL = iconURL
        self.name = name
        self.releaseType = releaseType
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case displayName = "display_name"
        case iconAssetId = "icon_asset_id"
        case iconURL = "icon_url"
        case name
        case releaseType = "release_type"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        displayName = try container.decodeIfPresent(.displayName)
        iconAssetId = try container.decodeIfPresent(.iconAssetId)
        iconURL = try container.decodeIfPresent(.iconURL)
        name = try container.decodeIfPresent(.name)
        releaseType = try container.decodeIfPresent(.releaseType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(iconAssetId, forKey: .iconAssetId)
        try container.encodeIfPresent(iconURL, forKey: .iconURL)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(releaseType, forKey: .releaseType)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppPatchRequest else { return false }
      guard self.description == object.description else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.iconAssetId == object.iconAssetId else { return false }
      guard self.iconURL == object.iconURL else { return false }
      guard self.name == object.name else { return false }
      guard self.releaseType == object.releaseType else { return false }
      return true
    }

    public static func == (lhs: AppPatchRequest, rhs: AppPatchRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}