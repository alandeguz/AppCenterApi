//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** org settings response */
public class OrgComplianceSettingsResponse: APIModel {

    /** certificate connection id to wrap and resign the app after wrapping */
    public var certificateConnectionId: String

    /** The internal unique id (UUID) of the organization. */
    public var orgId: String

    /** The internal unique id (UUID) of the organization compliance setting */
    public var id: String

    /** flag to tell if mam warpping is enabled on the Org */
    public var isMamEnabled: Bool?

    public init(certificateConnectionId: String, orgId: String, id: String, isMamEnabled: Bool? = nil) {
        self.certificateConnectionId = certificateConnectionId
        self.orgId = orgId
        self.id = id
        self.isMamEnabled = isMamEnabled
    }

    private enum CodingKeys: String, CodingKey {
        case certificateConnectionId = "certificate_connection_id"
        case orgId = "org_id"
        case id
        case isMamEnabled = "is_mam_enabled"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        certificateConnectionId = try container.decode(.certificateConnectionId)
        orgId = try container.decode(.orgId)
        id = try container.decode(.id)
        isMamEnabled = try container.decodeIfPresent(.isMamEnabled)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(certificateConnectionId, forKey: .certificateConnectionId)
        try container.encode(orgId, forKey: .orgId)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(isMamEnabled, forKey: .isMamEnabled)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OrgComplianceSettingsResponse else { return false }
      guard self.certificateConnectionId == object.certificateConnectionId else { return false }
      guard self.orgId == object.orgId else { return false }
      guard self.id == object.id else { return false }
      guard self.isMamEnabled == object.isMamEnabled else { return false }
      return true
    }

    public static func == (lhs: OrgComplianceSettingsResponse, rhs: OrgComplianceSettingsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
