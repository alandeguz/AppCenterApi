//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Build configuration when Xcode is part of the build steps */
public class XcodeBranchConfigurationProperties: APIModel {

    public var appExtensionProvisioningProfileFiles: [AppExtensionProvisioningProfileFiles]?

    /** The build configuration of the target to archive */
    public var archiveConfiguration: String?

    public var automaticSigning: Bool?

    /** Path to Carthage file, if present */
    public var cartfilePath: String?

    public var certificateEncoded: String?

    public var certificateFileId: String?

    public var certificateFilename: String?

    public var certificatePassword: String?

    public var certificateUploadId: String?

    /** Setting this to true forces the build to use Xcode legacy build system. Otherwise, the setting from workspace settings is used.
By default new build system is used if workspace setting is not committed to the repository. Only used for iOS React Native app, with Xcode 10.
 */
    public var forceLegacyBuildSystem: Bool?

    /** Path to CococaPods file, if present */
    public var podfilePath: String?

    /** Xcode project/workspace path */
    public var projectOrWorkspacePath: String?

    public var provisioningProfileEncoded: String?

    public var provisioningProfileFileId: String?

    public var provisioningProfileFilename: String?

    public var provisioningProfileUploadId: String?

    public var scheme: String?

    /** The target id of the selected scheme to archive */
    public var targetToArchive: String?

    public var teamId: String?

    /** The selected pbxproject hash to the repositroy */
    public var xcodeProjectSha: String?

    /** Xcode version used to build. Available versions can be found in "/xcode_versions" API. Default is latest stable version, at the time when the configuration is set. */
    public var xcodeVersion: String?

    public init(appExtensionProvisioningProfileFiles: [AppExtensionProvisioningProfileFiles]? = nil, archiveConfiguration: String? = nil, automaticSigning: Bool? = nil, cartfilePath: String? = nil, certificateEncoded: String? = nil, certificateFileId: String? = nil, certificateFilename: String? = nil, certificatePassword: String? = nil, certificateUploadId: String? = nil, forceLegacyBuildSystem: Bool? = nil, podfilePath: String? = nil, projectOrWorkspacePath: String? = nil, provisioningProfileEncoded: String? = nil, provisioningProfileFileId: String? = nil, provisioningProfileFilename: String? = nil, provisioningProfileUploadId: String? = nil, scheme: String? = nil, targetToArchive: String? = nil, teamId: String? = nil, xcodeProjectSha: String? = nil, xcodeVersion: String? = nil) {
        self.appExtensionProvisioningProfileFiles = appExtensionProvisioningProfileFiles
        self.archiveConfiguration = archiveConfiguration
        self.automaticSigning = automaticSigning
        self.cartfilePath = cartfilePath
        self.certificateEncoded = certificateEncoded
        self.certificateFileId = certificateFileId
        self.certificateFilename = certificateFilename
        self.certificatePassword = certificatePassword
        self.certificateUploadId = certificateUploadId
        self.forceLegacyBuildSystem = forceLegacyBuildSystem
        self.podfilePath = podfilePath
        self.projectOrWorkspacePath = projectOrWorkspacePath
        self.provisioningProfileEncoded = provisioningProfileEncoded
        self.provisioningProfileFileId = provisioningProfileFileId
        self.provisioningProfileFilename = provisioningProfileFilename
        self.provisioningProfileUploadId = provisioningProfileUploadId
        self.scheme = scheme
        self.targetToArchive = targetToArchive
        self.teamId = teamId
        self.xcodeProjectSha = xcodeProjectSha
        self.xcodeVersion = xcodeVersion
    }

