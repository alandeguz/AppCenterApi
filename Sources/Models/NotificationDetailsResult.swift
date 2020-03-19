//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Notification statistics */
public class NotificationDetailsResult: APIModel {

    /** Notification definition object */
    public var notificationContent: NotificationContent

    /** Failture outcome counts */
    public var failureOutcomes: [FailureOutcomes]?

    /** Notification statistics */
    public class NotificationContent: APIModel {

        /** Notification name */
        public var name: String

        /** Notification body */
        public var body: String?

        /** Notification custom data (such as badge, color, sound, etc.) */
        public var customData: [String: String]?

        /** Notification title */
        public var title: String?

        public init(name: String, body: String? = nil, customData: [String: String]? = nil, title: String? = nil) {
            self.name = name
            self.body = body
            self.customData = customData
            self.title = title
        }

        private enum CodingKeys: String, CodingKey {
            case name
            case body
            case customData = "custom_data"
            case title
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(.name)
            body = try container.decodeIfPresent(.body)
            customData = try container.decodeIfPresent(.customData)
            title = try container.decodeIfPresent(.title)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(name, forKey: .name)
            try container.encodeIfPresent(body, forKey: .body)
            try container.encodeIfPresent(customData, forKey: .customData)
            try container.encodeIfPresent(title, forKey: .title)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? NotificationContent else { return false }
          guard self.name == object.name else { return false }
          guard self.body == object.body else { return false }
          guard self.customData == object.customData else { return false }
          guard self.title == object.title else { return false }
          return true
        }

        public static func == (lhs: NotificationContent, rhs: NotificationContent) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(notificationContent: NotificationContent, failureOutcomes: [FailureOutcomes]? = nil) {
        self.notificationContent = notificationContent
        self.failureOutcomes = failureOutcomes
    }

    private enum CodingKeys: String, CodingKey {
        case notificationContent = "notification_content"
        case failureOutcomes = "failure_outcomes"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        notificationContent = try container.decode(.notificationContent)
        failureOutcomes = try container.decodeArrayIfPresent(.failureOutcomes)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(notificationContent, forKey: .notificationContent)
        try container.encodeIfPresent(failureOutcomes, forKey: .failureOutcomes)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationDetailsResult else { return false }
      guard self.notificationContent == object.notificationContent else { return false }
      guard self.failureOutcomes == object.failureOutcomes else { return false }
      return true
    }

    public static func == (lhs: NotificationDetailsResult, rhs: NotificationDetailsResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}