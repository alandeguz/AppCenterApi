//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class SecretDetails: APIModel {

    /** the id token of user */
    public var idToken: String?

    /** the refresh token for user */
    public var refreshToken: String?

    /** the expiry of refresh token */
    public var refreshTokenExpiry: String?

    public init(idToken: String? = nil, refreshToken: String? = nil, refreshTokenExpiry: String? = nil) {
        self.idToken = idToken
        self.refreshToken = refreshToken
        self.refreshTokenExpiry = refreshTokenExpiry
    }

    private enum CodingKeys: String, CodingKey {
        case idToken = "id_token"
        case refreshToken = "refresh_token"
        case refreshTokenExpiry = "refresh_token_expiry"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        idToken = try container.decodeIfPresent(.idToken)
        refreshToken = try container.decodeIfPresent(.refreshToken)
        refreshTokenExpiry = try container.decodeIfPresent(.refreshTokenExpiry)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(idToken, forKey: .idToken)
        try container.encodeIfPresent(refreshToken, forKey: .refreshToken)
        try container.encodeIfPresent(refreshTokenExpiry, forKey: .refreshTokenExpiry)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? SecretDetails else { return false }
      guard self.idToken == object.idToken else { return false }
      guard self.refreshToken == object.refreshToken else { return false }
      guard self.refreshTokenExpiry == object.refreshTokenExpiry else { return false }
      return true
    }

    public static func == (lhs: SecretDetails, rhs: SecretDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}