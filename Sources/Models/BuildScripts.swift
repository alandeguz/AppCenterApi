//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** A collection of detected pre/post buildscripts for current platform toolset */
public class BuildScripts: APIModel {

    public init() {
    }


    public required init(from decoder: Decoder) throws {
    }

    public func encode(to encoder: Encoder) throws {
    }

    public func isEqual(to object: Any?) -> Bool {
      guard object is BuildScripts else { return false }
      return true
    }

    public static func == (lhs: BuildScripts, rhs: BuildScripts) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
