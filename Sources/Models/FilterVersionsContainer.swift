//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FilterVersionsContainer: APIModel {

    public var versions: [Versions]?

    public init(versions: [Versions]? = nil) {
        self.versions = versions
    }

    private enum CodingKeys: String, CodingKey {
        case versions
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        versions = try container.decodeArrayIfPresent(.versions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(versions, forKey: .versions)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FilterVersionsContainer else { return false }
      guard self.versions == object.versions else { return false }
      return true
    }

    public static func == (lhs: FilterVersionsContainer, rhs: FilterVersionsContainer) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
