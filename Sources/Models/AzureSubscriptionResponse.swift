//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class AzureSubscriptionResponse: APIModel {

    /** The azure subscription id */
    public var subscriptionId: ID

    /** The tenant id of the azure subscription belongs to */
    public var tenantId: ID

    /** The name of the azure subscription */
    public var subscriptionName: String

    /** If the subscription can be used for billing */
    public var isBillable: Bool?

    /** If the subscription is used for billing */
    public var isBilling: Bool?

    /** If the subscription is internal Microsoft subscription */
    public var isMicrosoftInternal: Bool?

    public init(subscriptionId: ID, tenantId: ID, subscriptionName: String, isBillable: Bool? = nil, isBilling: Bool? = nil, isMicrosoftInternal: Bool? = nil) {
        self.subscriptionId = subscriptionId
        self.tenantId = tenantId
        self.subscriptionName = subscriptionName
        self.isBillable = isBillable
        self.isBilling = isBilling
        self.isMicrosoftInternal = isMicrosoftInternal
    }

    private enum CodingKeys: String, CodingKey {
        case subscriptionId = "subscription_id"
        case tenantId = "tenant_id"
        case subscriptionName = "subscription_name"
        case isBillable = "is_billable"
        case isBilling = "is_billing"
        case isMicrosoftInternal = "is_microsoft_internal"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        subscriptionId = try container.decode(.subscriptionId)
        tenantId = try container.decode(.tenantId)
        subscriptionName = try container.decode(.subscriptionName)
        isBillable = try container.decodeIfPresent(.isBillable)
        isBilling = try container.decodeIfPresent(.isBilling)
        isMicrosoftInternal = try container.decodeIfPresent(.isMicrosoftInternal)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(subscriptionId, forKey: .subscriptionId)
        try container.encode(tenantId, forKey: .tenantId)
        try container.encode(subscriptionName, forKey: .subscriptionName)
        try container.encodeIfPresent(isBillable, forKey: .isBillable)
        try container.encodeIfPresent(isBilling, forKey: .isBilling)
        try container.encodeIfPresent(isMicrosoftInternal, forKey: .isMicrosoftInternal)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AzureSubscriptionResponse else { return false }
      guard self.subscriptionId == object.subscriptionId else { return false }
      guard self.tenantId == object.tenantId else { return false }
      guard self.subscriptionName == object.subscriptionName else { return false }
      guard self.isBillable == object.isBillable else { return false }
      guard self.isBilling == object.isBilling else { return false }
      guard self.isMicrosoftInternal == object.isMicrosoftInternal else { return false }
      return true
    }

    public static func == (lhs: AzureSubscriptionResponse, rhs: AzureSubscriptionResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}