//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Audience Query definition. */
public class AudienceQueryDefinition: APIModel {

    /** Audience Query Type */
    public enum QueryType: String, Codable {
        case broadcast = "broadcast"
        case userIds = "user_ids"
        case accountIds = "account_ids"
        case installIds = "install_ids"

        public static let cases: [QueryType] = [
          .broadcast,
          .userIds,
          .accountIds,
          .installIds,
        ]
    }

    /** Audience Query Type */
    public var queryType: QueryType

    /** List of identifiers. */
    public var identifiers: [String]?

    public init(queryType: QueryType, identifiers: [String]? = nil) {
        self.queryType = queryType
        self.identifiers = identifiers
    }

    private enum CodingKeys: String, CodingKey {
        case queryType
        case identifiers
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        queryType = try container.decode(.queryType)
        identifiers = try container.decodeArrayIfPresent(.identifiers)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(queryType, forKey: .queryType)
        try container.encodeIfPresent(identifiers, forKey: .identifiers)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AudienceQueryDefinition else { return false }
      guard self.queryType == object.queryType else { return false }
      guard self.identifiers == object.identifiers else { return false }
      return true
    }

    public static func == (lhs: AudienceQueryDefinition, rhs: AudienceQueryDefinition) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}