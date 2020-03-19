//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The response of Multifactor login. This is a 30 day session token generated by apple. */
public class AppleMultifactorLoginResponse: APIModel {

    /** The 30-day session Token generated by apple after successfully logging in with Multifactor authentication. */
    public var cookie: String?

    /** The expiry date of the cookie generated by apple */
    public var expires: String?

    /** the apple developer account. */
    public var username: String?

    public init(cookie: String? = nil, expires: String? = nil, username: String? = nil) {
        self.cookie = cookie
        self.expires = expires
        self.username = username
    }

    private enum CodingKeys: String, CodingKey {
        case cookie
        case expires
        case username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cookie = try container.decodeIfPresent(.cookie)
        expires = try container.decodeIfPresent(.expires)
        username = try container.decodeIfPresent(.username)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(cookie, forKey: .cookie)
        try container.encodeIfPresent(expires, forKey: .expires)
        try container.encodeIfPresent(username, forKey: .username)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppleMultifactorLoginResponse else { return false }
      guard self.cookie == object.cookie else { return false }
      guard self.expires == object.expires else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: AppleMultifactorLoginResponse, rhs: AppleMultifactorLoginResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}