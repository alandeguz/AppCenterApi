//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorGroupOperatingSystem: APIModel {

    /** count of OS */
    public var errorCount: Int?

    /** OS name */
    public var operatingSystemName: String?

    public init(errorCount: Int? = nil, operatingSystemName: String? = nil) {
        self.errorCount = errorCount
        self.operatingSystemName = operatingSystemName
    }

    private enum CodingKeys: String, CodingKey {
        case errorCount
        case operatingSystemName
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorCount = try container.decodeIfPresent(.errorCount)
        operatingSystemName = try container.decodeIfPresent(.operatingSystemName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(errorCount, forKey: .errorCount)
        try container.encodeIfPresent(operatingSystemName, forKey: .operatingSystemName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorGroupOperatingSystem else { return false }
      guard self.errorCount == object.errorCount else { return false }
      guard self.operatingSystemName == object.operatingSystemName else { return false }
      return true
    }

    public static func == (lhs: ErrorGroupOperatingSystem, rhs: ErrorGroupOperatingSystem) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
