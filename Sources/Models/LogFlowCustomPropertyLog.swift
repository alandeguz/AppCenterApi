//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Set or remove custom properties. */
public class LogFlowCustomPropertyLog: APIModel {

    /** Custom property changes. */
    public var properties: [Properties]?

    public init(properties: [Properties]? = nil) {
        self.properties = properties
    }

    private enum CodingKeys: String, CodingKey {
        case properties
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        properties = try container.decodeArrayIfPresent(.properties)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(properties, forKey: .properties)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LogFlowCustomPropertyLog else { return false }
      guard self.properties == object.properties else { return false }
      return true
    }

    public static func == (lhs: LogFlowCustomPropertyLog, rhs: LogFlowCustomPropertyLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
