//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Most important information about a test run. */
public class TestRunSummary: APIModel {

    /** Tells whether the test run has completed */
    public var completed: Bool?

    /** Date of the test run. */
    public var date: String?

    /** Number of failed tests */
    public var failed: Double?

    /** Number of passed tests */
    public var passed: Double?

    /** Human-readable status of the test run. */
    public var statusDescription: String?

    public init(completed: Bool? = nil, date: String? = nil, failed: Double? = nil, passed: Double? = nil, statusDescription: String? = nil) {
        self.completed = completed
        self.date = date
        self.failed = failed
        self.passed = passed
        self.statusDescription = statusDescription
    }

    private enum CodingKeys: String, CodingKey {
        case completed
        case date
        case failed
        case passed
        case statusDescription
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        completed = try container.decodeIfPresent(.completed)
        date = try container.decodeIfPresent(.date)
        failed = try container.decodeIfPresent(.failed)
        passed = try container.decodeIfPresent(.passed)
        statusDescription = try container.decodeIfPresent(.statusDescription)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(completed, forKey: .completed)
        try container.encodeIfPresent(date, forKey: .date)
        try container.encodeIfPresent(failed, forKey: .failed)
        try container.encodeIfPresent(passed, forKey: .passed)
        try container.encodeIfPresent(statusDescription, forKey: .statusDescription)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestRunSummary else { return false }
      guard self.completed == object.completed else { return false }
      guard self.date == object.date else { return false }
      guard self.failed == object.failed else { return false }
      guard self.passed == object.passed else { return false }
      guard self.statusDescription == object.statusDescription else { return false }
      return true
    }

    public static func == (lhs: TestRunSummary, rhs: TestRunSummary) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
