//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Token query result. */
public class TokenQueryResult: APIModel {

    /** List of tokens. */
    public var tokens: [String]?

    public init(tokens: [String]? = nil) {
        self.tokens = tokens
    }

    private enum CodingKeys: String, CodingKey {
        case tokens
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        tokens = try container.decodeArrayIfPresent(.tokens)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(tokens, forKey: .tokens)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TokenQueryResult else { return false }
      guard self.tokens == object.tokens else { return false }
      return true
    }

    public static func == (lhs: TokenQueryResult, rhs: TokenQueryResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}