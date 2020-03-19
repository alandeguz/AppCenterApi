//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Audience definition. */
public class AudienceDefinition: APIModel {

    /** Custom properties used in the definition. */
    public enum CustomProperties: String, Codable {
        case string = "string"
        case number = "number"
        case boolean = "boolean"
        case dateTime = "date_time"

        public static let cases: [CustomProperties] = [
          .string,
          .number,
          .boolean,
          .dateTime,
        ]
    }

    /** Audience definition in OData format. */
    public var definition: String

    /** Custom properties used in the definition. */
    public var customProperties: [String: CustomProperties]?

    /** Audience description. */
    public var description: String?

    public var enabled: Bool?

    public init(definition: String, customProperties: [String: CustomProperties]? = nil, description: String? = nil, enabled: Bool? = nil) {
        self.definition = definition
        self.customProperties = customProperties
        self.description = description
        self.enabled = enabled
    }

    private enum CodingKeys: String, CodingKey {
        case definition
        case customProperties = "custom_properties"
        case description
        case enabled
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        definition = try container.decode(.definition)
        customProperties = try container.decodeIfPresent(.customProperties)
        description = try container.decodeIfPresent(.description)
        enabled = try container.decodeIfPresent(.enabled)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(definition, forKey: .definition)
        try container.encodeIfPresent(customProperties, forKey: .customProperties)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(enabled, forKey: .enabled)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AudienceDefinition else { return false }
      guard self.definition == object.definition else { return false }
      guard self.customProperties == object.customProperties else { return false }
      guard self.description == object.description else { return false }
      guard self.enabled == object.enabled else { return false }
      return true
    }

    public static func == (lhs: AudienceDefinition, rhs: AudienceDefinition) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
