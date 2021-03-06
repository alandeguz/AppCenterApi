//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Details of an uploaded release */
public class PrivateReleaseDetailsResponse: APIModel {

    /** The destination type.<br>
    <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
    <b>store</b>: The release distributed to external stores and distribution_stores details will be returned. <br>
     */
    public enum DestinationType: String, Codable {
        case group = "group"
        case store = "store"
        case tester = "tester"

        public static let cases: [DestinationType] = [
          .group,
          .store,
          .tester,
        ]
    }

    /** The release's origin */
    public enum Origin: String, Codable {
        case hockeyapp = "hockeyapp"
        case appcenter = "appcenter"

        public static let cases: [Origin] = [
          .hockeyapp,
          .appcenter,
        ]
    }

    /** The type of the provisioning profile for the requested app version. */
    public enum ProvisioningProfileType: String, Codable {
        case adhoc = "adhoc"
        case enterprise = "enterprise"
        case other = "other"

        public static let cases: [ProvisioningProfileType] = [
          .adhoc,
          .enterprise,
          .other,
        ]
    }

    /** OBSOLETE. Will be removed in next version. The availability concept is now replaced with distributed. Any 'available' release will be associated with the default distribution group of an app.</br>
    The release state.<br>
    <b>available</b>: The uploaded release has been distributed.<br>
    <b>unavailable</b>: The uploaded release is not visible to the user. <br>
     */
    public enum Status: String, Codable {
        case available = "available"
        case unavailable = "unavailable"

        public static let cases: [Status] = [
          .available,
          .unavailable,
        ]
    }

    /** The release's minimum required Android API level. */
    public var androidMinApiLevel: String?

    /** The app's display name. */
    public var appDisplayName: String?

    /** A URL to the app's icon. */
    public var appIconURL: String?

    /** The app's name (extracted from the uploaded release). */
    public var appName: String?

    /** The identifier of the apps bundle. */
    public var bundleIdentifier: String?

    /** The destination type.<br>
<b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
<b>store</b>: The release distributed to external stores and distribution_stores details will be returned. <br>
 */
    public var destinationType: DestinationType?

    /** The release's device family. */
    public var deviceFamily: String?

    /** the destination where release is distributed */
    public var distributionGroupId: String?

    /** The URL that hosts the binary for this release. */
    public var downloadURL: String?

    /** MD5 checksum of the release binary. */
    public var fingerprint: String?

    /** ID identifying this unique release. */
    public var id: Int?

    /** The href required to install a release on a mobile device. On iOS devices will be prefixed with `itms-services://?action=download-manifest&url=` */
    public var installURL: String?

    /** This value determines if a release is external or not. */
    public var isExternalBuild: Bool?

    /** A flag that determines whether the release's provisioning profile is still extracted or not. */
    public var isProvisioningProfileSyncing: Bool?

    /** The release's minimum required operating system. */
    public var minOs: String?

    /** The release's origin */
    public var origin: Origin?

    /** The release's provisioning profile name. */
    public var provisioningProfileName: String?

    /** The type of the provisioning profile for the requested app version. */
    public var provisioningProfileType: ProvisioningProfileType?

    /** the publishing status of the distributed release */
    public var publishingStatus: String?

    /** The release's release notes. */
    public var releaseNotes: String?

    /** The release's short version.<br>
For iOS: CFBundleShortVersionString from info.plist.
For Android: android:versionName from AppManifest.xml.
 */
    public var shortVersion: String?

    /** The release's size in bytes. */
    public var size: Int?

    /** OBSOLETE. Will be removed in next version. The availability concept is now replaced with distributed. Any 'available' release will be associated with the default distribution group of an app.</br>
The release state.<br>
<b>available</b>: The uploaded release has been distributed.<br>
<b>unavailable</b>: The uploaded release is not visible to the user. <br>
 */
    public var status: Status?

    /** UTC time in ISO 8601 format of the uploaded time. */
    public var uploadedAt: String?

