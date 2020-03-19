//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Boolean property. */
public class BooleanProperty: APIModel {

    /** Boolean property value. */
    public var value: Bool

    public init(value: Bool) {
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        value = try container.decode(.value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(value, forKey: .value)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BooleanProperty else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: BooleanProperty, rhs: BooleanProperty) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
