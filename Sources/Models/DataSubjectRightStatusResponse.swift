//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DataSubjectRightStatusResponse: APIModel {

    /** Status of data subject right request */
    public enum Status: String, Codable {
        case none = "None"
        case created = "Created"
        case queued = "Queued"
        case inProgress = "InProgress"
        case completed = "Completed"
        case failed = "Failed"

        public static let cases: [Status] = [
          .none,
          .created,
          .queued,
          .inProgress,
          .completed,
          .failed,
        ]
    }

    /** Status of data subject right request */
    public var status: Status

    /** explanation message of the status */
    public var message: String

    /** Azure Storage shared access signature (SAS) URL for exported user data. */
    public var sasUrl: String?

    /** Whether Azure Storage shared access signature (SAS) URL has expired or not. */
    public var sasUrlExpired: Bool?

    public init(status: Status, message: String, sasUrl: String? = nil, sasUrlExpired: Bool? = nil) {
        self.status = status
        self.message = message
        self.sasUrl = sasUrl
        self.sasUrlExpired = sasUrlExpired
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case message
        case sasUrl
        case sasUrlExpired
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        message = try container.decode(.message)
        sasUrl = try container.decodeIfPresent(.sasUrl)
        sasUrlExpired = try container.decodeIfPresent(.sasUrlExpired)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encode(message, forKey: .message)
        try container.encodeIfPresent(sasUrl, forKey: .sasUrl)
        try container.encodeIfPresent(sasUrlExpired, forKey: .sasUrlExpired)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DataSubjectRightStatusResponse else { return false }
      guard self.status == object.status else { return false }
      guard self.message == object.message else { return false }
      guard self.sasUrl == object.sasUrl else { return false }
      guard self.sasUrlExpired == object.sasUrlExpired else { return false }
      return true
    }

    public static func == (lhs: DataSubjectRightStatusResponse, rhs: DataSubjectRightStatusResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
