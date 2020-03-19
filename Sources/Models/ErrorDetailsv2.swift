//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorDetailsv2: APIModel {

    public enum Code: String, Codable {
        case badRequest = "BadRequest"
        case conflict = "Conflict"
        case notAcceptable = "NotAcceptable"
        case notFound = "NotFound"
        case internalServerError = "InternalServerError"
        case unauthorized = "Unauthorized"

        public static let cases: [Code] = [
          .badRequest,
          .conflict,
          .notAcceptable,
          .notFound,
          .internalServerError,
          .unauthorized,
        ]
    }

    public var code: Code

    public var message: String

    public init(code: Code, message: String) {
        self.code = code
        self.message = message
    }

    private enum CodingKeys: String, CodingKey {
        case code
        case message
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        code = try container.decode(.code)
        message = try container.decode(.message)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(code, forKey: .code)
        try container.encode(message, forKey: .message)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorDetailsv2 else { return false }
      guard self.code == object.code else { return false }
      guard self.message == object.message else { return false }
      return true
    }

    public static func == (lhs: ErrorDetailsv2, rhs: ErrorDetailsv2) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
