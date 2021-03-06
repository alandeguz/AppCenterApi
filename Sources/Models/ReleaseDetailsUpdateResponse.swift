//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Response for updating release details */
public class ReleaseDetailsUpdateResponse: APIModel {

    public var releaseNotes: String?

    public init(releaseNotes: String? = nil) {
        self.releaseNotes = releaseNotes
    }

    private enum CodingKeys: String, CodingKey {
        case releaseNotes = "release_notes"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        releaseNotes = try container.decodeIfPresent(.releaseNotes)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(releaseNotes, forKey: .releaseNotes)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ReleaseDetailsUpdateResponse else { return false }
      guard self.releaseNotes == object.releaseNotes else { return false }
      return true
    }

    public static func == (lhs: ReleaseDetailsUpdateResponse, rhs: ReleaseDetailsUpdateResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
