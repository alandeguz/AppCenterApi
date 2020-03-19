//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

/** a stacktrace in a processed and prettyfied way */
public class DiagnosticsStackTrace: APIModel {

    public var exception: DiagnosticsException?

    public var reason: String?

    public var threads: [DiagnosticsThread]?

    public var title: String?

    public init(exception: DiagnosticsException? = nil, reason: String? = nil, threads: [DiagnosticsThread]? = nil, title: String? = nil) {
        self.exception = exception
        self.reason = reason
        self.threads = threads
        self.title = title
    }

    private enum CodingKeys: String, CodingKey {
        case exception
        case reason
        case threads
        case title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        exception = try container.decodeIfPresent(.exception)
        reason = try container.decodeIfPresent(.reason)
        threads = try container.decodeArrayIfPresent(.threads)
        title = try container.decodeIfPresent(.title)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(exception, forKey: .exception)
        try container.encodeIfPresent(reason, forKey: .reason)
        try container.encodeIfPresent(threads, forKey: .threads)
        try container.encodeIfPresent(title, forKey: .title)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DiagnosticsStackTrace else { return false }
      guard self.exception == object.exception else { return false }
      guard self.reason == object.reason else { return false }
      guard self.threads == object.threads else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: DiagnosticsStackTrace, rhs: DiagnosticsStackTrace) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
