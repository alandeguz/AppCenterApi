//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupLanguage: APIModel {

    /** Count of languages. */
    public var crashCount: Int?

    /** Language name. */
    public var languageName: String?

    public init(crashCount: Int? = nil, languageName: String? = nil) {
        self.crashCount = crashCount
        self.languageName = languageName
    }

    private enum CodingKeys: String, CodingKey {
        case crashCount = "crash_count"
        case languageName = "language_name"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        crashCount = try container.decodeIfPresent(.crashCount)
        languageName = try container.decodeIfPresent(.languageName)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(crashCount, forKey: .crashCount)
        try container.encodeIfPresent(languageName, forKey: .languageName)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupLanguage else { return false }
      guard self.crashCount == object.crashCount else { return false }
      guard self.languageName == object.languageName else { return false }
      return true
    }

    public static func == (lhs: CrashGroupLanguage, rhs: CrashGroupLanguage) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}