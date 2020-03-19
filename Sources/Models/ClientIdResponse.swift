//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** This response contains the Azure AD B2C client ID for an application. */
public class ClientIdResponse: APIModel {

    public var clientId: String?

    public init(clientId: String? = nil) {
        self.clientId = clientId
    }

    private enum CodingKeys: String, CodingKey {
        case clientId
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        clientId = try container.decodeIfPresent(.clientId)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(clientId, forKey: .clientId)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ClientIdResponse else { return false }
      guard self.clientId == object.clientId else { return false }
      return true
    }

    public static func == (lhs: ClientIdResponse, rhs: ClientIdResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}