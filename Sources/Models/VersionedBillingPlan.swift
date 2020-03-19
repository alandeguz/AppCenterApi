//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Billing Plan with a version */
public class VersionedBillingPlan: APIModel {

    /** Billing Plan */
    public var document: Document?

    /** The version of the object */
    public var etag: String?

    /** Billing Plan with a version */
    public class Document: APIModel {

        /** Service that receives payments for this billing plan. */
        public enum PaymentSource: String, Codable {
            case none = "None"
            case appCenter = "AppCenter"
            case gitHub = "GitHub"
            case xtc = "Xtc"

            public static let cases: [PaymentSource] = [
              .none,
              .appCenter,
              .gitHub,
              .xtc,
            ]
        }

        /** Name of the service that the plan applies to. */
        public enum Service: String, Codable {
            case build = "Build"
            case test = "Test"

            public static let cases: [Service] = [
              .build,
              .test,
            ]
        }

        /** Collection of attribute values. */
        public var attributes: [String: [String: Any]]?

        /** The Billing Plan ID */
        public var id: String?

        /** A collection of named numeric values */
        public var limits: [String: Double]?

        public var parentId: String?

        /** Service that receives payments for this billing plan. */
        public var paymentSource: PaymentSource?

        /** Price of the Billing Plan */
        public var price: Double?

        /** Name of the service that the plan applies to. */
        public var service: Service?

        /** Version of the Billing Plan schema */
        public var version: String?

        public init(attributes: [String: [String: Any]]? = nil, id: String? = nil, limits: [String: Double]? = nil, parentId: String? = nil, paymentSource: PaymentSource? = nil, price: Double? = nil, service: Service? = nil, version: String? = nil) {
            self.attributes = attributes
            self.id = id
            self.limits = limits
            self.parentId = parentId
            self.paymentSource = paymentSource
            self.price = price
            self.service = service
            self.version = version
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case id
            case limits
            case parentId
            case paymentSource
            case price
            case service
            case version
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            attributes = try container.decodeAnyIfPresent(.attributes)
            id = try container.decodeIfPresent(.id)
            limits = try container.decodeIfPresent(.limits)
            parentId = try container.decodeIfPresent(.parentId)
            paymentSource = try container.decodeIfPresent(.paymentSource)
            price = try container.decodeIfPresent(.price)
            service = try container.decodeIfPresent(.service)
            version = try container.decodeIfPresent(.version)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try container.encodeAnyIfPresent(attributes, forKey: .attributes)
            try container.encodeIfPresent(id, forKey: .id)
            try container.encodeIfPresent(limits, forKey: .limits)
            try container.encodeIfPresent(parentId, forKey: .parentId)
            try container.encodeIfPresent(paymentSource, forKey: .paymentSource)
            try container.encodeIfPresent(price, forKey: .price)
            try container.encodeIfPresent(service, forKey: .service)
            try container.encodeIfPresent(version, forKey: .version)
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Document else { return false }
          guard self.attributes == object.attributes else { return false }
          guard self.id == object.id else { return false }
          guard self.limits == object.limits else { return false }
          guard self.parentId == object.parentId else { return false }
          guard self.paymentSource == object.paymentSource else { return false }
          guard self.price == object.price else { return false }
          guard self.service == object.service else { return false }
          guard self.version == object.version else { return false }
          return true
        }

        public static func == (lhs: Document, rhs: Document) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(document: Document? = nil, etag: String? = nil) {
        self.document = document
        self.etag = etag
    }

    private enum CodingKeys: String, CodingKey {
        case document
        case etag
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        document = try container.decodeIfPresent(.document)
        etag = try container.decodeIfPresent(.etag)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(document, forKey: .document)
        try container.encodeIfPresent(etag, forKey: .etag)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? VersionedBillingPlan else { return false }
      guard self.document == object.document else { return false }
      guard self.etag == object.etag else { return false }
      return true
    }

    public static func == (lhs: VersionedBillingPlan, rhs: VersionedBillingPlan) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}