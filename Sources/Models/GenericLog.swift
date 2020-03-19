//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Generic log. */
public class GenericLog: APIModel {

    /** Log type.
     */
    public enum `Type`: String, Codable {
        case event = "event"
        case page = "page"
        case startSession = "start_session"
        case error = "error"
        case pushInstallation = "push_installation"
        case startService = "start_service"
        case customProperties = "custom_properties"

        public static let cases: [`Type`] = [
          .event,
          .page,
          .startSession,
          .error,
          .pushInstallation,
          .startService,
          .customProperties,
        ]
    }

    /** Log type.
 */
    public var type: `Type`

    /** Log creation timestamp.
 */
    public var timestamp: DateTime

    /** Install ID.
 */
    public var installId: ID

    /** Device characteristics. */
    public var device: Device

    /** Account ID of the authenticated user.
 */
    public var accountId: String?

    /** Auth service provider.
 */
    public var authProvider: String?

    /** Event ID.
 */
    public var eventId: String?

    /** Event name.
 */
    public var eventName: String?

    /** Message ID.
 */
    public var messageId: String?

    /** event specific properties.
 */
    public var properties: [String: String]?

    /** Session ID.
 */
    public var sessionId: ID?

    /** Generic log. */
    public class Device: APIModel {

        /** Name of the SDK. Consists of the name of the SDK and the platform, e.g. "appcenter.ios", "hockeysdk.android".
     */
        public var sdkName: String

        /** Version of the SDK in semver format, e.g. "1.2.0" or "0.12.3-alpha.1".
     */
        public var sdkVersion: String

        /** OS name (example: iOS). The following OS names are standardized (non-exclusive): Android, iOS, macOS, tvOS, Windows.
     */
        public var osName: String

        /** OS version (example: 9.3.0).
     */
        public var osVersion: String

        /** Language code (example: en_US).
     */
        public var locale: String

        /** The offset in minutes from UTC for the device time zone, including daylight savings time.
     */
        public var timeZoneOffset: Int

        /** Application version name, e.g. 1.1.0
     */
        public var appVersion: String

        /** The app's build number, e.g. 42.
     */
        public var appBuild: String

        /** The bundle identifier, package identifier, or namespace, depending on what the individual plattforms use,  .e.g com.microsoft.example.
     */
        public var appNamespace: String?

        /** Carrier country code (for mobile devices).
     */
        public var carrierCode: String?

        /** Carrier country.
     */
        public var carrierCountry: String?

        /** Carrier name (for mobile devices).
     */
        public var carrierName: String?

        /** Identifier of environment that current application release belongs to, deployment key then maps to environment like Production, Staging.
     */
        public var liveUpdateDeploymentKey: String?

        /** Hash of all files (ReactNative or Cordova) deployed to device via LiveUpdate beacon. Helps identify the Release version on device or need to download updates in future.
     */
        public var liveUpdatePackageHash: String?

        /** Label that is used to identify application code 'version' released via Live Update beacon running on device
     */
        public var liveUpdateReleaseLabel: String?

        /** Device model (example: iPad2,3).
     */
        public var model: String?

        /** Device manufacturer (example: HTC).
     */
        public var oemName: String?

        /** API level when applicable like in Android (example: 15).
     */
        public var osApiLevel: Int?

        /** OS build code (example: LMY47X).
     */
        public var osBuild: String?

        /** Screen size of the device in pixels (example: 640x480).
     */
        public var screenSize: String?

        /** Version of the wrapper technology framework (Xamarin runtime version or ReactNative or Cordova etc...). See wrapper_sdk_name to see if this version refers to Xamarin or ReactNative or other.
     */
        public var wrapperRuntimeVersion: String?

        /** Name of the wrapper SDK. Consists of the name of the SDK and the wrapper platform, e.g. "appcenter.xamarin", "hockeysdk.cordova".
     */
        public var wrapperSdkName: String?

        /** Version of the wrapper SDK in semver format. When the SDK is embedding another base SDK (for example Xamarin.Android wraps Android), the Xamarin specific version is populated into this field while sdkVersion refers to the original Android SDK.
     */
        public var wrapperSdkVersion: String?

