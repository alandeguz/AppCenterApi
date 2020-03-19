//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** CPU data for device */
public class DeviceCpu: APIModel {

    public var core: String?

    public var frequency: String?

    public var text: String?

    public init(core: String? = nil, frequency: String? = nil, text: String? = nil) {
        self.core = core
        self.frequency = frequency
        self.text = text
    }

    private enum CodingKeys: String, CodingKey {
        case core
        case frequency
        case text
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        core = try container.decodeIfPresent(.core)
        frequency = try container.decodeIfPresent(.frequency)
        text = try container.decodeIfPresent(.text)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(core, forKey: .core)
        try container.encodeIfPresent(frequency, forKey: .frequency)
        try container.encodeIfPresent(text, forKey: .text)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceCpu else { return false }
      guard self.core == object.core else { return false }
      guard self.frequency == object.frequency else { return false }
      guard self.text == object.text else { return false }
      return true
    }

    public static func == (lhs: DeviceCpu, rhs: DeviceCpu) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
