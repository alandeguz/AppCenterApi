//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GenericLogContainer: APIModel {

    /** the list of logs */
    public var logs: [Logs]

    /** indicates if the number of available logs are more than the max allowed return limit(100). */
    public var exceededMaxLimit: Bool?

    /** the timestamp of the last log received. This value can be used as the start time parameter in the consecutive API call. */
    public var lastReceivedLogTimestamp: DateTime?

    public init(logs: [Logs], exceededMaxLimit: Bool? = nil, lastReceivedLogTimestamp: DateTime? = nil) {
        self.logs = logs
        self.exceededMaxLimit = exceededMaxLimit
        self.lastReceivedLogTimestamp = lastReceivedLogTimestamp
    }

    private enum CodingKeys: String, CodingKey {
        case logs
        case exceededMaxLimit = "exceeded_max_limit"
        case lastReceivedLogTimestamp = "last_received_log_timestamp"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        logs = try container.decodeArray(.logs)
        exceededMaxLimit = try container.decodeIfPresent(.exceededMaxLimit)
        lastReceivedLogTimestamp = try container.decodeIfPresent(.lastReceivedLogTimestamp)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(logs, forKey: .logs)
        try container.encodeIfPresent(exceededMaxLimit, forKey: .exceededMaxLimit)
        try container.encodeIfPresent(lastReceivedLogTimestamp, forKey: .lastReceivedLogTimestamp)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GenericLogContainer else { return false }
      guard self.logs == object.logs else { return false }
      guard self.exceededMaxLimit == object.exceededMaxLimit else { return false }
      guard self.lastReceivedLogTimestamp == object.lastReceivedLogTimestamp else { return false }
      return true
    }

    public static func == (lhs: GenericLogContainer, rhs: GenericLogContainer) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
