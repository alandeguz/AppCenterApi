//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TestCloudProjectFrameworkProperties: APIModel {

    public var configurations: [String]?

    public init(configurations: [String]? = nil) {
        self.configurations = configurations
    }

    private enum CodingKeys: String, CodingKey {
        case configurations
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        configurations = try container.decodeArrayIfPresent(.configurations)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(configurations, forKey: .configurations)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestCloudProjectFrameworkProperties else { return false }
      guard self.configurations == object.configurations else { return false }
      return true
    }

    public static func == (lhs: TestCloudProjectFrameworkProperties, rhs: TestCloudProjectFrameworkProperties) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}