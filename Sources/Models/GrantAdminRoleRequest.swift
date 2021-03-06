//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class GrantAdminRoleRequest: APIModel {

    /** The new admin_role */
    public enum AdminRole: String, Codable {
        case superAdmin = "superAdmin"
        case admin = "admin"
        case devOps = "devOps"
        case customerSupport = "customerSupport"
        case notAdmin = "notAdmin"

        public static let cases: [AdminRole] = [
          .superAdmin,
          .admin,
          .devOps,
          .customerSupport,
          .notAdmin,
        ]
    }

    /** The new admin_role */
    public var adminRole: AdminRole

    public init(adminRole: AdminRole) {
        self.adminRole = adminRole
    }

    private enum CodingKeys: String, CodingKey {
        case adminRole = "admin_role"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        adminRole = try container.decode(.adminRole)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(adminRole, forKey: .adminRole)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? GrantAdminRoleRequest else { return false }
      guard self.adminRole == object.adminRole else { return false }
      return true
    }

    public static func == (lhs: GrantAdminRoleRequest, rhs: GrantAdminRoleRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
