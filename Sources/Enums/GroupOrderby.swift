//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

/** the OData-like $orderby argument */
public enum GroupOrderby: String, Codable {
    case lastOccurrenceAsc = "last_occurrence asc"
    case lastOccurrenceDesc = "last_occurrence desc"
    case countAsc = "count asc"
    case countDesc = "count desc"
    case displayIdAsc = "display_id asc"
    case displayIdDesc = "display_id desc"
    case impactedUsersAsc = "impacted_users asc"
    case impactedUsersDesc = "impacted_users desc"

    public static let cases: [GroupOrderby] = [
      .lastOccurrenceAsc,
      .lastOccurrenceDesc,
      .countAsc,
      .countDesc,
      .displayIdAsc,
      .displayIdDesc,
      .impactedUsersAsc,
      .impactedUsersDesc,
    ]
}
