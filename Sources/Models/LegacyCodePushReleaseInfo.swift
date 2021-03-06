//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyCodePushReleaseInfo: APIModel {

    public var appVersion: String?

    public var description: String?

    public var isDisabled: Bool?

    public var isMandatory: Bool?

    public var rollout: Int?

    public init(appVersion: String? = nil, description: String? = nil, isDisabled: Bool? = nil, isMandatory: Bool? = nil, rollout: Int? = nil) {
        self.appVersion = appVersion
        self.description = description
        self.isDisabled = isDisabled
        self.isMandatory = isMandatory
        self.rollout = rollout
    }

    private enum CodingKeys: String, CodingKey {
        case appVersion
        case description
        case isDisabled
        case isMandatory
        case rollout
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appVersion = try container.decodeIfPresent(.appVersion)
        description = try container.decodeIfPresent(.description)
        isDisabled = try container.decodeIfPresent(.isDisabled)
        isMandatory = try container.decodeIfPresent(.isMandatory)
        rollout = try container.decodeIfPresent(.rollout)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(isDisabled, forKey: .isDisabled)
        try container.encodeIfPresent(isMandatory, forKey: .isMandatory)
        try container.encodeIfPresent(rollout, forKey: .rollout)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyCodePushReleaseInfo else { return false }
      guard self.appVersion == object.appVersion else { return false }
      guard self.description == object.description else { return false }
      guard self.isDisabled == object.isDisabled else { return false }
      guard self.isMandatory == object.isMandatory else { return false }
      guard self.rollout == object.rollout else { return false }
      return true
    }

    public static func == (lhs: LegacyCodePushReleaseInfo, rhs: LegacyCodePushReleaseInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
