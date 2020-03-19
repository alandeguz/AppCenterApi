//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The information for a resign attempt. */
public class ResignInfo: APIModel {

    /** The expiration date of the certificate used for the resign attempt */
    public var certificateExpiration: String?

    /** The name of the certificate used for the resign attempt */
    public var certificateName: String?

    /** The group name of the resign attempt */
    public var groupName: String?

    /** The provisioning profile name of group for the given resign attempt */
    public var profileName: String?

    /** The provisioning profile type of group for the given resign attempt */
    public var profileType: String?

    public init(certificateExpiration: String? = nil, certificateName: String? = nil, groupName: String? = nil, profileName: String? = nil, profileType: String? = nil) {
        self.certificateExpiration = certificateExpiration
        self.certificateName = certificateName
        self.groupName = groupName
        self.profileName = profileName
        self.profileType = profileType
    }

    private enum CodingKeys: String, CodingKey {
        case certificateExpiration = "certificate_expiration"
        case certificateName = "certificate_name"
        case groupName = "group_name"
        case profileName = "profile_name"
        case profileType = "profile_type"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        certificateExpiration = try container.decodeIfPresent(.certificateExpiration)
        certificateName = try container.decodeIfPresent(.certificateName)
        groupName = try container.decodeIfPresent(.groupName)
        profileName = try container.decodeIfPresent(.profileName)
        profileType = try container.decodeIfPresent(.profileType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(certificateExpiration, forKey: .certificateExpiration)
        try container.encodeIfPresent(certificateName, forKey: .certificateName)
        try container.encodeIfPresent(groupName, forKey: .groupName)
        try container.encodeIfPresent(profileName, forKey: .profileName)
        try container.encodeIfPresent(profileType, forKey: .profileType)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ResignInfo else { return false }
      guard self.certificateExpiration == object.certificateExpiration else { return false }
      guard self.certificateName == object.certificateName else { return false }
      guard self.groupName == object.groupName else { return false }
      guard self.profileName == object.profileName else { return false }
      guard self.profileType == object.profileType else { return false }
      return true
    }

    public static func == (lhs: ResignInfo, rhs: ResignInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}