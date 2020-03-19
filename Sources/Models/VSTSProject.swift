//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** VSTS project */
public class VSTSProject: APIModel {

    /** Project description */
    public var description: String?

    /** Project id */
    public var id: String?

    /** Project name */
    public var name: String?

    /** Project state */
    public var state: String?

    /** Project URL */
    public var url: String?

    /** Project visibility */
    public var visibility: String?

    public init(description: String? = nil, id: String? = nil, name: String? = nil, state: String? = nil, url: String? = nil, visibility: String? = nil) {
        self.description = description
        self.id = id
        self.name = name
        self.state = state
        self.url = url
        self.visibility = visibility
    }

    private enum CodingKeys: String, CodingKey {
        case description
        case id
        case name
        case state
        case url
        case visibility
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        description = try container.decodeIfPresent(.description)
        id = try container.decodeIfPresent(.id)
        name = try container.decodeIfPresent(.name)
        state = try container.decodeIfPresent(.state)
        url = try container.decodeIfPresent(.url)
        visibility = try container.decodeIfPresent(.visibility)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(visibility, forKey: .visibility)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? VSTSProject else { return false }
      guard self.description == object.description else { return false }
      guard self.id == object.id else { return false }
      guard self.name == object.name else { return false }
      guard self.state == object.state else { return false }
      guard self.url == object.url else { return false }
      guard self.visibility == object.visibility else { return false }
      return true
    }

    public static func == (lhs: VSTSProject, rhs: VSTSProject) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}