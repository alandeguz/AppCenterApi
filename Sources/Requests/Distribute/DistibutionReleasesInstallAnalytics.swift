//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Notify download(s) for the provided distribution release(s).
    */
    public enum DistibutionReleasesInstallAnalytics {

        public static let service = APIService<Response>(id: "distibutionReleases_installAnalytics", tag: "distribute", method: "POST", path: "/v0.1/public/apps/{owner_name}/{app_name}/install_analytics", hasBody: true)

        public final class Request: APIRequest<Response> {

            /** Notify download(s) for the provided distribution release(s). */
            public class Body: APIModel {

                public var releases: [Releases]?

                public init(releases: [Releases]? = nil) {
                    self.releases = releases
                }

                private enum CodingKeys: String, CodingKey {
                    case releases
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    releases = try container.decodeArrayIfPresent(.releases)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encodeIfPresent(releases, forKey: .releases)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Body else { return false }
                  guard self.releases == object.releases else { return false }
                  return true
                }

                public static func == (lhs: Body, rhs: Body) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The name of the app owner */
                public var ownerName: String

                /** The name of the app */
                public var appName: String

                public init(ownerName: String, appName: String) {
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var body: Body

            public init(body: Body, options: Options) {
                self.body = body
                self.options = options
                super.init(service: DistibutionReleasesInstallAnalytics.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(body)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(ownerName: String, appName: String, body: Body) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(body: body, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** Install Analytics Notification Sent Successfully. */
            case status204

            public var success: Void? {
                switch self {
                case .status204: return ()
                }
            }

            public var response: Any {
                switch self {
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status204: return 204
                }
            }

            public var successful: Bool {
                switch self {
                case .status204: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 204: self = .status204
                default: throw APIClientError.unexpectedStatusCode(statusCode: statusCode, data: data)
                }
            }

            public var description: String {
                return "\(statusCode) \(successful ? "success" : "failure")"
            }

            public var debugDescription: String {
                var string = description
                let responseString = "\(response)"
                if responseString != "()" {
                    string += "\n\(responseString)"
                }
                return string
            }
        }
    }
}
