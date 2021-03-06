//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class JavaScriptSolution: APIModel {

    /** The path to the detected package.json */
    public var packageJsonPath: String

    /** Version of React Native from package.json files */
    public var reactNativeVersion: String?

    public init(packageJsonPath: String, reactNativeVersion: String? = nil) {
        self.packageJsonPath = packageJsonPath
        self.reactNativeVersion = reactNativeVersion
    }

    private enum CodingKeys: String, CodingKey {
        case packageJsonPath
        case reactNativeVersion
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        packageJsonPath = try container.decode(.packageJsonPath)
        reactNativeVersion = try container.decodeIfPresent(.reactNativeVersion)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(packageJsonPath, forKey: .packageJsonPath)
        try container.encodeIfPresent(reactNativeVersion, forKey: .reactNativeVersion)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? JavaScriptSolution else { return false }
      guard self.packageJsonPath == object.packageJsonPath else { return false }
      guard self.reactNativeVersion == object.reactNativeVersion else { return false }
      return true
    }

    public static func == (lhs: JavaScriptSolution, rhs: JavaScriptSolution) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
