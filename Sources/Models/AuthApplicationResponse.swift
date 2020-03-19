//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AuthApplicationResponse: APIModel {

    public enum Provider: String, Codable {
        case aadb2c = "AADB2C"
        case auth0 = "Auth0"
        case firebase = "Firebase"
        case aad = "AAD"

        public static let cases: [Provider] = [
          .aadb2c,
          .auth0,
          .firebase,
          .aad,
        ]
    }

    public var id: String

    public var provider: Provider

    public var policyId: String?

    public var scopeId: ID?

    public var scopeUrl: String?

    public var signInAudience: String?

    public var tenantId: ID?

    public var tenantName: String?

    public init(id: String, provider: Provider, policyId: String? = nil, scopeId: ID? = nil, scopeUrl: String? = nil, signInAudience: String? = nil, tenantId: ID? = nil, tenantName: String? = nil) {
        self.id = id
        self.provider = provider
        self.policyId = policyId
        self.scopeId = scopeId
        self.scopeUrl = scopeUrl
        self.signInAudience = signInAudience
        self.tenantId = tenantId
        self.tenantName = tenantName
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case provider
        case policyId
        case scopeId
        case scopeUrl
        case signInAudience
        case tenantId
        case tenantName
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        provider = try container.decode(.provider)
        policyId = try container.decodeIfPresent(.policyId)
        scopeId = try container.decodeIfPresent(.scopeId)
        scopeUrl = try container.decodeIfPresent(.scopeUrl)
        signInAudience = try container.decodeIfPresent(.signInAudience)
        tenantId = try container.decodeIfPresent(.tenantId)
        tenantName = try container.decodeIfPresent(.tenantName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(provider, forKey: .provider)
        try container.encodeIfPresent(policyId, forKey: .policyId)
        try container.encodeIfPresent(scopeId, forKey: .scopeId)
        try container.encodeIfPresent(scopeUrl, forKey: .scopeUrl)
        try container.encodeIfPresent(signInAudience, forKey: .signInAudience)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(tenantName, forKey: .tenantName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AuthApplicationResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.provider == object.provider else { return false }
      guard self.policyId == object.policyId else { return false }
      guard self.scopeId == object.scopeId else { return false }
      guard self.scopeUrl == object.scopeUrl else { return false }
      guard self.signInAudience == object.signInAudience else { return false }
      guard self.tenantId == object.tenantId else { return false }
      guard self.tenantName == object.tenantName else { return false }
      return true
    }

    public static func == (lhs: AuthApplicationResponse, rhs: AuthApplicationResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}