        public init(sdkName: String, sdkVersion: String, osName: String, osVersion: String, locale: String, timeZoneOffset: Int, appVersion: String, appBuild: String, appNamespace: String? = nil, carrierCode: String? = nil, carrierCountry: String? = nil, carrierName: String? = nil, liveUpdateDeploymentKey: String? = nil, liveUpdatePackageHash: String? = nil, liveUpdateReleaseLabel: String? = nil, model: String? = nil, oemName: String? = nil, osApiLevel: Int? = nil, osBuild: String? = nil, screenSize: String? = nil, wrapperRuntimeVersion: String? = nil, wrapperSdkName: String? = nil, wrapperSdkVersion: String? = nil) {
            self.sdkName = sdkName
            self.sdkVersion = sdkVersion
            self.osName = osName
            self.osVersion = osVersion
            self.locale = locale
            self.timeZoneOffset = timeZoneOffset
            self.appVersion = appVersion
            self.appBuild = appBuild
            self.appNamespace = appNamespace
            self.carrierCode = carrierCode
            self.carrierCountry = carrierCountry
            self.carrierName = carrierName
            self.liveUpdateDeploymentKey = liveUpdateDeploymentKey
            self.liveUpdatePackageHash = liveUpdatePackageHash
            self.liveUpdateReleaseLabel = liveUpdateReleaseLabel
            self.model = model
            self.oemName = oemName
            self.osApiLevel = osApiLevel
            self.osBuild = osBuild
            self.screenSize = screenSize
            self.wrapperRuntimeVersion = wrapperRuntimeVersion
            self.wrapperSdkName = wrapperSdkName
            self.wrapperSdkVersion = wrapperSdkVersion
        }

        private enum CodingKeys: String, CodingKey {
            case sdkName = "sdk_name"
            case sdkVersion = "sdk_version"
            case osName = "os_name"
            case osVersion = "os_version"
            case locale
            case timeZoneOffset = "time_zone_offset"
            case appVersion = "app_version"
            case appBuild = "app_build"
            case appNamespace = "app_namespace"
            case carrierCode = "carrier_code"
            case carrierCountry = "carrier_country"
            case carrierName = "carrier_name"
            case liveUpdateDeploymentKey = "live_update_deployment_key"
            case liveUpdatePackageHash = "live_update_package_hash"
            case liveUpdateReleaseLabel = "live_update_release_label"
            case model
            case oemName = "oem_name"
            case osApiLevel = "os_api_level"
            case osBuild = "os_build"
            case screenSize = "screen_size"
            case wrapperRuntimeVersion = "wrapper_runtime_version"
            case wrapperSdkName = "wrapper_sdk_name"
            case wrapperSdkVersion = "wrapper_sdk_version"
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sdkName = try container.decode(.sdkName)
            sdkVersion = try container.decode(.sdkVersion)
            osName = try container.decode(.osName)
            osVersion = try container.decode(.osVersion)
            locale = try container.decode(.locale)
            timeZoneOffset = try container.decode(.timeZoneOffset)
            appVersion = try container.decode(.appVersion)
            appBuild = try container.decode(.appBuild)
            appNamespace = try container.decodeIfPresent(.appNamespace)
            carrierCode = try container.decodeIfPresent(.carrierCode)
            carrierCountry = try container.decodeIfPresent(.carrierCountry)
            carrierName = try container.decodeIfPresent(.carrierName)
            liveUpdateDeploymentKey = try container.decodeIfPresent(.liveUpdateDeploymentKey)
            liveUpdatePackageHash = try container.decodeIfPresent(.liveUpdatePackageHash)
            liveUpdateReleaseLabel = try container.decodeIfPresent(.liveUpdateReleaseLabel)
            model = try container.decodeIfPresent(.model)
            oemName = try container.decodeIfPresent(.oemName)
            osApiLevel = try container.decodeIfPresent(.osApiLevel)
            osBuild = try container.decodeIfPresent(.osBuild)
            screenSize = try container.decodeIfPresent(.screenSize)
            wrapperRuntimeVersion = try container.decodeIfPresent(.wrapperRuntimeVersion)
            wrapperSdkName = try container.decodeIfPresent(.wrapperSdkName)
            wrapperSdkVersion = try container.decodeIfPresent(.wrapperSdkVersion)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encode(sdkName, forKey: .sdkName)
            try container.encode(sdkVersion, forKey: .sdkVersion)
            try container.encode(osName, forKey: .osName)
            try container.encode(osVersion, forKey: .osVersion)
            try container.encode(locale, forKey: .locale)
            try container.encode(timeZoneOffset, forKey: .timeZoneOffset)
            try container.encode(appVersion, forKey: .appVersion)
            try container.encode(appBuild, forKey: .appBuild)
            try container.encodeIfPresent(appNamespace, forKey: .appNamespace)
            try container.encodeIfPresent(carrierCode, forKey: .carrierCode)
            try container.encodeIfPresent(carrierCountry, forKey: .carrierCountry)
            try container.encodeIfPresent(carrierName, forKey: .carrierName)
            try container.encodeIfPresent(liveUpdateDeploymentKey, forKey: .liveUpdateDeploymentKey)
            try container.encodeIfPresent(liveUpdatePackageHash, forKey: .liveUpdatePackageHash)
            try container.encodeIfPresent(liveUpdateReleaseLabel, forKey: .liveUpdateReleaseLabel)
            try container.encodeIfPresent(model, forKey: .model)
            try container.encodeIfPresent(oemName, forKey: .oemName)
            try container.encodeIfPresent(osApiLevel, forKey: .osApiLevel)
            try container.encodeIfPresent(osBuild, forKey: .osBuild)
            try container.encodeIfPresent(screenSize, forKey: .screenSize)
            try container.encodeIfPresent(wrapperRuntimeVersion, forKey: .wrapperRuntimeVersion)
            try container.encodeIfPresent(wrapperSdkName, forKey: .wrapperSdkName)
            try container.encodeIfPresent(wrapperSdkVersion, forKey: .wrapperSdkVersion)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Device else { return false }
          guard self.sdkName == object.sdkName else { return false }
          guard self.sdkVersion == object.sdkVersion else { return false }
          guard self.osName == object.osName else { return false }
          guard self.osVersion == object.osVersion else { return false }
          guard self.locale == object.locale else { return false }
          guard self.timeZoneOffset == object.timeZoneOffset else { return false }
          guard self.appVersion == object.appVersion else { return false }
          guard self.appBuild == object.appBuild else { return false }
          guard self.appNamespace == object.appNamespace else { return false }
          guard self.carrierCode == object.carrierCode else { return false }
          guard self.carrierCountry == object.carrierCountry else { return false }
          guard self.carrierName == object.carrierName else { return false }
          guard self.liveUpdateDeploymentKey == object.liveUpdateDeploymentKey else { return false }
          guard self.liveUpdatePackageHash == object.liveUpdatePackageHash else { return false }
          guard self.liveUpdateReleaseLabel == object.liveUpdateReleaseLabel else { return false }
          guard self.model == object.model else { return false }
          guard self.oemName == object.oemName else { return false }
          guard self.osApiLevel == object.osApiLevel else { return false }
          guard self.osBuild == object.osBuild else { return false }
          guard self.screenSize == object.screenSize else { return false }
          guard self.wrapperRuntimeVersion == object.wrapperRuntimeVersion else { return false }
          guard self.wrapperSdkName == object.wrapperSdkName else { return false }
          guard self.wrapperSdkVersion == object.wrapperSdkVersion else { return false }
          return true
        }

