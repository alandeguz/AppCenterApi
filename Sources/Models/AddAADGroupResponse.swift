//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AddAADGroupResponse: APIModel {

    /** The unique ID (UUID) of the aad group */
    public var id: ID?

    public init(id: ID? = nil) {
        self.id = id
    }

    private enum CodingKeys: String, CodingKey {
        case id
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(.id)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(id, forKey: .id)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AddAADGroupResponse else { return false }
      guard self.id == object.id else { return false }
      return true
    }

    public static func == (lhs: AddAADGroupResponse, rhs: AddAADGroupResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
