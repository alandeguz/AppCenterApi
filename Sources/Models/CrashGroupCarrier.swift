//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupCarrier: APIModel {

    /** Carrier name. */
    public var carrierName: String?

    /** Crash count of carrier. */
    public var crashCount: Int?

    public init(carrierName: String? = nil, crashCount: Int? = nil) {
        self.carrierName = carrierName
        self.crashCount = crashCount
    }

    private enum CodingKeys: String, CodingKey {
        case carrierName = "carrier_name"
        case crashCount = "crash_count"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        carrierName = try container.decodeIfPresent(.carrierName)
        crashCount = try container.decodeIfPresent(.crashCount)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(carrierName, forKey: .carrierName)
        try container.encodeIfPresent(crashCount, forKey: .crashCount)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupCarrier else { return false }
      guard self.carrierName == object.carrierName else { return false }
      guard self.crashCount == object.crashCount else { return false }
      return true
    }

    public static func == (lhs: CrashGroupCarrier, rhs: CrashGroupCarrier) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
