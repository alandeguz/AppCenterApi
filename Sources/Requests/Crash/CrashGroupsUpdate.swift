//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Crash {

    /**
    Available for UWP apps only.

    Updates a group. Available for UWP apps only.
    */
    public enum CrashGroupsUpdate {

        public static let service = APIService<Response>(id: "crashGroups_update", tag: "crash", method: "PATCH", path: "/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Updates a group. Available for UWP apps only. */
            public class Group: APIModel {

                public var annotation: String?

                public var status: UNKNOWN_ANY?

                public init(annotation: String? = nil, status: UNKNOWN_ANY? = nil) {
                    self.annotation = annotation
                    self.status = status
                }

                private enum CodingKeys: String, CodingKey {
                    case annotation
                    case status
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    annotation = try container.decodeIfPresent(.annotation)
                    status = try container.decodeIfPresent(.status)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(annotation, forKey: .annotation)
                    try container.encodeIfPresent(status, forKey: .status)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Group else { return false }
                  guard self.annotation == object.annotation else { return false }
                  guard self.status == object.status else { return false }
                  return true
                }

                public static func == (lhs: Group, rhs: Group) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** id of a specific group */
                public var crashGroupId: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(crashGroupId: String, ownerName: String, appName: String) {
                    self.crashGroupId = crashGroupId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var group: Group

            public init(group: Group, options: Options) {
                self.group = group
                self.options = options
                super.init(service: CrashGroupsUpdate.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(group)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(crashGroupId: String, group: Group, ownerName: String, appName: String) {
                let options = Options(crashGroupId: crashGroupId, ownerName: ownerName, appName: appName)
                self.init(group: group, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "crashGroupId" + "}", with: "\(self.options.crashGroupId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Updates a group. Available for UWP apps only. */
            public class Status200: APIModel {

                public var crashGroupId: String

                public var newCrashGroupId: String

                public var displayId: String

                public var appVersion: String

                public var build: String

                public var status: GroupStatus

                public var count: Int

                public var firstOccurrence: DateTime

                public var lastOccurrence: DateTime

                public var crashReason: String

                /** Crash or handled exception */
                public var fatal: Bool

                public var annotation: String

                public var exception: String?

                public var impactedUsers: Int?

                /** frame belonging to the reason of the crash */
                public var reasonFrame: ReasonFrame?

                /** Updates a group. Available for UWP apps only. */
                public class ReasonFrame: APIModel {

                    /** programming language of the frame */
                    public enum Language: String, Codable {
                        case javaScript = "JavaScript"
                        case cSharp = "CSharp"
                        case objectiveC = "Objective-C"
                        case objectiveCpp = "Objective-Cpp"
                        case cpp = "Cpp"
                        case c = "C"
                        case swift = "Swift"
                        case java = "Java"
                        case unknown = "Unknown"

                        public static let cases: [Language] = [
                          .javaScript,
                          .cSharp,
                          .objectiveC,
                          .objectiveCpp,
                          .cpp,
                          .c,
                          .swift,
                          .java,
                          .unknown,
                        ]
                    }

                    /** this line isn't from any framework */
                    public var appCode: Bool?

                    /** is a class method */
                    public var classMethod: Bool?

                    /** name of the class */
                    public var className: String?

                    /** Formatted frame string */
                    public var codeFormatted: String?

                    /** Unformatted Frame string */
                    public var codeRaw: String?

                    /** Exception type. */
                    public var exceptionType: String?

                    /** name of the file */
                    public var file: String?

                    /** Name of the framework */
                    public var frameworkName: String?

                    /** programming language of the frame */
                    public var language: Language?

                    /** line number */
                    public var line: Int?

                    /** name of the method */
                    public var method: String?

                    /** parameters of the frames method */
                    public var methodParams: String?

                    /** OS exception type. (aka. SIGNAL) */
                    public var osExceptionType: String?

                    public init(appCode: Bool? = nil, classMethod: Bool? = nil, className: String? = nil, codeFormatted: String? = nil, codeRaw: String? = nil, exceptionType: String? = nil, file: String? = nil, frameworkName: String? = nil, language: Language? = nil, line: Int? = nil, method: String? = nil, methodParams: String? = nil, osExceptionType: String? = nil) {
                        self.appCode = appCode
                        self.classMethod = classMethod
                        self.className = className
                        self.codeFormatted = codeFormatted
                        self.codeRaw = codeRaw
                        self.exceptionType = exceptionType
                        self.file = file
                        self.frameworkName = frameworkName
                        self.language = language
                        self.line = line
                        self.method = method
                        self.methodParams = methodParams
                        self.osExceptionType = osExceptionType
                    }

                    private enum CodingKeys: String, CodingKey {
                        case appCode = "app_code"
                        case classMethod = "class_method"
                        case className = "class_name"
                        case codeFormatted = "code_formatted"
                        case codeRaw = "code_raw"
                        case exceptionType = "exception_type"
                        case file
                        case frameworkName = "framework_name"
                        case language
                        case line
                        case method
                        case methodParams = "method_params"
                        case osExceptionType = "os_exception_type"
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        appCode = try container.decodeIfPresent(.appCode)
                        classMethod = try container.decodeIfPresent(.classMethod)
                        className = try container.decodeIfPresent(.className)
                        codeFormatted = try container.decodeIfPresent(.codeFormatted)
                        codeRaw = try container.decodeIfPresent(.codeRaw)
                        exceptionType = try container.decodeIfPresent(.exceptionType)
                        file = try container.decodeIfPresent(.file)
                        frameworkName = try container.decodeIfPresent(.frameworkName)
                        language = try container.decodeIfPresent(.language)
                        line = try container.decodeIfPresent(.line)
                        method = try container.decodeIfPresent(.method)
                        methodParams = try container.decodeIfPresent(.methodParams)
                        osExceptionType = try container.decodeIfPresent(.osExceptionType)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encodeIfPresent(appCode, forKey: .appCode)
                        try container.encodeIfPresent(classMethod, forKey: .classMethod)
                        try container.encodeIfPresent(className, forKey: .className)
                        try container.encodeIfPresent(codeFormatted, forKey: .codeFormatted)
                        try container.encodeIfPresent(codeRaw, forKey: .codeRaw)
                        try container.encodeIfPresent(exceptionType, forKey: .exceptionType)
                        try container.encodeIfPresent(file, forKey: .file)
                        try container.encodeIfPresent(frameworkName, forKey: .frameworkName)
                        try container.encodeIfPresent(language, forKey: .language)
                        try container.encodeIfPresent(line, forKey: .line)
                        try container.encodeIfPresent(method, forKey: .method)
                        try container.encodeIfPresent(methodParams, forKey: .methodParams)
                        try container.encodeIfPresent(osExceptionType, forKey: .osExceptionType)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? ReasonFrame else { return false }
                      guard self.appCode == object.appCode else { return false }
                      guard self.classMethod == object.classMethod else { return false }
                      guard self.className == object.className else { return false }
                      guard self.codeFormatted == object.codeFormatted else { return false }
                      guard self.codeRaw == object.codeRaw else { return false }
                      guard self.exceptionType == object.exceptionType else { return false }
                      guard self.file == object.file else { return false }
                      guard self.frameworkName == object.frameworkName else { return false }
                      guard self.language == object.language else { return false }
                      guard self.line == object.line else { return false }
                      guard self.method == object.method else { return false }
                      guard self.methodParams == object.methodParams else { return false }
                      guard self.osExceptionType == object.osExceptionType else { return false }
                      return true
                    }

                    public static func == (lhs: ReasonFrame, rhs: ReasonFrame) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(crashGroupId: String, newCrashGroupId: String, displayId: String, appVersion: String, build: String, status: GroupStatus, count: Int, firstOccurrence: DateTime, lastOccurrence: DateTime, crashReason: String, fatal: Bool, annotation: String, exception: String? = nil, impactedUsers: Int? = nil, reasonFrame: ReasonFrame? = nil) {
                    self.crashGroupId = crashGroupId
                    self.newCrashGroupId = newCrashGroupId
                    self.displayId = displayId
                    self.appVersion = appVersion
                    self.build = build
                    self.status = status
                    self.count = count
                    self.firstOccurrence = firstOccurrence
                    self.lastOccurrence = lastOccurrence
                    self.crashReason = crashReason
                    self.fatal = fatal
                    self.annotation = annotation
                    self.exception = exception
                    self.impactedUsers = impactedUsers
                    self.reasonFrame = reasonFrame
                }

                private enum CodingKeys: String, CodingKey {
                    case crashGroupId = "crash_group_id"
                    case newCrashGroupId = "new_crash_group_id"
                    case displayId = "display_id"
                    case appVersion = "app_version"
                    case build
                    case status
                    case count
                    case firstOccurrence = "first_occurrence"
                    case lastOccurrence = "last_occurrence"
                    case crashReason = "crash_reason"
                    case fatal
                    case annotation
                    case exception
                    case impactedUsers = "impacted_users"
                    case reasonFrame = "reason_frame"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    crashGroupId = try container.decode(.crashGroupId)
                    newCrashGroupId = try container.decode(.newCrashGroupId)
                    displayId = try container.decode(.displayId)
                    appVersion = try container.decode(.appVersion)
                    build = try container.decode(.build)
                    status = try container.decode(.status)
                    count = try container.decode(.count)
                    firstOccurrence = try container.decode(.firstOccurrence)
                    lastOccurrence = try container.decode(.lastOccurrence)
                    crashReason = try container.decode(.crashReason)
                    fatal = try container.decode(.fatal)
                    annotation = try container.decode(.annotation)
                    exception = try container.decodeIfPresent(.exception)
                    impactedUsers = try container.decodeIfPresent(.impactedUsers)
                    reasonFrame = try container.decodeIfPresent(.reasonFrame)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(crashGroupId, forKey: .crashGroupId)
                    try container.encode(newCrashGroupId, forKey: .newCrashGroupId)
                    try container.encode(displayId, forKey: .displayId)
                    try container.encode(appVersion, forKey: .appVersion)
                    try container.encode(build, forKey: .build)
                    try container.encode(status, forKey: .status)
                    try container.encode(count, forKey: .count)
                    try container.encode(firstOccurrence, forKey: .firstOccurrence)
                    try container.encode(lastOccurrence, forKey: .lastOccurrence)
                    try container.encode(crashReason, forKey: .crashReason)
                    try container.encode(fatal, forKey: .fatal)
                    try container.encode(annotation, forKey: .annotation)
                    try container.encodeIfPresent(exception, forKey: .exception)
                    try container.encodeIfPresent(impactedUsers, forKey: .impactedUsers)
                    try container.encodeIfPresent(reasonFrame, forKey: .reasonFrame)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.crashGroupId == object.crashGroupId else { return false }
                  guard self.newCrashGroupId == object.newCrashGroupId else { return false }
                  guard self.displayId == object.displayId else { return false }
                  guard self.appVersion == object.appVersion else { return false }
                  guard self.build == object.build else { return false }
                  guard self.status == object.status else { return false }
                  guard self.count == object.count else { return false }
                  guard self.firstOccurrence == object.firstOccurrence else { return false }
                  guard self.lastOccurrence == object.lastOccurrence else { return false }
                  guard self.crashReason == object.crashReason else { return false }
                  guard self.fatal == object.fatal else { return false }
                  guard self.annotation == object.annotation else { return false }
                  guard self.exception == object.exception else { return false }
                  guard self.impactedUsers == object.impactedUsers else { return false }
                  guard self.reasonFrame == object.reasonFrame else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Updates a group. Available for UWP apps only. */
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
