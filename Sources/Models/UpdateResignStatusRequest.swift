//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Updates the status of the resign request */
public class UpdateResignStatusRequest: APIModel {

    /** The updated status for the resigning request. */
    public var status: String

    /** Error code if an error occured in the resigning operation. */
    public var errorCode: String?

    /** Error message if an error occured in the resigning operation. */
    public var errorMessage: String?

    public init(status: String, errorCode: String? = nil, errorMessage: String? = nil) {
        self.status = status
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case errorCode = "error_code"
        case errorMessage = "error_message"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        errorCode = try container.decodeIfPresent(.errorCode)
        errorMessage = try container.decodeIfPresent(.errorMessage)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encodeIfPresent(errorCode, forKey: .errorCode)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UpdateResignStatusRequest else { return false }
      guard self.status == object.status else { return false }
      guard self.errorCode == object.errorCode else { return false }
      guard self.errorMessage == object.errorMessage else { return false }
      return true
    }

    public static func == (lhs: UpdateResignStatusRequest, rhs: UpdateResignStatusRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
