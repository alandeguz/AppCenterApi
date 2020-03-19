//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupOperatingSystems: APIModel {

    public var crashCount: Int?

    public var operatingSystems: [OperatingSystems]?

    public init(crashCount: Int? = nil, operatingSystems: [OperatingSystems]? = nil) {
        self.crashCount = crashCount
        self.operatingSystems = operatingSystems
    }

    private enum CodingKeys: String, CodingKey {
        case crashCount = "crash_count"
        case operatingSystems = "operating_systems"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        crashCount = try container.decodeIfPresent(.crashCount)
        operatingSystems = try container.decodeArrayIfPresent(.operatingSystems)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(crashCount, forKey: .crashCount)
        try container.encodeIfPresent(operatingSystems, forKey: .operatingSystems)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupOperatingSystems else { return false }
      guard self.crashCount == object.crashCount else { return false }
      guard self.operatingSystems == object.operatingSystems else { return false }
      return true
    }

    public static func == (lhs: CrashGroupOperatingSystems, rhs: CrashGroupOperatingSystems) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
