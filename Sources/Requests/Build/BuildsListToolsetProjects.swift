//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Returns the projects in the repository for the branch, for all toolsets
    */
    public enum BuildsListToolsetProjects {

        public static let service = APIService<Response>(id: "builds_listToolsetProjects", tag: "build", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/branches/{branch}/toolset_projects", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        /** The desired OS for the project scan; normally the same as the app OS */
        public enum Os: String, Codable {
            case iOS = "iOS"
            case android = "Android"
            case windows = "Windows"
            case macOS = "macOS"

            public static let cases: [Os] = [
              .iOS,
              .android,
              .windows,
              .macOS,
            ]
        }

        /** The desired platform for the project scan */
        public enum Platform: String, Codable {
            case objectiveCSwift = "Objective-C-Swift"
            case reactNative = "React-Native"
            case xamarin = "Xamarin"
            case java = "Java"
            case uwp = "UWP"

            public static let cases: [Platform] = [
              .objectiveCSwift,
              .reactNative,
              .xamarin,
              .java,
              .uwp,
            ]
        }

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The branch name */
                public var branch: String

                /** The desired OS for the project scan; normally the same as the app OS */
                public var os: Os

                /** The desired platform for the project scan */
                public var platform: Platform

                /** The depth of the repository to search for project files */
                public var maxSearchDepth: Int?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(branch: String, os: Os, platform: Platform, maxSearchDepth: Int? = nil, ownerName: String, appName: String) {
                    self.branch = branch
                    self.os = os
                    self.platform = platform
                    self.maxSearchDepth = maxSearchDepth
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: BuildsListToolsetProjects.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(branch: String, os: Os, platform: Platform, maxSearchDepth: Int? = nil, ownerName: String, appName: String) {
                let options = Options(branch: branch, os: os, platform: platform, maxSearchDepth: maxSearchDepth, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "branch" + "}", with: "\(self.options.branch)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                params["os"] = options.os.encode()
                params["platform"] = options.platform.encode()
                if let maxSearchDepth = options.maxSearchDepth {
                  params["maxSearchDepth"] = maxSearchDepth
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Returns the projects in the repository for the branch, for all toolsets */
            public class Status200: APIModel {

                public var android: Android?

                /** A collection of detected pre/post buildscripts for current platform toolset */
                public var buildscripts: UNKNOWN_ANY?

                /** The commit hash of the analyzed commit */
                public var commit: String?

                public var javascript: Javascript?

                public var testcloud: Testcloud?

                public var uwp: Uwp?

                public var xamarin: Xamarin?

                public var xcode: Xcode?

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Android: APIModel {

                    /** Android Gradle modules */
                    public var androidModules: [AndroidModules]

                    /** The path of the Gradle wrapper */
                    public var gradleWrapperPath: String?

                    public init(androidModules: [AndroidModules], gradleWrapperPath: String? = nil) {
                        self.androidModules = androidModules
                        self.gradleWrapperPath = gradleWrapperPath
                    }

                    private enum CodingKeys: String, CodingKey {
                        case androidModules
                        case gradleWrapperPath
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        androidModules = try container.decodeArray(.androidModules)
                        gradleWrapperPath = try container.decodeIfPresent(.gradleWrapperPath)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(androidModules, forKey: .androidModules)
                        try container.encodeIfPresent(gradleWrapperPath, forKey: .gradleWrapperPath)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Android else { return false }
                      guard self.androidModules == object.androidModules else { return false }
                      guard self.gradleWrapperPath == object.gradleWrapperPath else { return false }
                      return true
                    }

                    public static func == (lhs: Android, rhs: Android) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Javascript: APIModel {

                    /** Paths for detected package.json files */
                    public var packageJsonPaths: [String]

                    /** The React Native solutions detected */
                    public var javascriptSolutions: [JavascriptSolutions]?

                    public init(packageJsonPaths: [String], javascriptSolutions: [JavascriptSolutions]? = nil) {
                        self.packageJsonPaths = packageJsonPaths
                        self.javascriptSolutions = javascriptSolutions
                    }

                    private enum CodingKeys: String, CodingKey {
                        case packageJsonPaths
                        case javascriptSolutions
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        packageJsonPaths = try container.decodeArray(.packageJsonPaths)
                        javascriptSolutions = try container.decodeArrayIfPresent(.javascriptSolutions)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(packageJsonPaths, forKey: .packageJsonPaths)
                        try container.encodeIfPresent(javascriptSolutions, forKey: .javascriptSolutions)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Javascript else { return false }
                      guard self.packageJsonPaths == object.packageJsonPaths else { return false }
                      guard self.javascriptSolutions == object.javascriptSolutions else { return false }
                      return true
                    }

                    public static func == (lhs: Javascript, rhs: Javascript) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Testcloud: APIModel {

                    /** The TestCloud projects detected */
                    public var projects: [Projects]

                    public init(projects: [Projects]) {
                        self.projects = projects
                    }

                    private enum CodingKeys: String, CodingKey {
                        case projects
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        projects = try container.decodeArray(.projects)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(projects, forKey: .projects)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Testcloud else { return false }
                      guard self.projects == object.projects else { return false }
                      return true
                    }

                    public static func == (lhs: Testcloud, rhs: Testcloud) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Uwp: APIModel {

                    /** The UWP solutions detected */
                    public var uwpSolutions: [UwpSolutions]

                    public init(uwpSolutions: [UwpSolutions]) {
                        self.uwpSolutions = uwpSolutions
                    }

                    private enum CodingKeys: String, CodingKey {
                        case uwpSolutions
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        uwpSolutions = try container.decodeArray(.uwpSolutions)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(uwpSolutions, forKey: .uwpSolutions)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Uwp else { return false }
                      guard self.uwpSolutions == object.uwpSolutions else { return false }
                      return true
                    }

                    public static func == (lhs: Uwp, rhs: Uwp) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Xamarin: APIModel {

                    /** Xamarin solutions for the toolset */
                    public var xamarinSolutions: [XamarinSolutions]

                    public init(xamarinSolutions: [XamarinSolutions]) {
                        self.xamarinSolutions = xamarinSolutions
                    }

                    private enum CodingKeys: String, CodingKey {
                        case xamarinSolutions
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        xamarinSolutions = try container.decodeArray(.xamarinSolutions)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(xamarinSolutions, forKey: .xamarinSolutions)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Xamarin else { return false }
                      guard self.xamarinSolutions == object.xamarinSolutions else { return false }
                      return true
                    }

                    public static func == (lhs: Xamarin, rhs: Xamarin) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                /** Returns the projects in the repository for the branch, for all toolsets */
                public class Xcode: APIModel {

                    /** The Xcode scheme containers */
                    public var xcodeSchemeContainers: [XcodeSchemeContainers]

                    public init(xcodeSchemeContainers: [XcodeSchemeContainers]) {
                        self.xcodeSchemeContainers = xcodeSchemeContainers
                    }

                    private enum CodingKeys: String, CodingKey {
                        case xcodeSchemeContainers
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        xcodeSchemeContainers = try container.decodeArray(.xcodeSchemeContainers)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(xcodeSchemeContainers, forKey: .xcodeSchemeContainers)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Xcode else { return false }
                      guard self.xcodeSchemeContainers == object.xcodeSchemeContainers else { return false }
                      return true
                    }

                    public static func == (lhs: Xcode, rhs: Xcode) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(android: Android? = nil, buildscripts: UNKNOWN_ANY? = nil, commit: String? = nil, javascript: Javascript? = nil, testcloud: Testcloud? = nil, uwp: Uwp? = nil, xamarin: Xamarin? = nil, xcode: Xcode? = nil) {
                    self.android = android
                    self.buildscripts = buildscripts
                    self.commit = commit
                    self.javascript = javascript
                    self.testcloud = testcloud
                    self.uwp = uwp
                    self.xamarin = xamarin
                    self.xcode = xcode
                }

                private enum CodingKeys: String, CodingKey {
                    case android
                    case buildscripts
                    case commit
                    case javascript
                    case testcloud
                    case uwp
                    case xamarin
                    case xcode
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    android = try container.decodeIfPresent(.android)
                    buildscripts = try container.decodeIfPresent(.buildscripts)
                    commit = try container.decodeIfPresent(.commit)
                    javascript = try container.decodeIfPresent(.javascript)
                    testcloud = try container.decodeIfPresent(.testcloud)
                    uwp = try container.decodeIfPresent(.uwp)
                    xamarin = try container.decodeIfPresent(.xamarin)
                    xcode = try container.decodeIfPresent(.xcode)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(android, forKey: .android)
                    try container.encodeIfPresent(buildscripts, forKey: .buildscripts)
                    try container.encodeIfPresent(commit, forKey: .commit)
                    try container.encodeIfPresent(javascript, forKey: .javascript)
                    try container.encodeIfPresent(testcloud, forKey: .testcloud)
                    try container.encodeIfPresent(uwp, forKey: .uwp)
                    try container.encodeIfPresent(xamarin, forKey: .xamarin)
                    try container.encodeIfPresent(xcode, forKey: .xcode)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.android == object.android else { return false }
                  guard self.buildscripts == object.buildscripts else { return false }
                  guard self.commit == object.commit else { return false }
                  guard self.javascript == object.javascript else { return false }
                  guard self.testcloud == object.testcloud else { return false }
                  guard self.uwp == object.uwp else { return false }
                  guard self.xamarin == object.xamarin else { return false }
                  guard self.xcode == object.xcode else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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
