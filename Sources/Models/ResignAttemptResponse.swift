//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** URL that can be used to check the status of the update devices operation and the updated profiles. */
public class ResignAttemptResponse: APIModel {

    /** The status of the resigning operation. */
    public var status: String

    /** App ID that the resign operation is being performed against. */
    public var appId: String

    /** ID of the release which is being resigned. */
    public var originalReleaseId: Double

    /** ID of the user performing the resign operaiton. */
    public var userId: String

    /** Context ID for the resigning operation. */
    public var contextId: String

    /** ID of the resign operation. */
    public var resignId: String

    /** The time that the resign operation was started. */
    public var startTime: Double

    /** List of destinations that the resign operation is being performed against. */
    public var destinations: [[String: Any]]?

    /** Error code associated with the exception. */
    public var errorCode: String?

    /** Error message associated with the exception. */
    public var errorMessage: String?

    public init(status: String, appId: String, originalReleaseId: Double, userId: String, contextId: String, resignId: String, startTime: Double, destinations: [[String: Any]]? = nil, errorCode: String? = nil, errorMessage: String? = nil) {
        self.status = status
        self.appId = appId
        self.originalReleaseId = originalReleaseId
        self.userId = userId
        self.contextId = contextId
        self.resignId = resignId
        self.startTime = startTime
        self.destinations = destinations
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }

    private enum CodingKeys: String, CodingKey {
        case status
        case appId
        case originalReleaseId
        case userId
        case contextId
        case resignId
        case startTime
        case destinations
        case errorCode
        case errorMessage
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        status = try container.decode(.status)
        appId = try container.decode(.appId)
        originalReleaseId = try container.decode(.originalReleaseId)
        userId = try container.decode(.userId)
        contextId = try container.decode(.contextId)
        resignId = try container.decode(.resignId)
        startTime = try container.decode(.startTime)
        destinations = try container.decodeAnyIfPresent(.destinations)
        errorCode = try container.decodeIfPresent(.errorCode)
        errorMessage = try container.decodeIfPresent(.errorMessage)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(status, forKey: .status)
        try container.encode(appId, forKey: .appId)
        try container.encode(originalReleaseId, forKey: .originalReleaseId)
        try container.encode(userId, forKey: .userId)
        try container.encode(contextId, forKey: .contextId)
        try container.encode(resignId, forKey: .resignId)
        try container.encode(startTime, forKey: .startTime)
        try container.encodeAnyIfPresent(destinations, forKey: .destinations)
        try container.encodeIfPresent(errorCode, forKey: .errorCode)
        try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ResignAttemptResponse else { return false }
      guard self.status == object.status else { return false }
      guard self.appId == object.appId else { return false }
      guard self.originalReleaseId == object.originalReleaseId else { return false }
      guard self.userId == object.userId else { return false }
      guard self.contextId == object.contextId else { return false }
      guard self.resignId == object.resignId else { return false }
      guard self.startTime == object.startTime else { return false }
      guard self.destinations == object.destinations else { return false }
      guard self.errorCode == object.errorCode else { return false }
      guard self.errorMessage == object.errorMessage else { return false }
      return true
    }

    public static func == (lhs: ResignAttemptResponse, rhs: ResignAttemptResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
