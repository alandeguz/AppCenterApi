//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Current status of a test run */
public class TestRunState: APIModel {

    /** The exit code that the client should use when exiting. Used for indicating status to the caller of the client.
0: test run completes with no failing tests
1: test run completes with at least one failing test
2: test run failed to complete. Status for test run is unknown
 */
    public var exitCode: Int?

    /** Multi-line message that describes the status */
    public var message: [String]?

    /** Time (in seconds) that the client should wait for before checking the status again */
    public var waitTime: Int?

    public init(exitCode: Int? = nil, message: [String]? = nil, waitTime: Int? = nil) {
        self.exitCode = exitCode
        self.message = message
        self.waitTime = waitTime
    }

    private enum CodingKeys: String, CodingKey {
        case exitCode = "exit_code"
        case message
        case waitTime = "wait_time"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        exitCode = try container.decodeIfPresent(.exitCode)
        message = try container.decodeArrayIfPresent(.message)
        waitTime = try container.decodeIfPresent(.waitTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(exitCode, forKey: .exitCode)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(waitTime, forKey: .waitTime)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestRunState else { return false }
      guard self.exitCode == object.exitCode else { return false }
      guard self.message == object.message else { return false }
      guard self.waitTime == object.waitTime else { return false }
      return true
    }

    public static func == (lhs: TestRunState, rhs: TestRunState) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
