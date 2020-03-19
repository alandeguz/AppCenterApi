//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AADTenantResponse: APIModel {

    /** The AAD tenant id */
    public var aadTenantId: ID

    /** The name of the AAD Tenant */
    public var displayName: String

    public init(aadTenantId: ID, displayName: String) {
        self.aadTenantId = aadTenantId
        self.displayName = displayName
    }

    private enum CodingKeys: String, CodingKey {
        case aadTenantId = "aad_tenant_id"
        case displayName = "display_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        aadTenantId = try container.decode(.aadTenantId)
        displayName = try container.decode(.displayName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(aadTenantId, forKey: .aadTenantId)
        try container.encode(displayName, forKey: .displayName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AADTenantResponse else { return false }
      guard self.aadTenantId == object.aadTenantId else { return false }
      guard self.displayName == object.displayName else { return false }
      return true
    }

    public static func == (lhs: AADTenantResponse, rhs: AADTenantResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}