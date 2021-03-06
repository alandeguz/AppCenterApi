//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ProvisionStatusResponse: APIModel {

    public enum Status: String, Codable {
        case empty = "Empty"
        case accepted = "Accepted"
        case creating = "Creating"
        case connected = "Connected"
        case invalid = "Invalid"

        public static let cases: [Status] = [
          .empty,
          .accepted,
          .creating,
          .connected,
          .invalid,
        ]
    }

    public var status: Status

    public var message: String?

    public init(status: Status, message: String? = nil) {
        self.status = status
        self.message = message
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case message
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        message = try container.decodeIfPresent(.message)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(message, forKey: .message)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProvisionStatusResponse else { return false }
      guard self.status == object.status else { return false }
      guard self.message == object.message else { return false }
      return true
    }

    public static func == (lhs: ProvisionStatusResponse, rhs: ProvisionStatusResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
