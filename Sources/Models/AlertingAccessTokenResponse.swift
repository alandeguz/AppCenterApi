//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Access token details */
public class AlertingAccessTokenResponse: APIModel {

    /** ID of the access token */
    public var accessTokenId: String

    /** External provider name */
    public var externalProviderName: RepoTypeParameter

    /** The email of external user that used to authenticate aginst the external oauth provider */
    public var externalUserEmail: String

    /** The account name of external user that used to authenticate against the external oauth provider or basic auth */
    public var externalAccountName: String

    public init(accessTokenId: String, externalProviderName: RepoTypeParameter, externalUserEmail: String, externalAccountName: String) {
        self.accessTokenId = accessTokenId
        self.externalProviderName = externalProviderName
        self.externalUserEmail = externalUserEmail
        self.externalAccountName = externalAccountName
    }

    private enum CodingKeys: String, CodingKey {
        case accessTokenId = "access_token_id"
        case externalProviderName = "external_provider_name"
        case externalUserEmail = "external_user_email"
        case externalAccountName = "external_account_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accessTokenId = try container.decode(.accessTokenId)
        externalProviderName = try container.decode(.externalProviderName)
        externalUserEmail = try container.decode(.externalUserEmail)
        externalAccountName = try container.decode(.externalAccountName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(accessTokenId, forKey: .accessTokenId)
        try container.encode(externalProviderName, forKey: .externalProviderName)
        try container.encode(externalUserEmail, forKey: .externalUserEmail)
        try container.encode(externalAccountName, forKey: .externalAccountName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertingAccessTokenResponse else { return false }
      guard self.accessTokenId == object.accessTokenId else { return false }
      guard self.externalProviderName == object.externalProviderName else { return false }
      guard self.externalUserEmail == object.externalUserEmail else { return false }
      guard self.externalAccountName == object.externalAccountName else { return false }
      return true
    }

    public static func == (lhs: AlertingAccessTokenResponse, rhs: AlertingAccessTokenResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
