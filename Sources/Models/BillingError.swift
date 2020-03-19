//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Error */
public class BillingError: APIModel {

    public var error: ErrorType?

    /** Error */
    public class ErrorType: APIModel {

        /** The status code return by the API. It can be 400 or 403 or 500. */
        public enum Code: Int, Codable {
            case _400 = 400
            case _403 = 403
            case _500 = 500

            public static let cases: [Code] = [
              ._400,
              ._403,
              ._500,
            ]
        }

        /** The status code return by the API. It can be 400 or 403 or 500. */
        public var code: Code?

        /** The reason for the request failed */
        public var message: String?

        public init(code: Code? = nil, message: String? = nil) {
            self.code = code
            self.message = message
        }

        private enum CodingKeys: String, CodingKey {
            case code
            case message
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decodeIfPresent(.code)
            message = try container.decodeIfPresent(.message)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(code, forKey: .code)
            try container.encodeIfPresent(message, forKey: .message)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? ErrorType else { return false }
          guard self.code == object.code else { return false }
          guard self.message == object.message else { return false }
          return true
        }

        public static func == (lhs: ErrorType, rhs: ErrorType) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(error: ErrorType? = nil) {
        self.error = error
    }

    private enum CodingKeys: String, CodingKey {
        case error
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        error = try container.decodeIfPresent(.error)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(error, forKey: .error)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BillingError else { return false }
      guard self.error == object.error else { return false }
      return true
    }

    public static func == (lhs: BillingError, rhs: BillingError) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
