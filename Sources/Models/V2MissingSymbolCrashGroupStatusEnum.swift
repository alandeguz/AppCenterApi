//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** enumeration of missing symbol grash group statuses */
public class V2MissingSymbolCrashGroupStatusEnum: APIModel {

    public init() {
    }


    public required init(from decoder: Decoder) throws {
    }

    public func encode(to encoder: Encoder) throws {
    }

    public func isEqual(to object: Any?) -> Bool {
      guard object is V2MissingSymbolCrashGroupStatusEnum else { return false }
      return true
    }

    public static func == (lhs: V2MissingSymbolCrashGroupStatusEnum, rhs: V2MissingSymbolCrashGroupStatusEnum) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
