//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Response for updating release external url */
public class ReleaseExternalUrlUpdateResponse: APIModel {

    public var externalDownloadURL: String?

    public init(externalDownloadURL: String? = nil) {
        self.externalDownloadURL = externalDownloadURL
    }

    private enum CodingKeys: String, CodingKey {
        case externalDownloadURL = "external_download_url"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        externalDownloadURL = try container.decodeIfPresent(.externalDownloadURL)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(externalDownloadURL, forKey: .externalDownloadURL)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ReleaseExternalUrlUpdateResponse else { return false }
      guard self.externalDownloadURL == object.externalDownloadURL else { return false }
      return true
    }

    public static func == (lhs: ReleaseExternalUrlUpdateResponse, rhs: ReleaseExternalUrlUpdateResponse) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}