//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CreateGdprTestData: APIModel {

    public var accountId: ID?

    public var appId: ID?

    public var appName: String?

    public var userEmail: String?

    public var userName: String?

    public init(accountId: ID? = nil, appId: ID? = nil, appName: String? = nil, userEmail: String? = nil, userName: String? = nil) {
        self.accountId = accountId
        self.appId = appId
        self.appName = appName
        self.userEmail = userEmail
        self.userName = userName
    }

    private enum CodingKeys: String, CodingKey {
        case accountId
        case appId
        case appName
        case userEmail
        case userName
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accountId = try container.decodeIfPresent(.accountId)
        appId = try container.decodeIfPresent(.appId)
        appName = try container.decodeIfPresent(.appName)
        userEmail = try container.decodeIfPresent(.userEmail)
        userName = try container.decodeIfPresent(.userName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(appId, forKey: .appId)
        try container.encodeIfPresent(appName, forKey: .appName)
        try container.encodeIfPresent(userEmail, forKey: .userEmail)
        try container.encodeIfPresent(userName, forKey: .userName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CreateGdprTestData else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.appId == object.appId else { return false }
      guard self.appName == object.appName else { return false }
      guard self.userEmail == object.userEmail else { return false }
      guard self.userName == object.userName else { return false }
      return true
    }

    public static func == (lhs: CreateGdprTestData, rhs: CreateGdprTestData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
