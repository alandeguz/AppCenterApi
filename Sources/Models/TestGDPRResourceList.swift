//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TestGDPRResourceList: APIModel {

    public var resources: [Resources]?

    public init(resources: [Resources]? = nil) {
        self.resources = resources
    }

    private enum CodingKeys: String, CodingKey {
        case resources
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        resources = try container.decodeArrayIfPresent(.resources)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(resources, forKey: .resources)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestGDPRResourceList else { return false }
      guard self.resources == object.resources else { return false }
      return true
    }

    public static func == (lhs: TestGDPRResourceList, rhs: TestGDPRResourceList) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
