//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Model: APIModel {

    /** Count current of model. */
    public var count: Int?

    /** Model's name. */
    public var modelName: String?

    /** Count of previous model. */
    public var previousCount: Int?

    public init(count: Int? = nil, modelName: String? = nil, previousCount: Int? = nil) {
        self.count = count
        self.modelName = modelName
        self.previousCount = previousCount
    }

    private enum CodingKeys: String, CodingKey {
        case count
        case modelName = "model_name"
        case previousCount = "previous_count"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        count = try container.decodeIfPresent(.count)
        modelName = try container.decodeIfPresent(.modelName)
        previousCount = try container.decodeIfPresent(.previousCount)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(modelName, forKey: .modelName)
        try container.encodeIfPresent(previousCount, forKey: .previousCount)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? Model else { return false }
      guard self.count == object.count else { return false }
      guard self.modelName == object.modelName else { return false }
      guard self.previousCount == object.previousCount else { return false }
      return true
    }

    public static func == (lhs: Model, rhs: Model) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
