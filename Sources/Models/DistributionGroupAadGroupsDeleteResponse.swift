//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DistributionGroupAadGroupsDeleteResponse: APIModel {

    /** The status code of the result */
    public var status: Int

    /** The aad id of the group */
    public var aadGroupId: ID?

    /** The code of the result */
    public var code: String?

    /** The message of the result */
    public var message: Int?

    public init(status: Int, aadGroupId: ID? = nil, code: String? = nil, message: Int? = nil) {
        self.status = status
        self.aadGroupId = aadGroupId
        self.code = code
        self.message = message
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case aadGroupId = "aad_group_id"
        case code
        case message
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        aadGroupId = try container.decodeIfPresent(.aadGroupId)
        code = try container.decodeIfPresent(.code)
        message = try container.decodeIfPresent(.message)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(aadGroupId, forKey: .aadGroupId)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(message, forKey: .message)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DistributionGroupAadGroupsDeleteResponse else { return false }
      guard self.status == object.status else { return false }
      guard self.aadGroupId == object.aadGroupId else { return false }
      guard self.code == object.code else { return false }
      guard self.message == object.message else { return false }
      return true
    }

    public static func == (lhs: DistributionGroupAadGroupsDeleteResponse, rhs: DistributionGroupAadGroupsDeleteResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}