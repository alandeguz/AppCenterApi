//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Memory data for device */
public class DeviceMemory: APIModel {

    public var formattedSize: String?

    public init(formattedSize: String? = nil) {
        self.formattedSize = formattedSize
    }

    private enum CodingKeys: String, CodingKey {
        case formattedSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        formattedSize = try container.decodeIfPresent(.formattedSize)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(formattedSize, forKey: .formattedSize)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceMemory else { return false }
      guard self.formattedSize == object.formattedSize else { return false }
      return true
    }

    public static func == (lhs: DeviceMemory, rhs: DeviceMemory) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
