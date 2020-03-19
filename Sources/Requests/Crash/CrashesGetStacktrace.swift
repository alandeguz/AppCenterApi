//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Crash {

    /**
    Available for UWP apps only.

    Gets a stacktrace for a specific crash. Available for UWP apps only.
    */
    public enum CrashesGetStacktrace {

        public static let service = APIService<Response>(id: "crashes_getStacktrace", tag: "crash", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/crash_groups/{crash_group_id}/crashes/{crash_id}/stacktrace", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** id of a specific group */
                public var crashGroupId: String

                /** id of a specific crash */
                public var crashId: String

                /** true if the stacktrace should be only the relevant thread / exception. Default is false */
                public var groupingOnly: Bool?

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(crashGroupId: String, crashId: String, groupingOnly: Bool? = nil, ownerName: String, appName: String) {
                    self.crashGroupId = crashGroupId
                    self.crashId = crashId
                    self.groupingOnly = groupingOnly
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: CrashesGetStacktrace.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(crashGroupId: String, crashId: String, groupingOnly: Bool? = nil, ownerName: String, appName: String) {
                let options = Options(crashGroupId: crashGroupId, crashId: crashId, groupingOnly: groupingOnly, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "crashGroupId" + "}", with: "\(self.options.crashGroupId)").replacingOccurrences(of: "{" + "crashId" + "}", with: "\(self.options.crashId)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }

            public override var parameters: [String: Any] {
                var params: [String: Any] = [:]
                if let groupingOnly = options.groupingOnly {
                  params["grouping_only"] = groupingOnly
                }
                return params
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Gets a stacktrace for a specific crash. Available for UWP apps only. */
            public class DefaultResponse: APIModel {

                public var message: String

                public init(message: String) {
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Stacktrace

            /** Success */
            case status200(Stacktrace)

            /** Error */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Stacktrace? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: DefaultResponse? {
                switch self {
                case .defaultResponse(_, let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Stacktrace, DefaultResponse> {
                if let successValue = success {
                    return .success(successValue)
                } else if let failureValue = failure {
                    return .failure(failureValue)
                } else {
                    fatalError("Response does not have success or failure response")
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                case .defaultResponse(_, let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .defaultResponse(let statusCode, _): return statusCode
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .defaultResponse: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Stacktrace.self, from: data))
                default: self = try .defaultResponse(statusCode: statusCode, decoder.decode(DefaultResponse.self, from: data))
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