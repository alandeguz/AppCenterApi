//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class OrgNameAvailabilityResponse: APIModel {

    /** The availability status of the requested org name */
    public var available: Bool

    /** The generated org name */
    public var name: String

    public init(available: Bool, name: String) {
        self.available = available
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case available
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        available = try container.decode(.available)
        name = try container.decode(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(available, forKey: .available)
        try container.encode(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? OrgNameAvailabilityResponse else { return false }
      guard self.available == object.available else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: OrgNameAvailabilityResponse, rhs: OrgNameAvailabilityResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
