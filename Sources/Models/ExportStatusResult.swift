//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Export status */
public class ExportStatusResult: APIModel {

    /** Status of the export. */
    public enum Status: String, Codable {
        case inProgress = "InProgress"
        case completed = "Completed"
        case failed = "Failed"

        public static let cases: [Status] = [
          .inProgress,
          .completed,
          .failed,
        ]
    }

    /** The unique export identifier. */
    public var exportId: String

    /** Status of the export. */
    public var status: Status

    public init(exportId: String, status: Status) {
        self.exportId = exportId
        self.status = status
    }

    private enum CodingKeys: String, CodingKey {
        case exportId = "export_id"
        case status
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        exportId = try container.decode(.exportId)
        status = try container.decode(.status)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(exportId, forKey: .exportId)
        try container.encode(status, forKey: .status)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ExportStatusResult else { return false }
      guard self.exportId == object.exportId else { return false }
      guard self.status == object.status else { return false }
      return true
    }

    public static func == (lhs: ExportStatusResult, rhs: ExportStatusResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
