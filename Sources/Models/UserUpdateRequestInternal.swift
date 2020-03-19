//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class UserUpdateRequestInternal: APIModel {

    /** The full name of the user. Might for example be first and last name */
    public var displayName: String?

    /** The email address for this user */
    public var email: String?

    /** The new, unique name that is used to identify. */
    public var name: String?

    /** The date in the future when the user should be checked again for NPS eligibility */
    public var nextNpsSurveyDate: String?

    public init(displayName: String? = nil, email: String? = nil, name: String? = nil, nextNpsSurveyDate: String? = nil) {
        self.displayName = displayName
        self.email = email
        self.name = name
        self.nextNpsSurveyDate = nextNpsSurveyDate
    }

    private enum CodingKeys: String, CodingKey {
        case displayName = "display_name"
        case email
        case name
        case nextNpsSurveyDate = "next_nps_survey_date"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        displayName = try container.decodeIfPresent(.displayName)
        email = try container.decodeIfPresent(.email)
        name = try container.decodeIfPresent(.name)
        nextNpsSurveyDate = try container.decodeIfPresent(.nextNpsSurveyDate)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(nextNpsSurveyDate, forKey: .nextNpsSurveyDate)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? UserUpdateRequestInternal else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.email == object.email else { return false }
      guard self.name == object.name else { return false }
      guard self.nextNpsSurveyDate == object.nextNpsSurveyDate else { return false }
      return true
    }

    public static func == (lhs: UserUpdateRequestInternal, rhs: UserUpdateRequestInternal) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}