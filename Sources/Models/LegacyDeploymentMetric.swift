//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LegacyDeploymentMetric: APIModel {

    /** The number of devices that have this release installed currently */
    public var active: Int

    /** The number of times this release has been downloaded */
    public var downloaded: Int?

    /** The number of times this release has failed to be installed on a device */
    public var failed: Int?

    /** The number of times this release has been installed on a device */
    public var installed: Int?

    public init(active: Int, downloaded: Int? = nil, failed: Int? = nil, installed: Int? = nil) {
        self.active = active
        self.downloaded = downloaded
        self.failed = failed
        self.installed = installed
    }

    private enum CodingKeys: String, CodingKey {
        case active
        case downloaded
        case failed
        case installed
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        active = try container.decode(.active)
        downloaded = try container.decodeIfPresent(.downloaded)
        failed = try container.decodeIfPresent(.failed)
        installed = try container.decodeIfPresent(.installed)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(active, forKey: .active)
        try container.encodeIfPresent(downloaded, forKey: .downloaded)
        try container.encodeIfPresent(failed, forKey: .failed)
        try container.encodeIfPresent(installed, forKey: .installed)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyDeploymentMetric else { return false }
      guard self.active == object.active else { return false }
      guard self.downloaded == object.downloaded else { return false }
      guard self.failed == object.failed else { return false }
      guard self.installed == object.installed else { return false }
      return true
    }

    public static func == (lhs: LegacyDeploymentMetric, rhs: LegacyDeploymentMetric) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
