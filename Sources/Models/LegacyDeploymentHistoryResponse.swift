//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyDeploymentHistoryResponse: APIModel {

    /** Array containing the deployment's package history. */
    public var history: [History]?

    public init(history: [History]? = nil) {
        self.history = history
    }

    private enum CodingKeys: String, CodingKey {
        case history
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        history = try container.decodeArrayIfPresent(.history)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(history, forKey: .history)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyDeploymentHistoryResponse else { return false }
      guard self.history == object.history else { return false }
      return true
    }

    public static func == (lhs: LegacyDeploymentHistoryResponse, rhs: LegacyDeploymentHistoryResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}