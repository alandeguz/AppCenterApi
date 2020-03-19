//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupOperatingSystem: APIModel {

    /** Count of OS. */
    public var crashCount: Int?

    /** OS name. */
    public var operatingSystemName: String?

    public init(crashCount: Int? = nil, operatingSystemName: String? = nil) {
        self.crashCount = crashCount
        self.operatingSystemName = operatingSystemName
    }

    private enum CodingKeys: String, CodingKey {
        case crashCount = "crash_count"
        case operatingSystemName = "operating_system_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        crashCount = try container.decodeIfPresent(.crashCount)
        operatingSystemName = try container.decodeIfPresent(.operatingSystemName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(crashCount, forKey: .crashCount)
        try container.encodeIfPresent(operatingSystemName, forKey: .operatingSystemName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupOperatingSystem else { return false }
      guard self.crashCount == object.crashCount else { return false }
      guard self.operatingSystemName == object.operatingSystemName else { return false }
      return true
    }

    public static func == (lhs: CrashGroupOperatingSystem, rhs: CrashGroupOperatingSystem) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}