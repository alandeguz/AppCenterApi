//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupsUserVerifyRequest: APIModel {

    /** An array of distribution group ids */
    public var distributionGroupIds: [DistributionGroupIds]

    public init(distributionGroupIds: [DistributionGroupIds]) {
        self.distributionGroupIds = distributionGroupIds
    }

    private enum CodingKeys: String, CodingKey {
        case distributionGroupIds = "distribution_group_ids"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        distributionGroupIds = try container.decodeArray(.distributionGroupIds)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(distributionGroupIds, forKey: .distributionGroupIds)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupsUserVerifyRequest else { return false }
      guard self.distributionGroupIds == object.distributionGroupIds else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupsUserVerifyRequest, rhs: DistributionGroupsUserVerifyRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}