    /** The release's version.<br>
For iOS: CFBundleVersion from info.plist.
For Android: android:versionCode from AppManifest.xml.
 */
    public var version: String?

    public init(androidMinApiLevel: String? = nil, appDisplayName: String? = nil, appIconURL: String? = nil, appName: String? = nil, bundleIdentifier: String? = nil, destinationType: DestinationType? = nil, deviceFamily: String? = nil, distributionGroupId: String? = nil, downloadURL: String? = nil, fingerprint: String? = nil, id: Int? = nil, installURL: String? = nil, isExternalBuild: Bool? = nil, isProvisioningProfileSyncing: Bool? = nil, minOs: String? = nil, origin: Origin? = nil, provisioningProfileName: String? = nil, provisioningProfileType: ProvisioningProfileType? = nil, publishingStatus: String? = nil, releaseNotes: String? = nil, shortVersion: String? = nil, size: Int? = nil, status: Status? = nil, uploadedAt: String? = nil, version: String? = nil) {
        self.androidMinApiLevel = androidMinApiLevel
        self.appDisplayName = appDisplayName
        self.appIconURL = appIconURL
        self.appName = appName
        self.bundleIdentifier = bundleIdentifier
        self.destinationType = destinationType
        self.deviceFamily = deviceFamily
        self.distributionGroupId = distributionGroupId
        self.downloadURL = downloadURL
        self.fingerprint = fingerprint
        self.id = id
        self.installURL = installURL
        self.isExternalBuild = isExternalBuild
        self.isProvisioningProfileSyncing = isProvisioningProfileSyncing
        self.minOs = minOs
        self.origin = origin
        self.provisioningProfileName = provisioningProfileName
        self.provisioningProfileType = provisioningProfileType
        self.publishingStatus = publishingStatus
        self.releaseNotes = releaseNotes
        self.shortVersion = shortVersion
        self.size = size
        self.status = status
        self.uploadedAt = uploadedAt
        self.version = version
    }

