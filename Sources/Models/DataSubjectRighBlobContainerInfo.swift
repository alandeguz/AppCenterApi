//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DataSubjectRighBlobContainerInfo: APIModel {

    public var sasUri: String

    public var blobPath: String

    public init(sasUri: String, blobPath: String) {
        self.sasUri = sasUri
        self.blobPath = blobPath
    }

    private enum CodingKeys: String, CodingKey {
        case sasUri
        case blobPath
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        sasUri = try container.decode(.sasUri)
        blobPath = try container.decode(.blobPath)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(sasUri, forKey: .sasUri)
        try container.encode(blobPath, forKey: .blobPath)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DataSubjectRighBlobContainerInfo else { return false }
      guard self.sasUri == object.sasUri else { return false }
      guard self.blobPath == object.blobPath else { return false }
      return true
    }

    public static func == (lhs: DataSubjectRighBlobContainerInfo, rhs: DataSubjectRighBlobContainerInfo) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
