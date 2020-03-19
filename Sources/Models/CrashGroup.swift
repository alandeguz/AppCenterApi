//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroup: APIModel {

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
      guard let object = object as? CrashGroup else { return false }
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

    public static func == (lhs: CrashGroup, rhs: CrashGroup) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
