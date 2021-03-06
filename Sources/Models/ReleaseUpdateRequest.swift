//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A request containing information for updating a release. */
public class ReleaseUpdateRequest: APIModel {

    /** Contains metadata about the build that produced the release being uploaded */
    public var build: Build?

    /** OBSOLETE. Will be removed in future releases - use destinations instead. Id of a destination. The release will be associated with this destination. If the destination doesn't exist a 400 is returned. If both destination name and id are passed, the id is taking precedence.
 */
    public var destinationId: String?

    /** OBSOLETE. Will be removed in future releases - use destinations instead. Name of a destination. The release will be associated with this destination. If the destination doesn't exist a 400 is returned. If both distribution group name and id are passed, the id is taking precedence.
 */
    public var destinationName: String?

    /** Not used anymore. */
    public var destinationType: String?

    /** Distribute this release under the following list of destinations (store groups or distribution groups). */
    public var destinations: [Destinations]?

    /** OBSOLETE. Will be removed in future releases - use destinations instead. Id of a distribution group. The release will be associated with this distribution group. If the distribution group doesn't exist a 400 is returned. If both distribution group name and id are passed, the id is taking precedence.
 */
    public var distributionGroupId: String?

    /** OBSOLETE. Will be removed in future releases - use destinations instead. Name of a distribution group. The release will be associated with this distribution group. If the distribution group doesn't exist a 400 is returned. If both distribution group name and id are passed, the id is taking precedence.
 */
    public var distributionGroupName: String?

    /** A boolean which determines whether this version should be a mandatory update or not. */
    public var mandatoryUpdate: Bool?

    /** An object containing all the release metadata. */
    public var metadata: Metadata?

    /** A boolean which determines whether to notify testers of a new release, default to true. */
    public var notifyTesters: Bool?

    /** Release notes for this release. */
    public var releaseNotes: String?

    /** A request containing information for updating a release. */
    public class Build: APIModel {

        /** The branch name of the build producing the release */
        public var branchName: String?

        /** The commit hash of the build producing the release */
        public var commitHash: String?

        /** The commit message of the build producing the release */
        public var commitMessage: String?

        public init(branchName: String? = nil, commitHash: String? = nil, commitMessage: String? = nil) {
            self.branchName = branchName
            self.commitHash = commitHash
            self.commitMessage = commitMessage
        }

        private enum CodingKeys: String, CodingKey {
            case branchName = "branch_name"
            case commitHash = "commit_hash"
            case commitMessage = "commit_message"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            branchName = try container.decodeIfPresent(.branchName)
            commitHash = try container.decodeIfPresent(.commitHash)
            commitMessage = try container.decodeIfPresent(.commitMessage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(branchName, forKey: .branchName)
            try container.encodeIfPresent(commitHash, forKey: .commitHash)
            try container.encodeIfPresent(commitMessage, forKey: .commitMessage)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Build else { return false }
          guard self.branchName == object.branchName else { return false }
          guard self.commitHash == object.commitHash else { return false }
          guard self.commitMessage == object.commitMessage else { return false }
          return true
        }

        public static func == (lhs: Build, rhs: Build) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    /** A request containing information for updating a release. */
    public class Metadata: APIModel {

        /** dsa signature of the release for the sparkle feed. */
        public var dsaSignature: String?

        public init(dsaSignature: String? = nil) {
            self.dsaSignature = dsaSignature
        }

        private enum CodingKeys: String, CodingKey {
            case dsaSignature = "dsa_signature"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dsaSignature = try container.decodeIfPresent(.dsaSignature)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(dsaSignature, forKey: .dsaSignature)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Metadata else { return false }
          guard self.dsaSignature == object.dsaSignature else { return false }
          return true
        }

        public static func == (lhs: Metadata, rhs: Metadata) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(build: Build? = nil, destinationId: String? = nil, destinationName: String? = nil, destinationType: String? = nil, destinations: [Destinations]? = nil, distributionGroupId: String? = nil, distributionGroupName: String? = nil, mandatoryUpdate: Bool? = nil, metadata: Metadata? = nil, notifyTesters: Bool? = nil, releaseNotes: String? = nil) {
        self.build = build
        self.destinationId = destinationId
        self.destinationName = destinationName
        self.destinationType = destinationType
        self.destinations = destinations
        self.distributionGroupId = distributionGroupId
        self.distributionGroupName = distributionGroupName
        self.mandatoryUpdate = mandatoryUpdate
        self.metadata = metadata
        self.notifyTesters = notifyTesters
        self.releaseNotes = releaseNotes
    }

    private enum CodingKeys: String, CodingKey {
        case build
        case destinationId = "destination_id"
        case destinationName = "destination_name"
        case destinationType = "destination_type"
        case destinations
        case distributionGroupId = "distribution_group_id"
        case distributionGroupName = "distribution_group_name"
        case mandatoryUpdate = "mandatory_update"
        case metadata
        case notifyTesters = "notify_testers"
        case releaseNotes = "release_notes"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        build = try container.decodeIfPresent(.build)
        destinationId = try container.decodeIfPresent(.destinationId)
        destinationName = try container.decodeIfPresent(.destinationName)
        destinationType = try container.decodeIfPresent(.destinationType)
        destinations = try container.decodeArrayIfPresent(.destinations)
        distributionGroupId = try container.decodeIfPresent(.distributionGroupId)
        distributionGroupName = try container.decodeIfPresent(.distributionGroupName)
        mandatoryUpdate = try container.decodeIfPresent(.mandatoryUpdate)
        metadata = try container.decodeIfPresent(.metadata)
        notifyTesters = try container.decodeIfPresent(.notifyTesters)
        releaseNotes = try container.decodeIfPresent(.releaseNotes)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(build, forKey: .build)
        try container.encodeIfPresent(destinationId, forKey: .destinationId)
        try container.encodeIfPresent(destinationName, forKey: .destinationName)
        try container.encodeIfPresent(destinationType, forKey: .destinationType)
        try container.encodeIfPresent(destinations, forKey: .destinations)
        try container.encodeIfPresent(distributionGroupId, forKey: .distributionGroupId)
        try container.encodeIfPresent(distributionGroupName, forKey: .distributionGroupName)
        try container.encodeIfPresent(mandatoryUpdate, forKey: .mandatoryUpdate)
        try container.encodeIfPresent(metadata, forKey: .metadata)
        try container.encodeIfPresent(notifyTesters, forKey: .notifyTesters)
        try container.encodeIfPresent(releaseNotes, forKey: .releaseNotes)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ReleaseUpdateRequest else { return false }
      guard self.build == object.build else { return false }
      guard self.destinationId == object.destinationId else { return false }
      guard self.destinationName == object.destinationName else { return false }
      guard self.destinationType == object.destinationType else { return false }
      guard self.destinations == object.destinations else { return false }
      guard self.distributionGroupId == object.distributionGroupId else { return false }
      guard self.distributionGroupName == object.distributionGroupName else { return false }
      guard self.mandatoryUpdate == object.mandatoryUpdate else { return false }
      guard self.metadata == object.metadata else { return false }
      guard self.notifyTesters == object.notifyTesters else { return false }
      guard self.releaseNotes == object.releaseNotes else { return false }
      return true
    }

    public static func == (lhs: ReleaseUpdateRequest, rhs: ReleaseUpdateRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
