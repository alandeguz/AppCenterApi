//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** IntuneAppsRequest */
public class IntuneAppsRequest: APIModel {

    /** PartitionKey year-month */
    public var createdMonth: String?

    public init(createdMonth: String? = nil) {
        self.createdMonth = createdMonth
    }

    private enum CodingKeys: String, CodingKey {
        case createdMonth = "created_month"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        createdMonth = try container.decodeIfPresent(.createdMonth)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(createdMonth, forKey: .createdMonth)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? IntuneAppsRequest else { return false }
      guard self.createdMonth == object.createdMonth else { return false }
      return true
    }

    public static func == (lhs: IntuneAppsRequest, rhs: IntuneAppsRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}