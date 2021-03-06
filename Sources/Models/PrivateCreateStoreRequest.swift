//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** create the store through private API. Used by UI. */
public class PrivateCreateStoreRequest: APIModel {

    /** store Type */
    public enum `Type`: String, Codable {
        case intune = "intune"

        public static let cases: [`Type`] = [
          .intune,
        ]
    }

    public var intuneDetails: IntuneDetails?

    /** name of the store. */
    public var name: String?

    /** store Type */
    public var type: `Type`?

    /** create the store through private API. Used by UI. */
    public class IntuneDetails: APIModel {

        public var appCategory: AppCategory?

        public var targetAudience: TargetAudience?

        /** tenant id of the intune store */
        public var tenantId: String?

        /** create the store through private API. Used by UI. */
        public class AppCategory: APIModel {

            /** display name for the app category */
            public var name: String?

            public init(name: String? = nil) {
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case name
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)

                name = try container.decodeIfPresent(.name)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)

                try container.encodeIfPresent(name, forKey: .name)
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? AppCategory else { return false }
              guard self.name == object.name else { return false }
              return true
            }

            public static func == (lhs: AppCategory, rhs: AppCategory) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        /** create the store through private API. Used by UI. */
        public class TargetAudience: APIModel {

            /** display name for the target audience/group */
            public var name: String?

            public init(name: String? = nil) {
                self.name = name
            }

            private enum CodingKeys: String, CodingKey {
                case name
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)

                name = try container.decodeIfPresent(.name)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)

                try container.encodeIfPresent(name, forKey: .name)
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? TargetAudience else { return false }
              guard self.name == object.name else { return false }
              return true
            }

            public static func == (lhs: TargetAudience, rhs: TargetAudience) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(appCategory: AppCategory? = nil, targetAudience: TargetAudience? = nil, tenantId: String? = nil) {
            self.appCategory = appCategory
            self.targetAudience = targetAudience
            self.tenantId = tenantId
        }

        private enum CodingKeys: String, CodingKey {
            case appCategory = "app_category"
            case targetAudience = "target_audience"
            case tenantId = "tenant_id"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appCategory = try container.decodeIfPresent(.appCategory)
            targetAudience = try container.decodeIfPresent(.targetAudience)
            tenantId = try container.decodeIfPresent(.tenantId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(appCategory, forKey: .appCategory)
            try container.encodeIfPresent(targetAudience, forKey: .targetAudience)
            try container.encodeIfPresent(tenantId, forKey: .tenantId)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? IntuneDetails else { return false }
          guard self.appCategory == object.appCategory else { return false }
          guard self.targetAudience == object.targetAudience else { return false }
          guard self.tenantId == object.tenantId else { return false }
          return true
        }

        public static func == (lhs: IntuneDetails, rhs: IntuneDetails) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(intuneDetails: IntuneDetails? = nil, name: String? = nil, type: `Type`? = nil) {
        self.intuneDetails = intuneDetails
        self.name = name
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case intuneDetails = "intune_details"
        case name
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        intuneDetails = try container.decodeIfPresent(.intuneDetails)
        name = try container.decodeIfPresent(.name)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(intuneDetails, forKey: .intuneDetails)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PrivateCreateStoreRequest else { return false }
      guard self.intuneDetails == object.intuneDetails else { return false }
      guard self.name == object.name else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: PrivateCreateStoreRequest, rhs: PrivateCreateStoreRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
