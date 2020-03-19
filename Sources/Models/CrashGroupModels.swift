//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class CrashGroupModels: APIModel {

    public var crashCount: Int?

    public var models: [Models]?

    public init(crashCount: Int? = nil, models: [Models]? = nil) {
        self.crashCount = crashCount
        self.models = models
    }

    private enum CodingKeys: String, CodingKey {
        case crashCount = "crash_count"
        case models
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        crashCount = try container.decodeIfPresent(.crashCount)
        models = try container.decodeArrayIfPresent(.models)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(crashCount, forKey: .crashCount)
        try container.encodeIfPresent(models, forKey: .models)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? CrashGroupModels else { return false }
      guard self.crashCount == object.crashCount else { return false }
      guard self.models == object.models else { return false }
      return true
    }

    public static func == (lhs: CrashGroupModels, rhs: CrashGroupModels) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
