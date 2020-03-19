//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppName: APIModel {

    public var name: String

    public init(name: String) {
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        name = try container.decode(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppName else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: AppName, rhs: AppName) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
