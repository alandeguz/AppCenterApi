//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** The versioning configuration for artifacts built for this branch */
public class BranchConfigurationArtifactVersioning: APIModel {

    /** The versioning configuration for artifacts built for this branch */
    public enum BuildNumberFormat: String, Codable {
        case buildId = "buildId"
        case timestamp = "timestamp"

        public static let cases: [BuildNumberFormat] = [
          .buildId,
          .timestamp,
        ]
    }

    public var buildNumberFormat: BuildNumberFormat?

    public init(buildNumberFormat: BuildNumberFormat? = nil) {
        self.buildNumberFormat = buildNumberFormat
    }

    private enum CodingKeys: String, CodingKey {
        case buildNumberFormat
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        buildNumberFormat = try container.decodeIfPresent(.buildNumberFormat)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(buildNumberFormat, forKey: .buildNumberFormat)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BranchConfigurationArtifactVersioning else { return false }
      guard self.buildNumberFormat == object.buildNumberFormat else { return false }
      return true
    }

    public static func == (lhs: BranchConfigurationArtifactVersioning, rhs: BranchConfigurationArtifactVersioning) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
