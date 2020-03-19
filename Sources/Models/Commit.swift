//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Commit: APIModel {

    /** The commit SHA */
    public var sha: String?

    /** The URL to the commit */
    public var url: String?

    public init(sha: String? = nil, url: String? = nil) {
        self.sha = sha
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case sha
        case url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        sha = try container.decodeIfPresent(.sha)
        url = try container.decodeIfPresent(.url)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(sha, forKey: .sha)
        try container.encodeIfPresent(url, forKey: .url)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Commit else { return false }
      guard self.sha == object.sha else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: Commit, rhs: Commit) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
