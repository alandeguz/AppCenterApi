//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** VSTS account with projects list and user info */
public class VSTSAccount: APIModel {

    /** Account id */
    public var accountId: String?

    /** Account name */
    public var accountName: String?

    /** Account status */
    public var accountStatus: String?

    /** Account type */
    public var accountType: String?

    /** Account uri */
    public var accountUri: String?

    /** Account projects */
    public var projects: [Projects]?

    /** VSTS user profile */
    public var user: User?

    /** VSTS account with projects list and user info */
    public class User: APIModel {

        /** Profile display name */
        public var displayName: String?

        /** Profile email */
        public var emailAddress: String?

        /** Profile id */
        public var id: String?

        /** Profile alias */
        public var publicAlias: String?

        public init(displayName: String? = nil, emailAddress: String? = nil, id: String? = nil, publicAlias: String? = nil) {
            self.displayName = displayName
            self.emailAddress = emailAddress
            self.id = id
            self.publicAlias = publicAlias
        }

        private enum CodingKeys: String, CodingKey {
            case displayName
            case emailAddress
            case id
            case publicAlias
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decodeIfPresent(.displayName)
            emailAddress = try container.decodeIfPresent(.emailAddress)
            id = try container.decodeIfPresent(.id)
            publicAlias = try container.decodeIfPresent(.publicAlias)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(displayName, forKey: .displayName)
            try container.encodeIfPresent(emailAddress, forKey: .emailAddress)
            try container.encodeIfPresent(id, forKey: .id)
            try container.encodeIfPresent(publicAlias, forKey: .publicAlias)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? User else { return false }
          guard self.displayName == object.displayName else { return false }
          guard self.emailAddress == object.emailAddress else { return false }
          guard self.id == object.id else { return false }
          guard self.publicAlias == object.publicAlias else { return false }
          return true
        }

        public static func == (lhs: User, rhs: User) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(accountId: String? = nil, accountName: String? = nil, accountStatus: String? = nil, accountType: String? = nil, accountUri: String? = nil, projects: [Projects]? = nil, user: User? = nil) {
        self.accountId = accountId
        self.accountName = accountName
        self.accountStatus = accountStatus
        self.accountType = accountType
        self.accountUri = accountUri
        self.projects = projects
        self.user = user
    }

    private enum CodingKeys: String, CodingKey {
        case accountId
        case accountName
        case accountStatus
        case accountType
        case accountUri
        case projects
        case user
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        accountId = try container.decodeIfPresent(.accountId)
        accountName = try container.decodeIfPresent(.accountName)
        accountStatus = try container.decodeIfPresent(.accountStatus)
        accountType = try container.decodeIfPresent(.accountType)
        accountUri = try container.decodeIfPresent(.accountUri)
        projects = try container.decodeArrayIfPresent(.projects)
        user = try container.decodeIfPresent(.user)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(accountId, forKey: .accountId)
        try container.encodeIfPresent(accountName, forKey: .accountName)
        try container.encodeIfPresent(accountStatus, forKey: .accountStatus)
        try container.encodeIfPresent(accountType, forKey: .accountType)
        try container.encodeIfPresent(accountUri, forKey: .accountUri)
        try container.encodeIfPresent(projects, forKey: .projects)
        try container.encodeIfPresent(user, forKey: .user)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? VSTSAccount else { return false }
      guard self.accountId == object.accountId else { return false }
      guard self.accountName == object.accountName else { return false }
      guard self.accountStatus == object.accountStatus else { return false }
      guard self.accountType == object.accountType else { return false }
      guard self.accountUri == object.accountUri else { return false }
      guard self.projects == object.projects else { return false }
      guard self.user == object.user else { return false }
      return true
    }

    public static func == (lhs: VSTSAccount, rhs: VSTSAccount) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
