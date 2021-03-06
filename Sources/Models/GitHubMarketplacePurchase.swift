//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** GitHub Marketplace purchase */
public class GitHubMarketplacePurchase: APIModel {

    /** GitHub account information */
    public var account: Account?

    /** GitHub Marketplace plan */
    public var plan: Plan?

    /** GitHub Marketplace purchase */
    public class Account: APIModel {

        /** Type of GitHub account */
        public enum AccountType: String, Codable {
            case user = "User"
            case organization = "Organization"

            public static let cases: [AccountType] = [
              .user,
              .organization,
            ]
        }

        /** Type of GitHub account */
        public var accountType: AccountType?

        /** Id of GitHub account */
        public var id: Int?

        public init(accountType: AccountType? = nil, id: Int? = nil) {
            self.accountType = accountType
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case accountType
            case id
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            accountType = try container.decodeIfPresent(.accountType)
            id = try container.decodeIfPresent(.id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(accountType, forKey: .accountType)
            try container.encodeIfPresent(id, forKey: .id)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Account else { return false }
          guard self.accountType == object.accountType else { return false }
          guard self.id == object.id else { return false }
          return true
        }

        public static func == (lhs: Account, rhs: Account) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    /** GitHub Marketplace purchase */
    public class Plan: APIModel {

        /** Id of the GitHub plan */
        public var id: Int?

        public init(id: Int? = nil) {
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case id
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decodeIfPresent(.id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeIfPresent(id, forKey: .id)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Plan else { return false }
          guard self.id == object.id else { return false }
          return true
        }

        public static func == (lhs: Plan, rhs: Plan) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(account: Account? = nil, plan: Plan? = nil) {
        self.account = account
        self.plan = plan
    }

    private enum CodingKeys: String, CodingKey {
        case account
        case plan
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        account = try container.decodeIfPresent(.account)
        plan = try container.decodeIfPresent(.plan)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(plan, forKey: .plan)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GitHubMarketplacePurchase else { return false }
      guard self.account == object.account else { return false }
      guard self.plan == object.plan else { return false }
      return true
    }

    public static func == (lhs: GitHubMarketplacePurchase, rhs: GitHubMarketplacePurchase) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
