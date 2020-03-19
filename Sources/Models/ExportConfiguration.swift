//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Export configuration */
public class ExportConfiguration: APIModel {

    /** Type of export configuration */
    public enum `Type`: String, Codable {
        case blobStorageConnectionString = "blob_storage_connection_string"
        case applicationInsightsInstrumentationKey = "application_insights_instrumentation_key"
        case blobStorageLinkedSubscription = "blob_storage_linked_subscription"
        case applicationInsightsLinkedSubscription = "application_insights_linked_subscription"

        public static let cases: [`Type`] = [
          .blobStorageConnectionString,
          .applicationInsightsInstrumentationKey,
          .blobStorageLinkedSubscription,
          .applicationInsightsLinkedSubscription,
        ]
    }

    /** Export configuration */
    public enum ExportEntities: String, Codable {
        case crashes = "crashes"
        case errors = "errors"
        case attachments = "attachments"
        case noLogs = "no_logs"

        public static let cases: [ExportEntities] = [
          .crashes,
          .errors,
          .attachments,
          .noLogs,
        ]
    }

    /** Type of export configuration */
    public var type: `Type`

    /** Field to determine if backfilling should occur. The default value is true. If set to false export starts from date and time of config creation. */
    public var backfill: Bool?

    public var exportEntities: [ExportEntities]?

    /** The resource group name on azure */
    public var resourceGroup: String?

    /** The resource name on azure */
    public var resourceName: String?

    public init(type: `Type`, backfill: Bool? = nil, exportEntities: [ExportEntities]? = nil, resourceGroup: String? = nil, resourceName: String? = nil) {
        self.type = type
        self.backfill = backfill
        self.exportEntities = exportEntities
        self.resourceGroup = resourceGroup
        self.resourceName = resourceName
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case backfill
        case exportEntities = "export_entities"
        case resourceGroup = "resource_group"
        case resourceName = "resource_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decode(.type)
        backfill = try container.decodeIfPresent(.backfill)
        exportEntities = try container.decodeArrayIfPresent(.exportEntities)
        resourceGroup = try container.decodeIfPresent(.resourceGroup)
        resourceName = try container.decodeIfPresent(.resourceName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(backfill, forKey: .backfill)
        try container.encodeIfPresent(exportEntities, forKey: .exportEntities)
        try container.encodeIfPresent(resourceGroup, forKey: .resourceGroup)
        try container.encodeIfPresent(resourceName, forKey: .resourceName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ExportConfiguration else { return false }
      guard self.type == object.type else { return false }
      guard self.backfill == object.backfill else { return false }
      guard self.exportEntities == object.exportEntities else { return false }
      guard self.resourceGroup == object.resourceGroup else { return false }
      guard self.resourceName == object.resourceName else { return false }
      return true
    }

    public static func == (lhs: ExportConfiguration, rhs: ExportConfiguration) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}