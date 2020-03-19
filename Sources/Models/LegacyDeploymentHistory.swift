//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Information about a specific release. */
public class LegacyDeploymentHistory: APIModel {

    public var allOf: AllOf?

    /** The description of the release. */
    public var description: String?

    /** The original deployment of the release, if it's ever been promoted. */
    public var originalDeployment: String?

    /** The original label of the release, if it's ever been updated. */
    public var originalLabel: String?

    /** The package's hash value (internal use). */
    public var packageHash: String?

    /** Information about a specific release. */
    public class AllOf: APIModel {

        /** The version of the release */
        public var appVersion: String?

        /** Location (URL) of release package */
        public var blobUrl: String?

        /** Object containing URL and size of changed package hashes contained in the release */
        public var diffPackageMap: [String: Any]?

        /** Flag used to determine if release is disabled */
        public var isDisabled: Bool?

        /** Flag used to determine if release is mandatory */
        public var isMandatory: Bool?

        /** Release label (aka release name) */
        public var label: String?

        /** The URL location of the package's manifest file. */
        public var manifestBlobUrl: String?

        /** Method used to deploy release */
        public var releaseMethod: String?

        /** User ID that triggered most recent release */
        public var releasedByUserId: String?

        /** Percentage (out of 100) that release is deployed to */
        public var rollout: Int?

        /** Size of release package */
        public var size: Int?

        /** Release upload time as epoch Unix timestamp */
        public var uploadTime: Int?

        public init(appVersion: String? = nil, blobUrl: String? = nil, diffPackageMap: [String: Any]? = nil, isDisabled: Bool? = nil, isMandatory: Bool? = nil, label: String? = nil, manifestBlobUrl: String? = nil, releaseMethod: String? = nil, releasedByUserId: String? = nil, rollout: Int? = nil, size: Int? = nil, uploadTime: Int? = nil) {
            self.appVersion = appVersion
            self.blobUrl = blobUrl
            self.diffPackageMap = diffPackageMap
            self.isDisabled = isDisabled
            self.isMandatory = isMandatory
            self.label = label
            self.manifestBlobUrl = manifestBlobUrl
            self.releaseMethod = releaseMethod
            self.releasedByUserId = releasedByUserId
            self.rollout = rollout
            self.size = size
            self.uploadTime = uploadTime
        }

        private enum CodingKeys: String, CodingKey {
            case appVersion
            case blobUrl
            case diffPackageMap
            case isDisabled
            case isMandatory
            case label
            case manifestBlobUrl
            case releaseMethod
            case releasedByUserId
            case rollout
            case size
            case uploadTime
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            appVersion = try container.decodeIfPresent(.appVersion)
            blobUrl = try container.decodeIfPresent(.blobUrl)
            diffPackageMap = try container.decodeAnyIfPresent(.diffPackageMap)
            isDisabled = try container.decodeIfPresent(.isDisabled)
            isMandatory = try container.decodeIfPresent(.isMandatory)
            label = try container.decodeIfPresent(.label)
            manifestBlobUrl = try container.decodeIfPresent(.manifestBlobUrl)
            releaseMethod = try container.decodeIfPresent(.releaseMethod)
            releasedByUserId = try container.decodeIfPresent(.releasedByUserId)
            rollout = try container.decodeIfPresent(.rollout)
            size = try container.decodeIfPresent(.size)
            uploadTime = try container.decodeIfPresent(.uploadTime)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(appVersion, forKey: .appVersion)
            try container.encodeIfPresent(blobUrl, forKey: .blobUrl)
            try container.encodeAnyIfPresent(diffPackageMap, forKey: .diffPackageMap)
            try container.encodeIfPresent(isDisabled, forKey: .isDisabled)
            try container.encodeIfPresent(isMandatory, forKey: .isMandatory)
            try container.encodeIfPresent(label, forKey: .label)
            try container.encodeIfPresent(manifestBlobUrl, forKey: .manifestBlobUrl)
            try container.encodeIfPresent(releaseMethod, forKey: .releaseMethod)
            try container.encodeIfPresent(releasedByUserId, forKey: .releasedByUserId)
            try container.encodeIfPresent(rollout, forKey: .rollout)
            try container.encodeIfPresent(size, forKey: .size)
            try container.encodeIfPresent(uploadTime, forKey: .uploadTime)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? AllOf else { return false }
          guard self.appVersion == object.appVersion else { return false }
          guard self.blobUrl == object.blobUrl else { return false }
          guard NSDictionary(dictionary: self.diffPackageMap ?? [:]).isEqual(to: object.diffPackageMap ?? [:]) else { return false }
          guard self.isDisabled == object.isDisabled else { return false }
          guard self.isMandatory == object.isMandatory else { return false }
          guard self.label == object.label else { return false }
          guard self.manifestBlobUrl == object.manifestBlobUrl else { return false }
          guard self.releaseMethod == object.releaseMethod else { return false }
          guard self.releasedByUserId == object.releasedByUserId else { return false }
          guard self.rollout == object.rollout else { return false }
          guard self.size == object.size else { return false }
          guard self.uploadTime == object.uploadTime else { return false }
          return true
        }

        public static func == (lhs: AllOf, rhs: AllOf) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(allOf: AllOf? = nil, description: String? = nil, originalDeployment: String? = nil, originalLabel: String? = nil, packageHash: String? = nil) {
        self.allOf = allOf
        self.description = description
        self.originalDeployment = originalDeployment
        self.originalLabel = originalLabel
        self.packageHash = packageHash
    }

    private enum CodingKeys: String, CodingKey {
        case allOf
        case description
        case originalDeployment
        case originalLabel
        case packageHash
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        allOf = try container.decodeIfPresent(.allOf)
        description = try container.decodeIfPresent(.description)
        originalDeployment = try container.decodeIfPresent(.originalDeployment)
        originalLabel = try container.decodeIfPresent(.originalLabel)
        packageHash = try container.decodeIfPresent(.packageHash)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(allOf, forKey: .allOf)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(originalDeployment, forKey: .originalDeployment)
        try container.encodeIfPresent(originalLabel, forKey: .originalLabel)
        try container.encodeIfPresent(packageHash, forKey: .packageHash)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LegacyDeploymentHistory else { return false }
      guard self.allOf == object.allOf else { return false }
      guard self.description == object.description else { return false }
      guard self.originalDeployment == object.originalDeployment else { return false }
      guard self.originalLabel == object.originalLabel else { return false }
      guard self.packageHash == object.packageHash else { return false }
      return true
    }

    public static func == (lhs: LegacyDeploymentHistory, rhs: LegacyDeploymentHistory) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
