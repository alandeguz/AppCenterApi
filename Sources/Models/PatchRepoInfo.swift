//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PatchRepoInfo: APIModel {

    /** The external user ID */
    public var externalUserId: String?

    public init(externalUserId: String? = nil) {
        self.externalUserId = externalUserId
    }

    private enum CodingKeys: String, CodingKey {
        case externalUserId = "external_user_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        externalUserId = try container.decodeIfPresent(.externalUserId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(externalUserId, forKey: .externalUserId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PatchRepoInfo else { return false }
      guard self.externalUserId == object.externalUserId else { return false }
      return true
    }

    public static func == (lhs: PatchRepoInfo, rhs: PatchRepoInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}