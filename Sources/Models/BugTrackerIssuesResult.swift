//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Returns a list of all issues associated with a repo */
public class BugTrackerIssuesResult: APIModel {

    public var issues: [Issues]?

    public init(issues: [Issues]? = nil) {
        self.issues = issues
    }

    private enum CodingKeys: String, CodingKey {
        case issues
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        issues = try container.decodeArrayIfPresent(.issues)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(issues, forKey: .issues)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? BugTrackerIssuesResult else { return false }
      guard self.issues == object.issues else { return false }
      return true
    }

    public static func == (lhs: BugTrackerIssuesResult, rhs: BugTrackerIssuesResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}