        public static func == (lhs: Device, rhs: Device) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(type: `Type`, timestamp: DateTime, installId: ID, device: Device, accountId: String? = nil, authProvider: String? = nil, eventId: String? = nil, eventName: String? = nil, messageId: String? = nil, properties: [String: String]? = nil, sessionId: ID? = nil) {
        self.type = type
        self.timestamp = timestamp
        self.installId = installId
        self.device = device
        self.accountId = accountId
        self.authProvider = authProvider
        self.eventId = eventId
        self.eventName = eventName
        self.messageId = messageId
        self.properties = properties
        self.sessionId = sessionId
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case timestamp
        case installId = "install_id"
        case device
        case accountId = "account_id"
        case authProvider = "auth_provider"
        case eventId = "event_id"
        case eventName = "event_name"
        case messageId = "message_id"
        case properties
        case sessionId = "session_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        type = try container.decode(.type)
        timestamp = try container.decode(.timestamp)
        installId = try container.decode(.installId)
        device = try container.decode(.device)
        accountId = try container.decodeIfPresent(.accountId)
        authProvider = try container.decodeIfPresent(.authProvider)
        eventId = try container.decodeIfPresent(.eventId)
        eventName = try container.decodeIfPresent(.eventName)
        messageId = try container.decodeIfPresent(.messageId)
        properties = try container.decodeIfPresent(.properties)
        sessionId = try container.decodeIfPresent(.sessionId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(type, forKey: .type)
        try container.encode(timestamp, forKey: .timestamp)
        try container.encode(installId, forKey: .installId)
        try container.encode(device, forKey: .device)
        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(authProvider, forKey: .authProvider)
        try container.encodeIfPresent(eventId, forKey: .eventId)
        try container.encodeIfPresent(eventName, forKey: .eventName)
        try container.encodeIfPresent(messageId, forKey: .messageId)
        try container.encodeIfPresent(properties, forKey: .properties)
        try container.encodeIfPresent(sessionId, forKey: .sessionId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GenericLog else { return false }
      guard self.type == object.type else { return false }
      guard self.timestamp == object.timestamp else { return false }
      guard self.installId == object.installId else { return false }
      guard self.device == object.device else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.authProvider == object.authProvider else { return false }
      guard self.eventId == object.eventId else { return false }
      guard self.eventName == object.eventName else { return false }
      guard self.messageId == object.messageId else { return false }
      guard self.properties == object.properties else { return false }
      guard self.sessionId == object.sessionId else { return false }
      return true
    }

    public static func == (lhs: GenericLog, rhs: GenericLog) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
