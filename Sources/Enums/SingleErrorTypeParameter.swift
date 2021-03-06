//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

/** Type of error (handled vs unhandled), excluding All */
public enum SingleErrorTypeParameter: String, Codable {
    case unhandledError = "unhandledError"
    case handledError = "handledError"

    public static let cases: [SingleErrorTypeParameter] = [
      .unhandledError,
      .handledError,
    ]
}
