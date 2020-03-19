//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Jira bugtracker specific settings */
public class AlertingJiraBugtrackerSettings: APIModel {

    public var jiraProjectId: Int

    public var jiraProjectName: String

    public init(jiraProjectId: Int, jiraProjectName: String) {
        self.jiraProjectId = jiraProjectId
        self.jiraProjectName = jiraProjectName
    }

    private enum CodingKeys: String, CodingKey {
        case jiraProjectId = "jira_project_id"
        case jiraProjectName = "jira_project_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        jiraProjectId = try container.decode(.jiraProjectId)
        jiraProjectName = try container.decode(.jiraProjectName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(jiraProjectId, forKey: .jiraProjectId)
        try container.encode(jiraProjectName, forKey: .jiraProjectName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AlertingJiraBugtrackerSettings else { return false }
      guard self.jiraProjectId == object.jiraProjectId else { return false }
      guard self.jiraProjectName == object.jiraProjectName else { return false }
      return true
    }

    public static func == (lhs: AlertingJiraBugtrackerSettings, rhs: AlertingJiraBugtrackerSettings) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}