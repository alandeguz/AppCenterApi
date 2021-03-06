//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class StoresDetails: APIModel {

    /** A type identifying the type of distribution store. */
    public enum `Type`: String, Codable {
        case googleplay = "googleplay"
        case intune = "intune"
        case apple = "apple"

        public static let cases: [`Type`] = [
          .googleplay,
          .intune,
          .apple,
        ]
    }

    /** ID identifying a unique distribution store. */
    public var id: String?

    /** Is the containing release the latest one in this distribution store. */
    public var isLatest: Bool?

    /** A name identifying a unique distribution store. */
    public var name: String?

    /** A status identifying the status of release in the distribution store. */
    public var publishingStatus: String?

    /** A type identifying the type of distribution store. */
    public var type: `Type`?

    public init(id: String? = nil, isLatest: Bool? = nil, name: String? = nil, publishingStatus: String? = nil, type: `Type`? = nil) {
        self.id = id
        self.isLatest = isLatest
        self.name = name
        self.publishingStatus = publishingStatus
        self.type = type
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case isLatest = "is_latest"
        case name
        case publishingStatus = "publishing_status"
        case type
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decodeIfPresent(.id)
        isLatest = try container.decodeIfPresent(.isLatest)
        name = try container.decodeIfPresent(.name)
        publishingStatus = try container.decodeIfPresent(.publishingStatus)
        type = try container.decodeIfPresent(.type)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isLatest, forKey: .isLatest)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(publishingStatus, forKey: .publishingStatus)
        try container.encodeIfPresent(type, forKey: .type)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? StoresDetails else { return false }
      guard self.id == object.id else { return false }
      guard self.isLatest == object.isLatest else { return false }
      guard self.name == object.name else { return false }
      guard self.publishingStatus == object.publishingStatus else { return false }
      guard self.type == object.type else { return false }
      return true
    }

    public static func == (lhs: StoresDetails, rhs: StoresDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
