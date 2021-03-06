//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Details of the upload to patch */
public class PrivateUpdateUploadDetails: APIModel {

    /** Details of the upload to patch */
    public enum Status: String, Codable {
        case uploadStarted = "uploadStarted"
        case uploadFinished = "uploadFinished"
        case readyToBePublished = "readyToBePublished"
        case malwareDetected = "malwareDetected"
        case error = "error"

        public static let cases: [Status] = [
          .uploadStarted,
          .uploadFinished,
          .readyToBePublished,
          .malwareDetected,
          .error,
        ]
    }

    public var status: Status

    /** Message of the error */
    public var errorMessage: String

    public init(status: Status, errorMessage: String) {
        self.status = status
        self.errorMessage = errorMessage
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case errorMessage = "error_message"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        errorMessage = try container.decode(.errorMessage)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encode(errorMessage, forKey: .errorMessage)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PrivateUpdateUploadDetails else { return false }
      guard self.status == object.status else { return false }
      guard self.errorMessage == object.errorMessage else { return false }
      return true
    }

    public static func == (lhs: PrivateUpdateUploadDetails, rhs: PrivateUpdateUploadDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
