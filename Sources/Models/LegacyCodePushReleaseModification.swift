//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyCodePushReleaseModification: APIModel {

    /** The release package information */
    public var packageInfo: [String: Any]

    public init(packageInfo: [String: Any]) {
        self.packageInfo = packageInfo
    }

    private enum CodingKeys: String, CodingKey {
        case packageInfo
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        packageInfo = try container.decodeAny(.packageInfo)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeAny(packageInfo, forKey: .packageInfo)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyCodePushReleaseModification else { return false }
      guard NSDictionary(dictionary: self.packageInfo ).isEqual(to: object.packageInfo) else { return false }
      return true
    }

    public static func == (lhs: LegacyCodePushReleaseModification, rhs: LegacyCodePushReleaseModification) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
