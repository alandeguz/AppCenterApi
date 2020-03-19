//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TestGDPRPipelineTest: APIModel {

    public var appUploadId: ID?

    public var testParameters: [String: Any]?

    public init(appUploadId: ID? = nil, testParameters: [String: Any]? = nil) {
        self.appUploadId = appUploadId
        self.testParameters = testParameters
    }

    private enum CodingKeys: String, CodingKey {
        case appUploadId = "app_upload_id"
        case testParameters = "test_parameters"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appUploadId = try container.decodeIfPresent(.appUploadId)
        testParameters = try container.decodeAnyIfPresent(.testParameters)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appUploadId, forKey: .appUploadId)
        try container.encodeAnyIfPresent(testParameters, forKey: .testParameters)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TestGDPRPipelineTest else { return false }
      guard self.appUploadId == object.appUploadId else { return false }
      guard NSDictionary(dictionary: self.testParameters ?? [:]).isEqual(to: object.testParameters ?? [:]) else { return false }
      return true
    }

    public static func == (lhs: TestGDPRPipelineTest, rhs: TestGDPRPipelineTest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
