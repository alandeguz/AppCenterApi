//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Log is used to update distribution group identifier for session (a marker event for analytics service). */
public class DistributionStartSessionLog: APIModel {

    /** Distribution Group ID.
 */
    public var distributionGroupId: ID

    public init(distributionGroupId: ID) {
        self.distributionGroupId = distributionGroupId
    }

    private enum CodingKeys: String, CodingKey {
        case distributionGroupId = "distribution_group_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        distributionGroupId = try container.decode(.distributionGroupId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(distributionGroupId, forKey: .distributionGroupId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionStartSessionLog else { return false }
      guard self.distributionGroupId == object.distributionGroupId else { return false }
      return true
    }

    public static func == (lhs: DistributionStartSessionLog, rhs: DistributionStartSessionLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
