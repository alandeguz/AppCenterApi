//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AppRepoPatchRequest: APIModel {

    /** The external user id from the provider */
    public var externalUserId: String?

    /** The absolute URL of the repository */
    public var repoURL: String?

    /** The id of the service connection stored in customer credential store */
    public var serviceConnectionId: ID?

    /** The unique id (UUID) of the user */
    public var userId: ID?

    public init(externalUserId: String? = nil, repoURL: String? = nil, serviceConnectionId: ID? = nil, userId: ID? = nil) {
        self.externalUserId = externalUserId
        self.repoURL = repoURL
        self.serviceConnectionId = serviceConnectionId
        self.userId = userId
    }

    private enum CodingKeys: String, CodingKey {
        case externalUserId = "external_user_id"
        case repoURL = "repo_url"
        case serviceConnectionId = "service_connection_id"
        case userId = "user_id"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        externalUserId = try container.decodeIfPresent(.externalUserId)
        repoURL = try container.decodeIfPresent(.repoURL)
        serviceConnectionId = try container.decodeIfPresent(.serviceConnectionId)
        userId = try container.decodeIfPresent(.userId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(externalUserId, forKey: .externalUserId)
        try container.encodeIfPresent(repoURL, forKey: .repoURL)
        try container.encodeIfPresent(serviceConnectionId, forKey: .serviceConnectionId)
        try container.encodeIfPresent(userId, forKey: .userId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppRepoPatchRequest else { return false }
      guard self.externalUserId == object.externalUserId else { return false }
      guard self.repoURL == object.repoURL else { return false }
      guard self.serviceConnectionId == object.serviceConnectionId else { return false }
      guard self.userId == object.userId else { return false }
      return true
    }

    public static func == (lhs: AppRepoPatchRequest, rhs: AppRepoPatchRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}