//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** New crash group alerting event */
public class NewCrashGroupAlertingEvent: APIModel {

    /** A unique identifier for this event instance. Useful for deduplication */
    public var eventId: String

    /** ISO 8601 date time when event was generated */
    public var eventTimestamp: String

    /** Obsolete. Use emailProperties. */
    public var properties: [String: Any]?

    public init(eventId: String, eventTimestamp: String, properties: [String: Any]? = nil) {
        self.eventId = eventId
        self.eventTimestamp = eventTimestamp
        self.properties = properties
    }

    private enum CodingKeys: String, CodingKey {
        case eventId = "event_id"
        case eventTimestamp = "event_timestamp"
        case properties
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        eventId = try container.decode(.eventId)
        eventTimestamp = try container.decode(.eventTimestamp)
        properties = try container.decodeAnyIfPresent(.properties)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(eventId, forKey: .eventId)
        try container.encode(eventTimestamp, forKey: .eventTimestamp)
        try container.encodeAnyIfPresent(properties, forKey: .properties)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NewCrashGroupAlertingEvent else { return false }
      guard self.eventId == object.eventId else { return false }
      guard self.eventTimestamp == object.eventTimestamp else { return false }
      guard NSDictionary(dictionary: self.properties ?? [:]).isEqual(to: object.properties ?? [:]) else { return false }
      return true
    }

    public static func == (lhs: NewCrashGroupAlertingEvent, rhs: NewCrashGroupAlertingEvent) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