    private enum CodingKeys: String, CodingKey {
        case androidMinApiLevel = "android_min_api_level"
        case appDisplayName = "app_display_name"
        case appIconURL = "app_icon_url"
        case appName = "app_name"
        case bundleIdentifier = "bundle_identifier"
        case destinationType = "destination_type"
        case deviceFamily = "device_family"
        case distributionGroupId = "distribution_group_id"
        case downloadURL = "download_url"
        case fingerprint
        case id
        case installURL = "install_url"
        case isExternalBuild = "is_external_build"
        case isProvisioningProfileSyncing = "is_provisioning_profile_syncing"
        case minOs = "min_os"
        case origin
        case provisioningProfileName = "provisioning_profile_name"
        case provisioningProfileType = "provisioning_profile_type"
        case publishingStatus = "publishing_status"
        case releaseNotes = "release_notes"
        case shortVersion = "short_version"
        case size
        case status
        case uploadedAt = "uploaded_at"
        case version
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        androidMinApiLevel = try container.decodeIfPresent(.androidMinApiLevel)
        appDisplayName = try container.decodeIfPresent(.appDisplayName)
        appIconURL = try container.decodeIfPresent(.appIconURL)
        appName = try container.decodeIfPresent(.appName)
        bundleIdentifier = try container.decodeIfPresent(.bundleIdentifier)
        destinationType = try container.decodeIfPresent(.destinationType)
        deviceFamily = try container.decodeIfPresent(.deviceFamily)
        distributionGroupId = try container.decodeIfPresent(.distributionGroupId)
        downloadURL = try container.decodeIfPresent(.downloadURL)
        fingerprint = try container.decodeIfPresent(.fingerprint)
        id = try container.decodeIfPresent(.id)
        installURL = try container.decodeIfPresent(.installURL)
        isExternalBuild = try container.decodeIfPresent(.isExternalBuild)
        isProvisioningProfileSyncing = try container.decodeIfPresent(.isProvisioningProfileSyncing)
        minOs = try container.decodeIfPresent(.minOs)
        origin = try container.decodeIfPresent(.origin)
        provisioningProfileName = try container.decodeIfPresent(.provisioningProfileName)
        provisioningProfileType = try container.decodeIfPresent(.provisioningProfileType)
        publishingStatus = try container.decodeIfPresent(.publishingStatus)
        releaseNotes = try container.decodeIfPresent(.releaseNotes)
        shortVersion = try container.decodeIfPresent(.shortVersion)
        size = try container.decodeIfPresent(.size)
        status = try container.decodeIfPresent(.status)
        uploadedAt = try container.decodeIfPresent(.uploadedAt)
        version = try container.decodeIfPresent(.version)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(androidMinApiLevel, forKey: .androidMinApiLevel)
        try container.encodeIfPresent(appDisplayName, forKey: .appDisplayName)
        try container.encodeIfPresent(appIconURL, forKey: .appIconURL)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
        try container.encodeIfPresent(destinationType, forKey: .destinationType)
        try container.encodeIfPresent(deviceFamily, forKey: .deviceFamily)
        try container.encodeIfPresent(distributionGroupId, forKey: .distributionGroupId)
        try container.encodeIfPresent(downloadURL, forKey: .downloadURL)
        try container.encodeIfPresent(fingerprint, forKey: .fingerprint)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(installURL, forKey: .installURL)
        try container.encodeIfPresent(isExternalBuild, forKey: .isExternalBuild)
        try container.encodeIfPresent(isProvisioningProfileSyncing, forKey: .isProvisioningProfileSyncing)
        try container.encodeIfPresent(minOs, forKey: .minOs)
        try container.encodeIfPresent(origin, forKey: .origin)
        try container.encodeIfPresent(provisioningProfileName, forKey: .provisioningProfileName)
        try container.encodeIfPresent(provisioningProfileType, forKey: .provisioningProfileType)
        try container.encodeIfPresent(publishingStatus, forKey: .publishingStatus)
        try container.encodeIfPresent(releaseNotes, forKey: .releaseNotes)
        try container.encodeIfPresent(shortVersion, forKey: .shortVersion)
        try container.encodeIfPresent(size, forKey: .size)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(uploadedAt, forKey: .uploadedAt)
        try container.encodeIfPresent(version, forKey: .version)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PrivateReleaseDetailsResponse else { return false }
      guard self.androidMinApiLevel == object.androidMinApiLevel else { return false }
      guard self.appDisplayName == object.appDisplayName else { return false }
      guard self.appIconURL == object.appIconURL else { return false }
      guard self.appName == object.appName else { return false }
      guard self.bundleIdentifier == object.bundleIdentifier else { return false }
      guard self.destinationType == object.destinationType else { return false }
      guard self.deviceFamily == object.deviceFamily else { return false }
      guard self.distributionGroupId == object.distributionGroupId else { return false }
      guard self.downloadURL == object.downloadURL else { return false }
      guard self.fingerprint == object.fingerprint else { return false }
      guard self.id == object.id else { return false }
      guard self.installURL == object.installURL else { return false }
      guard self.isExternalBuild == object.isExternalBuild else { return false }
      guard self.isProvisioningProfileSyncing == object.isProvisioningProfileSyncing else { return false }
      guard self.minOs == object.minOs else { return false }
      guard self.origin == object.origin else { return false }
      guard self.provisioningProfileName == object.provisioningProfileName else { return false }
      guard self.provisioningProfileType == object.provisioningProfileType else { return false }
      guard self.publishingStatus == object.publishingStatus else { return false }
      guard self.releaseNotes == object.releaseNotes else { return false }
      guard self.shortVersion == object.shortVersion else { return false }
      guard self.size == object.size else { return false }
      guard self.status == object.status else { return false }
      guard self.uploadedAt == object.uploadedAt else { return false }
      guard self.version == object.version else { return false }
      return true
    }

    public static func == (lhs: PrivateReleaseDetailsResponse, rhs: PrivateReleaseDetailsResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
