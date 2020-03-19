//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ErrorGroup: APIModel {

    public var errorGroupId: String

    public var appVersion: String

    public var count: Int

    public var deviceCount: Int

    public var firstOccurrence: DateTime

    public var lastOccurrence: DateTime

    public var appBuild: String?

    public var codeRaw: String?

    public var exceptionAppCode: Bool?

    public var exceptionClassMethod: Bool?

    public var exceptionClassName: String?

    public var exceptionFile: String?

    public var exceptionLine: String?

    public var exceptionMessage: String?

    public var exceptionMethod: String?

    public var exceptionType: String?

    public var hidden: Bool?

    public var reasonFrames: [ReasonFrames]?

    public init(errorGroupId: String, appVersion: String, count: Int, deviceCount: Int, firstOccurrence: DateTime, lastOccurrence: DateTime, appBuild: String? = nil, codeRaw: String? = nil, exceptionAppCode: Bool? = nil, exceptionClassMethod: Bool? = nil, exceptionClassName: String? = nil, exceptionFile: String? = nil, exceptionLine: String? = nil, exceptionMessage: String? = nil, exceptionMethod: String? = nil, exceptionType: String? = nil, hidden: Bool? = nil, reasonFrames: [ReasonFrames]? = nil) {
        self.errorGroupId = errorGroupId
        self.appVersion = appVersion
        self.count = count
        self.deviceCount = deviceCount
        self.firstOccurrence = firstOccurrence
        self.lastOccurrence = lastOccurrence
        self.appBuild = appBuild
        self.codeRaw = codeRaw
        self.exceptionAppCode = exceptionAppCode
        self.exceptionClassMethod = exceptionClassMethod
        self.exceptionClassName = exceptionClassName
        self.exceptionFile = exceptionFile
        self.exceptionLine = exceptionLine
        self.exceptionMessage = exceptionMessage
        self.exceptionMethod = exceptionMethod
        self.exceptionType = exceptionType
        self.hidden = hidden
        self.reasonFrames = reasonFrames
    }

    private enum CodingKeys: String, CodingKey {
        case errorGroupId
        case appVersion
        case count
        case deviceCount
        case firstOccurrence
        case lastOccurrence
        case appBuild
        case codeRaw
        case exceptionAppCode
        case exceptionClassMethod
        case exceptionClassName
        case exceptionFile
        case exceptionLine
        case exceptionMessage
        case exceptionMethod
        case exceptionType
        case hidden
        case reasonFrames
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorGroupId = try container.decode(.errorGroupId)
        appVersion = try container.decode(.appVersion)
        count = try container.decode(.count)
        deviceCount = try container.decode(.deviceCount)
        firstOccurrence = try container.decode(.firstOccurrence)
        lastOccurrence = try container.decode(.lastOccurrence)
        appBuild = try container.decodeIfPresent(.appBuild)
        codeRaw = try container.decodeIfPresent(.codeRaw)
        exceptionAppCode = try container.decodeIfPresent(.exceptionAppCode)
        exceptionClassMethod = try container.decodeIfPresent(.exceptionClassMethod)
        exceptionClassName = try container.decodeIfPresent(.exceptionClassName)
        exceptionFile = try container.decodeIfPresent(.exceptionFile)
        exceptionLine = try container.decodeIfPresent(.exceptionLine)
        exceptionMessage = try container.decodeIfPresent(.exceptionMessage)
        exceptionMethod = try container.decodeIfPresent(.exceptionMethod)
        exceptionType = try container.decodeIfPresent(.exceptionType)
        hidden = try container.decodeIfPresent(.hidden)
        reasonFrames = try container.decodeArrayIfPresent(.reasonFrames)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(errorGroupId, forKey: .errorGroupId)
        try container.encode(appVersion, forKey: .appVersion)
        try container.encode(count, forKey: .count)
        try container.encode(deviceCount, forKey: .deviceCount)
        try container.encode(firstOccurrence, forKey: .firstOccurrence)
        try container.encode(lastOccurrence, forKey: .lastOccurrence)
        try container.encodeIfPresent(appBuild, forKey: .appBuild)
        try container.encodeIfPresent(codeRaw, forKey: .codeRaw)
        try container.encodeIfPresent(exceptionAppCode, forKey: .exceptionAppCode)
        try container.encodeIfPresent(exceptionClassMethod, forKey: .exceptionClassMethod)
        try container.encodeIfPresent(exceptionClassName, forKey: .exceptionClassName)
        try container.encodeIfPresent(exceptionFile, forKey: .exceptionFile)
        try container.encodeIfPresent(exceptionLine, forKey: .exceptionLine)
        try container.encodeIfPresent(exceptionMessage, forKey: .exceptionMessage)
        try container.encodeIfPresent(exceptionMethod, forKey: .exceptionMethod)
        try container.encodeIfPresent(exceptionType, forKey: .exceptionType)
        try container.encodeIfPresent(hidden, forKey: .hidden)
        try container.encodeIfPresent(reasonFrames, forKey: .reasonFrames)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ErrorGroup else { return false }
      guard self.errorGroupId == object.errorGroupId else { return false }
      guard self.appVersion == object.appVersion else { return false }
      guard self.count == object.count else { return false }
      guard self.deviceCount == object.deviceCount else { return false }
      guard self.firstOccurrence == object.firstOccurrence else { return false }
      guard self.lastOccurrence == object.lastOccurrence else { return false }
      guard self.appBuild == object.appBuild else { return false }
      guard self.codeRaw == object.codeRaw else { return false }
      guard self.exceptionAppCode == object.exceptionAppCode else { return false }
      guard self.exceptionClassMethod == object.exceptionClassMethod else { return false }
      guard self.exceptionClassName == object.exceptionClassName else { return false }
      guard self.exceptionFile == object.exceptionFile else { return false }
      guard self.exceptionLine == object.exceptionLine else { return false }
      guard self.exceptionMessage == object.exceptionMessage else { return false }
      guard self.exceptionMethod == object.exceptionMethod else { return false }
      guard self.exceptionType == object.exceptionType else { return false }
      guard self.hidden == object.hidden else { return false }
      guard self.reasonFrames == object.reasonFrames else { return false }
      return true
    }

    public static func == (lhs: ErrorGroup, rhs: ErrorGroup) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}