//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Crash {

    /**
    Available for UWP apps only.

    Gets whether the application has any crashes. Available for UWP apps only.
    */
    public enum CrashesGetAppCrashesInfo {

        public static let service = APIService<Response>(id: "crashes_getAppCrashesInfo", tag: "crash", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/crashes_info", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(ownerName: String, appName: String) {
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CrashesGetAppCrashesInfo.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets whether the application has any crashes. Available for UWP apps only. */
            public class Status200: APIModel {

                public var hasCrashes: Bool

                public var features: Features

                /** Gets whether the application has any crashes. Available for UWP apps only. */
                public class Features: APIModel {

                    /** App supports download of raw crashes */
                    public var crashDownloadRaw: Bool?

                    /** App supports the 'crash free user' metric */
                    public var crashgroupAnalyticsCrashfreeusers: Bool?

                    /** App supports the 'impacted users' metric */
                    public var crashgroupAnalyticsImpactedusers: Bool?

                    /** App supports modification of crashgroup annotation */
                    public var crashgroupModifyAnnotation: Bool?

                    /** App supports modification of crashgroup status */
                    public var crashgroupModifyStatus: Bool?

                    /** App supports search API */
                    public var search: Bool?

                    public init(crashDownloadRaw: Bool? = nil, crashgroupAnalyticsCrashfreeusers: Bool? = nil, crashgroupAnalyticsImpactedusers: Bool? = nil, crashgroupModifyAnnotation: Bool? = nil, crashgroupModifyStatus: Bool? = nil, search: Bool? = nil) {
                        self.crashDownloadRaw = crashDownloadRaw
                        self.crashgroupAnalyticsCrashfreeusers = crashgroupAnalyticsCrashfreeusers
                        self.crashgroupAnalyticsImpactedusers = crashgroupAnalyticsImpactedusers
                        self.crashgroupModifyAnnotation = crashgroupModifyAnnotation
                        self.crashgroupModifyStatus = crashgroupModifyStatus
                        self.search = search
                    }

                    private enum CodingKeys: String, CodingKey {
                        case crashDownloadRaw = "crash_download_raw"
                        case crashgroupAnalyticsCrashfreeusers = "crashgroup_analytics_crashfreeusers"
                        case crashgroupAnalyticsImpactedusers = "crashgroup_analytics_impactedusers"
                        case crashgroupModifyAnnotation = "crashgroup_modify_annotation"
                        case crashgroupModifyStatus = "crashgroup_modify_status"
                        case search
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        crashDownloadRaw = try container.decodeIfPresent(.crashDownloadRaw)
                        crashgroupAnalyticsCrashfreeusers = try container.decodeIfPresent(.crashgroupAnalyticsCrashfreeusers)
                        crashgroupAnalyticsImpactedusers = try container.decodeIfPresent(.crashgroupAnalyticsImpactedusers)
                        crashgroupModifyAnnotation = try container.decodeIfPresent(.crashgroupModifyAnnotation)
                        crashgroupModifyStatus = try container.decodeIfPresent(.crashgroupModifyStatus)
                        search = try container.decodeIfPresent(.search)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encodeIfPresent(crashDownloadRaw, forKey: .crashDownloadRaw)
                        try container.encodeIfPresent(crashgroupAnalyticsCrashfreeusers, forKey: .crashgroupAnalyticsCrashfreeusers)
                        try container.encodeIfPresent(crashgroupAnalyticsImpactedusers, forKey: .crashgroupAnalyticsImpactedusers)
                        try container.encodeIfPresent(crashgroupModifyAnnotation, forKey: .crashgroupModifyAnnotation)
                        try container.encodeIfPresent(crashgroupModifyStatus, forKey: .crashgroupModifyStatus)
                        try container.encodeIfPresent(search, forKey: .search)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Features else { return false }
                      guard self.crashDownloadRaw == object.crashDownloadRaw else { return false }
                      guard self.crashgroupAnalyticsCrashfreeusers == object.crashgroupAnalyticsCrashfreeusers else { return false }
                      guard self.crashgroupAnalyticsImpactedusers == object.crashgroupAnalyticsImpactedusers else { return false }
                      guard self.crashgroupModifyAnnotation == object.crashgroupModifyAnnotation else { return false }
                      guard self.crashgroupModifyStatus == object.crashgroupModifyStatus else { return false }
                      guard self.search == object.search else { return false }
                      return true
                    }

                    public static func == (lhs: Features, rhs: Features) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(hasCrashes: Bool, features: Features) {
                    self.hasCrashes = hasCrashes
                    self.features = features
                }

                private enum CodingKeys: String, CodingKey {
                    case hasCrashes = "has_crashes"
                    case features
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    hasCrashes = try container.decode(.hasCrashes)
                    features = try container.decode(.features)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(hasCrashes, forKey: .hasCrashes)
                    try container.encode(features, forKey: .features)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.hasCrashes == object.hasCrashes else { return false }
                  guard self.features == object.features else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Gets whether the application has any crashes. Available for UWP apps only. */
            public class DefaultResponse: APIModel {

                public var message: String

                public init(message: String) {
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** Success */
            case status200(Status200)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: DefaultResponse? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, DefaultResponse> {
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
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
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