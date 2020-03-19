//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The response for the build uploaded check. */
public class HasBuildUploadedResponse: APIModel {

    /** true if a build has been uploaded, false otherwise */
    public var hasBuildUploaded: Bool?

    public init(hasBuildUploaded: Bool? = nil) {
        self.hasBuildUploaded = hasBuildUploaded
    }

    private enum CodingKeys: String, CodingKey {
        case hasBuildUploaded = "has_build_uploaded"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        hasBuildUploaded = try container.decodeIfPresent(.hasBuildUploaded)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(hasBuildUploaded, forKey: .hasBuildUploaded)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? HasBuildUploadedResponse else { return false }
      guard self.hasBuildUploaded == object.hasBuildUploaded else { return false }
      return true
    }

    public static func == (lhs: HasBuildUploadedResponse, rhs: HasBuildUploadedResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}