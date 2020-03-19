//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ApiTokenDeleteResponse: APIModel {

    /** The unique id (UUID) of the api token */
    public var id: ID

    /** The hashed value of api token */
    public var tokenHash: String

    public init(id: ID, tokenHash: String) {
        self.id = id
        self.tokenHash = tokenHash
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case tokenHash = "token_hash"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        tokenHash = try container.decode(.tokenHash)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(tokenHash, forKey: .tokenHash)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ApiTokenDeleteResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.tokenHash == object.tokenHash else { return false }
      return true
    }

    public static func == (lhs: ApiTokenDeleteResponse, rhs: ApiTokenDeleteResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}