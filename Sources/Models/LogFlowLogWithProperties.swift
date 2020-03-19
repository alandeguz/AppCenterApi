//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LogFlowLogWithProperties: APIModel {

    /** Additional key/value pair parameters.
 */
    public var properties: [String: String]?

    public init(properties: [String: String]? = nil) {
        self.properties = properties
    }

    private enum CodingKeys: String, CodingKey {
        case properties
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        properties = try container.decodeIfPresent(.properties)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(properties, forKey: .properties)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LogFlowLogWithProperties else { return false }
      guard self.properties == object.properties else { return false }
      return true
    }

    public static func == (lhs: LogFlowLogWithProperties, rhs: LogFlowLogWithProperties) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
