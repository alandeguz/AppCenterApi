//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupAADGroupPostResponse: APIModel {

    /** The AAD unique id (UUID) of the AAD group. */
    public var aadGroupId: ID?

    /** The display name of the AAD group */
    public var displayName: String?

    /** The internal unique id (UUID) of the AAD group. */
    public var id: ID?

    public init(aadGroupId: ID? = nil, displayName: String? = nil, id: ID? = nil) {
        self.aadGroupId = aadGroupId
        self.displayName = displayName
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case aadGroupId = "aad_group_id"
        case displayName = "display_name"
        case id
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        aadGroupId = try container.decodeIfPresent(.aadGroupId)
        displayName = try container.decodeIfPresent(.displayName)
        id = try container.decodeIfPresent(.id)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(aadGroupId, forKey: .aadGroupId)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(id, forKey: .id)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupAADGroupPostResponse else { return false }
      guard self.aadGroupId == object.aadGroupId else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.id == object.id else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupAADGroupPostResponse, rhs: DistributionGroupAADGroupPostResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
