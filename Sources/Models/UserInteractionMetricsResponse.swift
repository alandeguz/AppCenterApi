//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Response for retrieving user interaction metrics. */
public class UserInteractionMetricsResponse: APIModel {

    /** check if the user's whole apps has more than 1 releases. */
    public var hasMoreThan1Release: Bool?

    /** check if the user has less than 100 apps. */
    public var lessThan100Apps: Bool?

    public init(hasMoreThan1Release: Bool? = nil, lessThan100Apps: Bool? = nil) {
        self.hasMoreThan1Release = hasMoreThan1Release
        self.lessThan100Apps = lessThan100Apps
    }

    private enum CodingKeys: String, CodingKey {
        case hasMoreThan1Release = "has_more_than_1_release"
        case lessThan100Apps = "less_than_100_apps"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        hasMoreThan1Release = try container.decodeIfPresent(.hasMoreThan1Release)
        lessThan100Apps = try container.decodeIfPresent(.lessThan100Apps)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(hasMoreThan1Release, forKey: .hasMoreThan1Release)
        try container.encodeIfPresent(lessThan100Apps, forKey: .lessThan100Apps)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UserInteractionMetricsResponse else { return false }
      guard self.hasMoreThan1Release == object.hasMoreThan1Release else { return false }
      guard self.lessThan100Apps == object.lessThan100Apps else { return false }
      return true
    }

    public static func == (lhs: UserInteractionMetricsResponse, rhs: UserInteractionMetricsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}