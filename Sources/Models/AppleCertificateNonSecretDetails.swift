//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Apple Certificate Secret Details */
public class AppleCertificateNonSecretDetails: APIModel {

    /** The display name (CN) of the certificate */
    public var displayName: String

    /** The date-time from which the certificate is valid */
    public var certificateValidityStartDate: String

    /** The date-time till which the certificate is valid */
    public var certificateValidityEndDate: String

    public init(displayName: String, certificateValidityStartDate: String, certificateValidityEndDate: String) {
        self.displayName = displayName
        self.certificateValidityStartDate = certificateValidityStartDate
        self.certificateValidityEndDate = certificateValidityEndDate
    }

    private enum CodingKeys: String, CodingKey {
        case displayName
        case certificateValidityStartDate
        case certificateValidityEndDate
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        displayName = try container.decode(.displayName)
        certificateValidityStartDate = try container.decode(.certificateValidityStartDate)
        certificateValidityEndDate = try container.decode(.certificateValidityEndDate)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(displayName, forKey: .displayName)
        try container.encode(certificateValidityStartDate, forKey: .certificateValidityStartDate)
        try container.encode(certificateValidityEndDate, forKey: .certificateValidityEndDate)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? AppleCertificateNonSecretDetails else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.certificateValidityStartDate == object.certificateValidityStartDate else { return false }
      guard self.certificateValidityEndDate == object.certificateValidityEndDate else { return false }
      return true
    }

    public static func == (lhs: AppleCertificateNonSecretDetails, rhs: AppleCertificateNonSecretDetails) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}