//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GDPRPurgeVerifyRequest: APIModel {

    /** deployment id */
    public var id: String

    /** deployment key */
    public var key: String

    public init(id: String, key: String) {
        self.id = id
        self.key = key
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case key
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        key = try container.decode(.key)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(key, forKey: .key)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GDPRPurgeVerifyRequest else { return false }
      guard self.id == object.id else { return false }
      guard self.key == object.key else { return false }
      return true
    }

    public static func == (lhs: GDPRPurgeVerifyRequest, rhs: GDPRPurgeVerifyRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
