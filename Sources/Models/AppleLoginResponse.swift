//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Indicates if login was successful. */
public class AppleLoginResponse: APIModel {

    /** True when login was successful. */
    public var successful: Bool?

    public init(successful: Bool? = nil) {
        self.successful = successful
    }

    private enum CodingKeys: String, CodingKey {
        case successful
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        successful = try container.decodeIfPresent(.successful)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(successful, forKey: .successful)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppleLoginResponse else { return false }
      guard self.successful == object.successful else { return false }
      return true
    }

    public static func == (lhs: AppleLoginResponse, rhs: AppleLoginResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
