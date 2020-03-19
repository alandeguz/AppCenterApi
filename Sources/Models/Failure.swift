//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Failure: APIModel {

    public var message: String

    public init(message: String) {
        self.message = message
    }

    private enum CodingKeys: String, CodingKey {
        case message
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        message = try container.decode(.message)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(message, forKey: .message)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Failure else { return false }
      guard self.message == object.message else { return false }
      return true
    }

    public static func == (lhs: Failure, rhs: Failure) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
