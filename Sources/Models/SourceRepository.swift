//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The source repository */
public class SourceRepository: APIModel {

    /** URL used to clone the repository */
    public var cloneURL: String?

    /** The repository name */
    public var name: String?

    public init(cloneURL: String? = nil, name: String? = nil) {
        self.cloneURL = cloneURL
        self.name = name
    }

    private enum CodingKeys: String, CodingKey {
        case cloneURL = "clone_url"
        case name
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cloneURL = try container.decodeIfPresent(.cloneURL)
        name = try container.decodeIfPresent(.name)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(cloneURL, forKey: .cloneURL)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? SourceRepository else { return false }
      guard self.cloneURL == object.cloneURL else { return false }
      guard self.name == object.name else { return false }
      return true
    }

    public static func == (lhs: SourceRepository, rhs: SourceRepository) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
