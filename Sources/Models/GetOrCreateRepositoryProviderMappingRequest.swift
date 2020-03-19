//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GetOrCreateRepositoryProviderMappingRequest: APIModel {

    /** The account name given by the external provider. If provided, create an organization and the mapping. If not, create mapping with user. */
    public var externalAccountName: String?

    public init(externalAccountName: String? = nil) {
        self.externalAccountName = externalAccountName
    }

    private enum CodingKeys: String, CodingKey {
        case externalAccountName = "external_account_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        externalAccountName = try container.decodeIfPresent(.externalAccountName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(externalAccountName, forKey: .externalAccountName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GetOrCreateRepositoryProviderMappingRequest else { return false }
      guard self.externalAccountName == object.externalAccountName else { return false }
      return true
    }

    public static func == (lhs: GetOrCreateRepositoryProviderMappingRequest, rhs: GetOrCreateRepositoryProviderMappingRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