    private enum CodingKeys: String, CodingKey {
        case appExtensionProvisioningProfileFiles
        case archiveConfiguration
        case automaticSigning
        case cartfilePath
        case certificateEncoded
        case certificateFileId
        case certificateFilename
        case certificatePassword
        case certificateUploadId
        case forceLegacyBuildSystem
        case podfilePath
        case projectOrWorkspacePath
        case provisioningProfileEncoded
        case provisioningProfileFileId
        case provisioningProfileFilename
        case provisioningProfileUploadId
        case scheme
        case targetToArchive
        case teamId
        case xcodeProjectSha
        case xcodeVersion
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        appExtensionProvisioningProfileFiles = try container.decodeArrayIfPresent(.appExtensionProvisioningProfileFiles)
        archiveConfiguration = try container.decodeIfPresent(.archiveConfiguration)
        automaticSigning = try container.decodeIfPresent(.automaticSigning)
        cartfilePath = try container.decodeIfPresent(.cartfilePath)
        certificateEncoded = try container.decodeIfPresent(.certificateEncoded)
        certificateFileId = try container.decodeIfPresent(.certificateFileId)
        certificateFilename = try container.decodeIfPresent(.certificateFilename)
        certificatePassword = try container.decodeIfPresent(.certificatePassword)
        certificateUploadId = try container.decodeIfPresent(.certificateUploadId)
        forceLegacyBuildSystem = try container.decodeIfPresent(.forceLegacyBuildSystem)
        podfilePath = try container.decodeIfPresent(.podfilePath)
        projectOrWorkspacePath = try container.decodeIfPresent(.projectOrWorkspacePath)
        provisioningProfileEncoded = try container.decodeIfPresent(.provisioningProfileEncoded)
        provisioningProfileFileId = try container.decodeIfPresent(.provisioningProfileFileId)
        provisioningProfileFilename = try container.decodeIfPresent(.provisioningProfileFilename)
        provisioningProfileUploadId = try container.decodeIfPresent(.provisioningProfileUploadId)
        scheme = try container.decodeIfPresent(.scheme)
        targetToArchive = try container.decodeIfPresent(.targetToArchive)
        teamId = try container.decodeIfPresent(.teamId)
        xcodeProjectSha = try container.decodeIfPresent(.xcodeProjectSha)
        xcodeVersion = try container.decodeIfPresent(.xcodeVersion)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(appExtensionProvisioningProfileFiles, forKey: .appExtensionProvisioningProfileFiles)
        try container.encodeIfPresent(archiveConfiguration, forKey: .archiveConfiguration)
        try container.encodeIfPresent(automaticSigning, forKey: .automaticSigning)
        try container.encodeIfPresent(cartfilePath, forKey: .cartfilePath)
        try container.encodeIfPresent(certificateEncoded, forKey: .certificateEncoded)
        try container.encodeIfPresent(certificateFileId, forKey: .certificateFileId)
        try container.encodeIfPresent(certificateFilename, forKey: .certificateFilename)
        try container.encodeIfPresent(certificatePassword, forKey: .certificatePassword)
        try container.encodeIfPresent(certificateUploadId, forKey: .certificateUploadId)
        try container.encodeIfPresent(forceLegacyBuildSystem, forKey: .forceLegacyBuildSystem)
        try container.encodeIfPresent(podfilePath, forKey: .podfilePath)
        try container.encodeIfPresent(projectOrWorkspacePath, forKey: .projectOrWorkspacePath)
        try container.encodeIfPresent(provisioningProfileEncoded, forKey: .provisioningProfileEncoded)
        try container.encodeIfPresent(provisioningProfileFileId, forKey: .provisioningProfileFileId)
        try container.encodeIfPresent(provisioningProfileFilename, forKey: .provisioningProfileFilename)
        try container.encodeIfPresent(provisioningProfileUploadId, forKey: .provisioningProfileUploadId)
        try container.encodeIfPresent(scheme, forKey: .scheme)
        try container.encodeIfPresent(targetToArchive, forKey: .targetToArchive)
        try container.encodeIfPresent(teamId, forKey: .teamId)
        try container.encodeIfPresent(xcodeProjectSha, forKey: .xcodeProjectSha)
        try container.encodeIfPresent(xcodeVersion, forKey: .xcodeVersion)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? XcodeBranchConfigurationProperties else { return false }
      guard self.appExtensionProvisioningProfileFiles == object.appExtensionProvisioningProfileFiles else { return false }
      guard self.archiveConfiguration == object.archiveConfiguration else { return false }
      guard self.automaticSigning == object.automaticSigning else { return false }
      guard self.cartfilePath == object.cartfilePath else { return false }
      guard self.certificateEncoded == object.certificateEncoded else { return false }
      guard self.certificateFileId == object.certificateFileId else { return false }
      guard self.certificateFilename == object.certificateFilename else { return false }
      guard self.certificatePassword == object.certificatePassword else { return false }
      guard self.certificateUploadId == object.certificateUploadId else { return false }
      guard self.forceLegacyBuildSystem == object.forceLegacyBuildSystem else { return false }
      guard self.podfilePath == object.podfilePath else { return false }
      guard self.projectOrWorkspacePath == object.projectOrWorkspacePath else { return false }
      guard self.provisioningProfileEncoded == object.provisioningProfileEncoded else { return false }
      guard self.provisioningProfileFileId == object.provisioningProfileFileId else { return false }
      guard self.provisioningProfileFilename == object.provisioningProfileFilename else { return false }
      guard self.provisioningProfileUploadId == object.provisioningProfileUploadId else { return false }
      guard self.scheme == object.scheme else { return false }
      guard self.targetToArchive == object.targetToArchive else { return false }
      guard self.teamId == object.teamId else { return false }
      guard self.xcodeProjectSha == object.xcodeProjectSha else { return false }
      guard self.xcodeVersion == object.xcodeVersion else { return false }
      return true
    }

    public static func == (lhs: XcodeBranchConfigurationProperties, rhs: XcodeBranchConfigurationProperties) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
