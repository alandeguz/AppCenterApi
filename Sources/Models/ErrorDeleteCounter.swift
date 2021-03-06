//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorDeleteCounter: APIModel {

    public var appId: String?

    public var attachmentsDeleted: Int?

    public var blobsFailed: Int?

    public var blobsSucceeded: Int?

    public var errorGroupId: String?

    public var errorId: String?

    public var errorsDeleted: Int?

    public init(appId: String? = nil, attachmentsDeleted: Int? = nil, blobsFailed: Int? = nil, blobsSucceeded: Int? = nil, errorGroupId: String? = nil, errorId: String? = nil, errorsDeleted: Int? = nil) {
        self.appId = appId
        self.attachmentsDeleted = attachmentsDeleted
        self.blobsFailed = blobsFailed
        self.blobsSucceeded = blobsSucceeded
        self.errorGroupId = errorGroupId
        self.errorId = errorId
        self.errorsDeleted = errorsDeleted
    }

    private enum CodingKeys: String, CodingKey {
        case appId
        case attachmentsDeleted
        case blobsFailed
        case blobsSucceeded
        case errorGroupId
        case errorId
        case errorsDeleted
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appId = try container.decodeIfPresent(.appId)
        attachmentsDeleted = try container.decodeIfPresent(.attachmentsDeleted)
        blobsFailed = try container.decodeIfPresent(.blobsFailed)
        blobsSucceeded = try container.decodeIfPresent(.blobsSucceeded)
        errorGroupId = try container.decodeIfPresent(.errorGroupId)
        errorId = try container.decodeIfPresent(.errorId)
        errorsDeleted = try container.decodeIfPresent(.errorsDeleted)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(attachmentsDeleted, forKey: .attachmentsDeleted)
        try container.encodeIfPresent(blobsFailed, forKey: .blobsFailed)
        try container.encodeIfPresent(blobsSucceeded, forKey: .blobsSucceeded)
        try container.encodeIfPresent(errorGroupId, forKey: .errorGroupId)
        try container.encodeIfPresent(errorId, forKey: .errorId)
        try container.encodeIfPresent(errorsDeleted, forKey: .errorsDeleted)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorDeleteCounter else { return false }
      guard self.appId == object.appId else { return false }
      guard self.attachmentsDeleted == object.attachmentsDeleted else { return false }
      guard self.blobsFailed == object.blobsFailed else { return false }
      guard self.blobsSucceeded == object.blobsSucceeded else { return false }
      guard self.errorGroupId == object.errorGroupId else { return false }
      guard self.errorId == object.errorId else { return false }
      guard self.errorsDeleted == object.errorsDeleted else { return false }
      return true
    }

    public static func == (lhs: ErrorDeleteCounter, rhs: ErrorDeleteCounter) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
