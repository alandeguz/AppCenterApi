//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Result of uploading a single file hash */
public class TestCloudHashUploadStatus: APIModel {

    /** HTTP status code that represent result of upload */
    public var statusCode: Double

    /** URI that should be used to make POST request if file with given hash doesn't exist. This is set when status_code is equal to 412 */
    public var location: String?

    public init(statusCode: Double, location: String? = nil) {
        self.statusCode = statusCode
        self.location = location
    }

    private enum CodingKeys: String, CodingKey {
        case statusCode
        case location
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        statusCode = try container.decode(.statusCode)
        location = try container.decodeIfPresent(.location)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(statusCode, forKey: .statusCode)
        try container.encodeIfPresent(location, forKey: .location)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestCloudHashUploadStatus else { return false }
      guard self.statusCode == object.statusCode else { return false }
      guard self.location == object.location else { return false }
      return true
    }

    public static func == (lhs: TestCloudHashUploadStatus, rhs: TestCloudHashUploadStatus) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}