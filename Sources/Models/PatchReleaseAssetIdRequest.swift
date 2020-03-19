//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** Patch the asset id of a release request body */
public class PatchReleaseAssetIdRequest: APIModel {

    /** The release new package id in ACFUS */
    public var packageAssetId: ID

    /** The release upload id used to upload the release */
    public var uploadId: ID

    /** The ipa UUIDs for this release, as a serialized JSON array */
    public var ipaUuids: String?

    public init(packageAssetId: ID, uploadId: ID, ipaUuids: String? = nil) {
        self.packageAssetId = packageAssetId
        self.uploadId = uploadId
        self.ipaUuids = ipaUuids
    }

    private enum CodingKeys: String, CodingKey {
        case packageAssetId = "package_asset_id"
        case uploadId = "upload_id"
        case ipaUuids = "ipa_uuids"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        packageAssetId = try container.decode(.packageAssetId)
        uploadId = try container.decode(.uploadId)
        ipaUuids = try container.decodeIfPresent(.ipaUuids)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(packageAssetId, forKey: .packageAssetId)
        try container.encode(uploadId, forKey: .uploadId)
        try container.encodeIfPresent(ipaUuids, forKey: .ipaUuids)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PatchReleaseAssetIdRequest else { return false }
      guard self.packageAssetId == object.packageAssetId else { return false }
      guard self.uploadId == object.uploadId else { return false }
      guard self.ipaUuids == object.ipaUuids else { return false }
      return true
    }

    public static func == (lhs: PatchReleaseAssetIdRequest, rhs: PatchReleaseAssetIdRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
