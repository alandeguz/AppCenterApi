//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    If 'latest' is not specified then it will return the specified release if it's enabled. If 'latest' is specified, regardless of whether a release hash is provided, the latest enabled release is returned.
    */
    public enum ReleasesGetLatestByHash {

        public static let service = APIService<Response>(id: "releases_getLatestByHash", tag: "distribute", method: "GET", path: "/v0.1/sdk/apps/{app_secret}/releases/{release_hash}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The secret of the target application */
                public var appSecret: String

                /** The hash of the release or 'latest' to get the latest release from all the distribution groups assigned to the current user. */
                public var releaseHash: String

                /** When passing `udid` in the query string, a provisioning check for the given device ID will be done. Will be ignored for non-iOS platforms. */
                public var udid: String?

                public init(appSecret: String, releaseHash: String, udid: String? = nil) {
                    self.appSecret = appSecret
                    self.releaseHash = releaseHash
                    self.udid = udid
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: ReleasesGetLatestByHash.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(appSecret: String, releaseHash: String, udid: String? = nil) {
                let options = Options(appSecret: appSecret, releaseHash: releaseHash, udid: udid)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "appSecret" + "}", with: "\(self.options.appSecret)").replacingOccurrences(of: "{" + "releaseHash" + "}", with: "\(self.options.releaseHash)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let udid = options.udid {
                  params["udid"] = udid
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** If 'latest' is not specified then it will return the specified release if it's enabled. If 'latest' is specified, regardless of whether a release hash is provided, the latest enabled release is returned. */
            public class Status200: APIModel {

                /** OBSOLETE. Will be removed in next version. The destination type.<br>
                <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
                <b>store</b>: The release distributed to external stores and distribution_stores details will be returned.<br>
                <b>tester</b>: The release distributed testers details will be returned.<br>
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

                /** ID identifying this unique release. */
                public var id: Int

                /** The app's name (extracted from the uploaded release). */
                public var appName: String

                /** The app's display name. */
                public var appDisplayName: String

                /** UTC time in ISO 8601 format of the uploaded time. */
                public var uploadedAt: String

                /** The release's version.<br>
            For iOS: CFBundleVersion from info.plist.
            For Android: android:versionCode from AppManifest.xml.
             */
                public var version: String

                /** The release's short version.<br>
            For iOS: CFBundleShortVersionString from info.plist.
            For Android: android:versionName from AppManifest.xml.
             */
                public var shortVersion: String

                /** A URL to the app's icon. */
                public var appIconURL: String

                /** This value determines the whether a release currently is enabled or disabled. */
                public var enabled: Bool

                /** The release's minimum required Android API level. */
                public var androidMinApiLevel: String?

                /** The app's OS. */
                public var appOs: String?

                /** Contains metadata about the build that produced the release being uploaded */
                public var build: Build?

                /** The identifier of the apps bundle. */
                public var bundleIdentifier: String?

                /** In calls that allow passing `udid` in the query string, this value determines if a release can be re-signed. When true, after a re-sign, the tester will be able to install the release from his registered devices. Will not be returned for non-iOS platforms. */
                public var canResign: Bool?

                /** OBSOLETE. Will be removed in next version. The destination type.<br>
            <b>group</b>: The release distributed to internal groups and distribution_groups details will be returned.<br>
            <b>store</b>: The release distributed to external stores and distribution_stores details will be returned.<br>
            <b>tester</b>: The release distributed testers details will be returned.<br>
             */
                public var destinationType: DestinationType?

                /** A list of distribution groups or stores. */
                public var destinations: [UNKNOWN_ALL_OFF]?

                /** The release's device family. */
                public var deviceFamily: String?

                /** OBSOLETE. Will be removed in next version. A list of distribution groups that are associated with this release. */
                public var distributionGroups: [DistributionGroups]?

                /** OBSOLETE. Will be removed in next version. A list of distribution stores that are associated with this release. */
                public var distributionStores: [DistributionStores]?

                /** The URL that hosts the binary for this release. */
                public var downloadURL: String?

                /** MD5 checksum of the release binary. */
                public var fingerprint: String?

                /** The href required to install a release on a mobile device. On iOS devices will be prefixed with `itms-services://?action=download-manifest&url=` */
                public var installURL: String?

                /** This value determines if a release is external or not. */
                public var isExternalBuild: Bool?

                /** A flag that determines whether the release's provisioning profile is still extracted or not. */
                public var isProvisioningProfileSyncing: Bool?

                /** In calls that allow passing `udid` in the query string, this value will hold the provisioning status of that UDID in this release. Will be ignored for non-iOS platforms. */
                public var isUdidProvisioned: Bool?

                /** The release's minimum required operating system. */
                public var minOs: String?

                /** The release's origin */
                public var origin: Origin?

                /** Hashes for the packages. */
                public var packageHashes: [String]?

                /** expiration date of provisioning profile in UTC format. */
                public var provisioningProfileExpiryDate: String?

                /** The release's provisioning profile name. */
                public var provisioningProfileName: String?

                /** The type of the provisioning profile for the requested app version. */
                public var provisioningProfileType: ProvisioningProfileType?

                /** The release's release notes. */
                public var releaseNotes: String?

                /** The release's size in bytes. */
                public var size: Int?

                /** Status of the release. */
                public var status: String?

                /** If 'latest' is not specified then it will return the specified release if it's enabled. If 'latest' is specified, regardless of whether a release hash is provided, the latest enabled release is returned. */
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

                public init(id: Int, appName: String, appDisplayName: String, uploadedAt: String, version: String, shortVersion: String, appIconURL: String, enabled: Bool, androidMinApiLevel: String? = nil, appOs: String? = nil, build: Build? = nil, bundleIdentifier: String? = nil, canResign: Bool? = nil, destinationType: DestinationType? = nil, destinations: [UNKNOWN_ALL_OFF]? = nil, deviceFamily: String? = nil, distributionGroups: [DistributionGroups]? = nil, distributionStores: [DistributionStores]? = nil, downloadURL: String? = nil, fingerprint: String? = nil, installURL: String? = nil, isExternalBuild: Bool? = nil, isProvisioningProfileSyncing: Bool? = nil, isUdidProvisioned: Bool? = nil, minOs: String? = nil, origin: Origin? = nil, packageHashes: [String]? = nil, provisioningProfileExpiryDate: String? = nil, provisioningProfileName: String? = nil, provisioningProfileType: ProvisioningProfileType? = nil, releaseNotes: String? = nil, size: Int? = nil, status: String? = nil) {
                    self.id = id
                    self.appName = appName
                    self.appDisplayName = appDisplayName
                    self.uploadedAt = uploadedAt
                    self.version = version
                    self.shortVersion = shortVersion
                    self.appIconURL = appIconURL
                    self.enabled = enabled
                    self.androidMinApiLevel = androidMinApiLevel
                    self.appOs = appOs
                    self.build = build
                    self.bundleIdentifier = bundleIdentifier
                    self.canResign = canResign
                    self.destinationType = destinationType
                    self.destinations = destinations
                    self.deviceFamily = deviceFamily
                    self.distributionGroups = distributionGroups
                    self.distributionStores = distributionStores
                    self.downloadURL = downloadURL
                    self.fingerprint = fingerprint
                    self.installURL = installURL
                    self.isExternalBuild = isExternalBuild
                    self.isProvisioningProfileSyncing = isProvisioningProfileSyncing
                    self.isUdidProvisioned = isUdidProvisioned
                    self.minOs = minOs
                    self.origin = origin
                    self.packageHashes = packageHashes
                    self.provisioningProfileExpiryDate = provisioningProfileExpiryDate
                    self.provisioningProfileName = provisioningProfileName
                    self.provisioningProfileType = provisioningProfileType
                    self.releaseNotes = releaseNotes
                    self.size = size
                    self.status = status
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case appName = "app_name"
                    case appDisplayName = "app_display_name"
                    case uploadedAt = "uploaded_at"
                    case version
                    case shortVersion = "short_version"
                    case appIconURL = "app_icon_url"
                    case enabled
                    case androidMinApiLevel = "android_min_api_level"
                    case appOs = "app_os"
                    case build
                    case bundleIdentifier = "bundle_identifier"
                    case canResign = "can_resign"
                    case destinationType = "destination_type"
                    case destinations
                    case deviceFamily = "device_family"
                    case distributionGroups = "distribution_groups"
                    case distributionStores = "distribution_stores"
                    case downloadURL = "download_url"
                    case fingerprint
                    case installURL = "install_url"
                    case isExternalBuild = "is_external_build"
                    case isProvisioningProfileSyncing = "is_provisioning_profile_syncing"
                    case isUdidProvisioned = "is_udid_provisioned"
                    case minOs = "min_os"
                    case origin
                    case packageHashes = "package_hashes"
                    case provisioningProfileExpiryDate = "provisioning_profile_expiry_date"
                    case provisioningProfileName = "provisioning_profile_name"
                    case provisioningProfileType = "provisioning_profile_type"
                    case releaseNotes = "release_notes"
                    case size
                    case status
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    appName = try container.decode(.appName)
                    appDisplayName = try container.decode(.appDisplayName)
                    uploadedAt = try container.decode(.uploadedAt)
                    version = try container.decode(.version)
                    shortVersion = try container.decode(.shortVersion)
                    appIconURL = try container.decode(.appIconURL)
                    enabled = try container.decode(.enabled)
                    androidMinApiLevel = try container.decodeIfPresent(.androidMinApiLevel)
                    appOs = try container.decodeIfPresent(.appOs)
                    build = try container.decodeIfPresent(.build)
                    bundleIdentifier = try container.decodeIfPresent(.bundleIdentifier)
                    canResign = try container.decodeIfPresent(.canResign)
                    destinationType = try container.decodeIfPresent(.destinationType)
                    destinations = try container.decodeArrayIfPresent(.destinations)
                    deviceFamily = try container.decodeIfPresent(.deviceFamily)
                    distributionGroups = try container.decodeArrayIfPresent(.distributionGroups)
                    distributionStores = try container.decodeArrayIfPresent(.distributionStores)
                    downloadURL = try container.decodeIfPresent(.downloadURL)
                    fingerprint = try container.decodeIfPresent(.fingerprint)
                    installURL = try container.decodeIfPresent(.installURL)
                    isExternalBuild = try container.decodeIfPresent(.isExternalBuild)
                    isProvisioningProfileSyncing = try container.decodeIfPresent(.isProvisioningProfileSyncing)
                    isUdidProvisioned = try container.decodeIfPresent(.isUdidProvisioned)
                    minOs = try container.decodeIfPresent(.minOs)
                    origin = try container.decodeIfPresent(.origin)
                    packageHashes = try container.decodeArrayIfPresent(.packageHashes)
                    provisioningProfileExpiryDate = try container.decodeIfPresent(.provisioningProfileExpiryDate)
                    provisioningProfileName = try container.decodeIfPresent(.provisioningProfileName)
                    provisioningProfileType = try container.decodeIfPresent(.provisioningProfileType)
                    releaseNotes = try container.decodeIfPresent(.releaseNotes)
                    size = try container.decodeIfPresent(.size)
                    status = try container.decodeIfPresent(.status)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(appName, forKey: .appName)
                    try container.encode(appDisplayName, forKey: .appDisplayName)
                    try container.encode(uploadedAt, forKey: .uploadedAt)
                    try container.encode(version, forKey: .version)
                    try container.encode(shortVersion, forKey: .shortVersion)
                    try container.encode(appIconURL, forKey: .appIconURL)
                    try container.encode(enabled, forKey: .enabled)
                    try container.encodeIfPresent(androidMinApiLevel, forKey: .androidMinApiLevel)
                    try container.encodeIfPresent(appOs, forKey: .appOs)
                    try container.encodeIfPresent(build, forKey: .build)
                    try container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
                    try container.encodeIfPresent(canResign, forKey: .canResign)
                    try container.encodeIfPresent(destinationType, forKey: .destinationType)
                    try container.encodeIfPresent(destinations, forKey: .destinations)
                    try container.encodeIfPresent(deviceFamily, forKey: .deviceFamily)
                    try container.encodeIfPresent(distributionGroups, forKey: .distributionGroups)
                    try container.encodeIfPresent(distributionStores, forKey: .distributionStores)
                    try container.encodeIfPresent(downloadURL, forKey: .downloadURL)
                    try container.encodeIfPresent(fingerprint, forKey: .fingerprint)
                    try container.encodeIfPresent(installURL, forKey: .installURL)
                    try container.encodeIfPresent(isExternalBuild, forKey: .isExternalBuild)
                    try container.encodeIfPresent(isProvisioningProfileSyncing, forKey: .isProvisioningProfileSyncing)
                    try container.encodeIfPresent(isUdidProvisioned, forKey: .isUdidProvisioned)
                    try container.encodeIfPresent(minOs, forKey: .minOs)
                    try container.encodeIfPresent(origin, forKey: .origin)
                    try container.encodeIfPresent(packageHashes, forKey: .packageHashes)
                    try container.encodeIfPresent(provisioningProfileExpiryDate, forKey: .provisioningProfileExpiryDate)
                    try container.encodeIfPresent(provisioningProfileName, forKey: .provisioningProfileName)
                    try container.encodeIfPresent(provisioningProfileType, forKey: .provisioningProfileType)
                    try container.encodeIfPresent(releaseNotes, forKey: .releaseNotes)
                    try container.encodeIfPresent(size, forKey: .size)
                    try container.encodeIfPresent(status, forKey: .status)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.id == object.id else { return false }
                  guard self.appName == object.appName else { return false }
                  guard self.appDisplayName == object.appDisplayName else { return false }
                  guard self.uploadedAt == object.uploadedAt else { return false }
                  guard self.version == object.version else { return false }
                  guard self.shortVersion == object.shortVersion else { return false }
                  guard self.appIconURL == object.appIconURL else { return false }
                  guard self.enabled == object.enabled else { return false }
                  guard self.androidMinApiLevel == object.androidMinApiLevel else { return false }
                  guard self.appOs == object.appOs else { return false }
                  guard self.build == object.build else { return false }
                  guard self.bundleIdentifier == object.bundleIdentifier else { return false }
                  guard self.canResign == object.canResign else { return false }
                  guard self.destinationType == object.destinationType else { return false }
                  guard self.destinations == object.destinations else { return false }
                  guard self.deviceFamily == object.deviceFamily else { return false }
                  guard self.distributionGroups == object.distributionGroups else { return false }
                  guard self.distributionStores == object.distributionStores else { return false }
                  guard self.downloadURL == object.downloadURL else { return false }
                  guard self.fingerprint == object.fingerprint else { return false }
                  guard self.installURL == object.installURL else { return false }
                  guard self.isExternalBuild == object.isExternalBuild else { return false }
                  guard self.isProvisioningProfileSyncing == object.isProvisioningProfileSyncing else { return false }
                  guard self.isUdidProvisioned == object.isUdidProvisioned else { return false }
                  guard self.minOs == object.minOs else { return false }
                  guard self.origin == object.origin else { return false }
                  guard self.packageHashes == object.packageHashes else { return false }
                  guard self.provisioningProfileExpiryDate == object.provisioningProfileExpiryDate else { return false }
                  guard self.provisioningProfileName == object.provisioningProfileName else { return false }
                  guard self.provisioningProfileType == object.provisioningProfileType else { return false }
                  guard self.releaseNotes == object.releaseNotes else { return false }
                  guard self.size == object.size else { return false }
                  guard self.status == object.status else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** If 'latest' is not specified then it will return the specified release if it's enabled. If 'latest' is specified, regardless of whether a release hash is provided, the latest enabled release is returned. */
            public class Status404: APIModel {

                /** If 'latest' is not specified then it will return the specified release if it's enabled. If 'latest' is specified, regardless of whether a release hash is provided, the latest enabled release is returned. */
                public enum Code: String, Codable {
                    case badRequest = "BadRequest"
                    case conflict = "Conflict"
                    case notAcceptable = "NotAcceptable"
                    case notFound = "NotFound"
                    case internalServerError = "InternalServerError"
                    case unauthorized = "Unauthorized"
                    case tooManyRequests = "TooManyRequests"

                    public static let cases: [Code] = [
                      .badRequest,
                      .conflict,
                      .notAcceptable,
                      .notFound,
                      .internalServerError,
                      .unauthorized,
                      .tooManyRequests,
                    ]
                }

                public var code: Code

                public var message: String

                public init(code: Code, message: String) {
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** If called with a specific `release_hash` return the app's 'display_name'' and 'buildIdentifier'. If 'release_hash' is 'latest' return the full release details of the latest release that was distributed to the current user (from all the distribution groups). */
            case status200(Status200)

            /** Error codes:
- `not_found` - A release or an app can't be found.
- `no_releases_for_user` - No releases available for that user (will only be returned when `release_hash` is `latest`)
 */
            case status404(Status404)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: Status404? {
                switch self {
                case .status404(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, Status404> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .status404(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
