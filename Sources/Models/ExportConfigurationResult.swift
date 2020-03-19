//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Export configuration result */
public class ExportConfigurationResult: APIModel {

    /** Target resource type of export configuration */
    public enum ExportType: String, Codable {
        case blobStorage = "BlobStorage"
        case appInsights = "AppInsights"

        public static let cases: [ExportType] = [
          .blobStorage,
          .appInsights,
        ]
    }

    /** State of the export job */
    public enum State: String, Codable {
        case enabled = "Enabled"
        case disabled = "Disabled"
        case pending = "Pending"
        case deleted = "Deleted"
        case invalid = "Invalid"

        public static let cases: [State] = [
          .enabled,
          .disabled,
          .pending,
          .deleted,
          .invalid,
        ]
    }

    /** Export configuration result */
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

    /** Export configuration id */
    public var id: String

    /** Target resource type of export configuration */
    public var exportType: ExportType

    /** Creation time in ISO 8601 format */
    public var creationTime: String

    /** State of the export job */
    public var state: State

    /** Export configuration */
    public var exportConfiguration: ExportConfiguration?

    public var exportEntities: [ExportEntities]?

    /** Latest time in ISO 8601 format when export completed successfully */
    public var lastRunTime: String?

    /** resource group for the storage account/App Insights resource */
    public var resourceGroup: String?

    /** Storage accout or Appinsights resource name */
    public var resourceName: String?

    /** Additional information about export configuration state */
    public var stateInfo: String?

    /** Export configuration result */
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

        /** Export configuration result */
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

    public init(id: String, exportType: ExportType, creationTime: String, state: State, exportConfiguration: ExportConfiguration? = nil, exportEntities: [ExportEntities]? = nil, lastRunTime: String? = nil, resourceGroup: String? = nil, resourceName: String? = nil, stateInfo: String? = nil) {
        self.id = id
        self.exportType = exportType
        self.creationTime = creationTime
        self.state = state
        self.exportConfiguration = exportConfiguration
        self.exportEntities = exportEntities
        self.lastRunTime = lastRunTime
        self.resourceGroup = resourceGroup
        self.resourceName = resourceName
        self.stateInfo = stateInfo
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case exportType = "export_type"
        case creationTime = "creation_time"
        case state
        case exportConfiguration = "export_configuration"
        case exportEntities = "export_entities"
        case lastRunTime = "last_run_time"
        case resourceGroup = "resource_group"
        case resourceName = "resource_name"
        case stateInfo = "state_info"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        id = try container.decode(.id)
        exportType = try container.decode(.exportType)
        creationTime = try container.decode(.creationTime)
        state = try container.decode(.state)
        exportConfiguration = try container.decodeIfPresent(.exportConfiguration)
        exportEntities = try container.decodeArrayIfPresent(.exportEntities)
        lastRunTime = try container.decodeIfPresent(.lastRunTime)
        resourceGroup = try container.decodeIfPresent(.resourceGroup)
        resourceName = try container.decodeIfPresent(.resourceName)
        stateInfo = try container.decodeIfPresent(.stateInfo)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(id, forKey: .id)
        try container.encode(exportType, forKey: .exportType)
        try container.encode(creationTime, forKey: .creationTime)
        try container.encode(state, forKey: .state)
        try container.encodeIfPresent(exportConfiguration, forKey: .exportConfiguration)
        try container.encodeIfPresent(exportEntities, forKey: .exportEntities)
        try container.encodeIfPresent(lastRunTime, forKey: .lastRunTime)
        try container.encodeIfPresent(resourceGroup, forKey: .resourceGroup)
        try container.encodeIfPresent(resourceName, forKey: .resourceName)
        try container.encodeIfPresent(stateInfo, forKey: .stateInfo)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ExportConfigurationResult else { return false }
      guard self.id == object.id else { return false }
      guard self.exportType == object.exportType else { return false }
      guard self.creationTime == object.creationTime else { return false }
      guard self.state == object.state else { return false }
      guard self.exportConfiguration == object.exportConfiguration else { return false }
      guard self.exportEntities == object.exportEntities else { return false }
      guard self.lastRunTime == object.lastRunTime else { return false }
      guard self.resourceGroup == object.resourceGroup else { return false }
      guard self.resourceName == object.resourceName else { return false }
      guard self.stateInfo == object.stateInfo else { return false }
      return true
    }

    public static func == (lhs: ExportConfigurationResult, rhs: ExportConfigurationResult) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}