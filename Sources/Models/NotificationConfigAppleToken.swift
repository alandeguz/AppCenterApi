//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Apple notification auth token configuration. The 'type' property must be set to 'apns_token_config'. */
public class NotificationConfigAppleToken: APIModel {

    /** Type of endpoint the certificate or token are associated with */
    public enum EndpointType: String, Codable {
        case production = "production"
        case sandbox = "sandbox"

        public static let cases: [EndpointType] = [
          .production,
          .sandbox,
        ]
    }

    /** A 10-character key identifier (kid). */
    public var keyId: String

    /** Application ID. */
    public var id: String

    /** Application prefix. */
    public var prefix: String

    /** Provider Authentication Token. */
    public var token: String

    /** Type of endpoint the certificate or token are associated with */
    public var endpointType: EndpointType

    public init(keyId: String, id: String, prefix: String, token: String, endpointType: EndpointType) {
        self.keyId = keyId
        self.id = id
        self.prefix = prefix
        self.token = token
        self.endpointType = endpointType
    }

    private enum CodingKeys: String, CodingKey {
        case keyId = "key_id"
        case id
        case prefix
        case token
        case endpointType = "endpoint_type"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        keyId = try container.decode(.keyId)
        id = try container.decode(.id)
        prefix = try container.decode(.prefix)
        token = try container.decode(.token)
        endpointType = try container.decode(.endpointType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(keyId, forKey: .keyId)
        try container.encode(id, forKey: .id)
        try container.encode(prefix, forKey: .prefix)
        try container.encode(token, forKey: .token)
        try container.encode(endpointType, forKey: .endpointType)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? NotificationConfigAppleToken else { return false }
      guard self.keyId == object.keyId else { return false }
      guard self.id == object.id else { return false }
      guard self.prefix == object.prefix else { return false }
      guard self.token == object.token else { return false }
      guard self.endpointType == object.endpointType else { return false }
      return true
    }

    public static func == (lhs: NotificationConfigAppleToken, rhs: NotificationConfigAppleToken) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}