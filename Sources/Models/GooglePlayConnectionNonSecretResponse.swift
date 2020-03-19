//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Google Play non-secret data */
public class GooglePlayConnectionNonSecretResponse: APIModel {

    /** service type of shared connection can be apple|gitlab|googleplay|jira */
    public enum ServiceType: String, Codable {
        case apple = "apple"
        case jira = "jira"
        case googleplay = "googleplay"
        case gitlab = "gitlab"

        public static let cases: [ServiceType] = [
          .apple,
          .jira,
          .googleplay,
          .gitlab,
        ]
    }

    /** the type of the credential */
    public enum CredentialType: String, Codable {
        case credentials = "credentials"
        case certificate = "certificate"

        public static let cases: [CredentialType] = [
          .credentials,
          .certificate,
        ]
    }

    /** id of the shared connection */
    public var id: String

    /** service type of shared connection can be apple|gitlab|googleplay|jira */
    public var serviceType: ServiceType

    /** the type of the credential */
    public var credentialType: CredentialType

    /** display name of shared connection */
    public var displayName: String?

    /** if the account is a 2FA account or not */
    public var is2FA: Bool?

    /** whether the credentials are valid or not */
    public var isValid: Bool?

    public init(id: String, serviceType: ServiceType, credentialType: CredentialType, displayName: String? = nil, is2FA: Bool? = nil, isValid: Bool? = nil) {
        self.id = id
        self.serviceType = serviceType
        self.credentialType = credentialType
        self.displayName = displayName
        self.is2FA = is2FA
        self.isValid = isValid
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case serviceType
        case credentialType
        case displayName
        case is2FA
        case isValid
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        serviceType = try container.decode(.serviceType)
        credentialType = try container.decode(.credentialType)
        displayName = try container.decodeIfPresent(.displayName)
        is2FA = try container.decodeIfPresent(.is2FA)
        isValid = try container.decodeIfPresent(.isValid)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(serviceType, forKey: .serviceType)
        try container.encode(credentialType, forKey: .credentialType)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(is2FA, forKey: .is2FA)
        try container.encodeIfPresent(isValid, forKey: .isValid)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GooglePlayConnectionNonSecretResponse else { return false }
      guard self.id == object.id else { return false }
      guard self.serviceType == object.serviceType else { return false }
      guard self.credentialType == object.credentialType else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.is2FA == object.is2FA else { return false }
      guard self.isValid == object.isValid else { return false }
      return true
    }

    public static func == (lhs: GooglePlayConnectionNonSecretResponse, rhs: GooglePlayConnectionNonSecretResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}