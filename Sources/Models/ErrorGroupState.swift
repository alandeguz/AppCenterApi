//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorGroupState: APIModel {

    public var state: GroupStatus

    public var annotation: String?

    public init(state: GroupStatus, annotation: String? = nil) {
        self.state = state
        self.annotation = annotation
    }

    private enum CodingKeys: String, CodingKey {
        case state
        case annotation
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        state = try container.decode(.state)
        annotation = try container.decodeIfPresent(.annotation)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(state, forKey: .state)
        try container.encodeIfPresent(annotation, forKey: .annotation)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorGroupState else { return false }
      guard self.state == object.state else { return false }
      guard self.annotation == object.annotation else { return false }
      return true
    }

    public static func == (lhs: ErrorGroupState, rhs: ErrorGroupState) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
