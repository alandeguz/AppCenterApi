//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyUpdateCheckResponse: APIModel {

    public var updateInfo: UNKNOWN_ALL_OFF

    public init(updateInfo: UNKNOWN_ALL_OFF) {
        self.updateInfo = updateInfo
    }

    private enum CodingKeys: String, CodingKey {
        case updateInfo
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        updateInfo = try container.decode(.updateInfo)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(updateInfo, forKey: .updateInfo)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyUpdateCheckResponse else { return false }
      guard self.updateInfo == object.updateInfo else { return false }
      return true
    }

    public static func == (lhs: LegacyUpdateCheckResponse, rhs: LegacyUpdateCheckResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}