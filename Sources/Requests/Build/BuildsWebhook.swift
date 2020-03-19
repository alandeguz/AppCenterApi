//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Build {

    /**
    Public webhook sink
    */
    public enum BuildsWebhook {

        public static let service = APIService<Response>(id: "builds_webhook", tag: "build", method: "POST", path: "/v0.1/public/hooks", hasBody: true)

        public final class Request: APIRequest<Response> {

            public var payload: [String: Any]?

            public init(payload: [String: Any]?) {
                self.payload = payload
                super.init(service: BuildsWebhook.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(AnyCodable(payload).value)
                }
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Public webhook sink */
            public class DefaultResponse: APIModel {

                public var id: String

                public var code: String

                public var message: String

                public init(id: String, code: String, message: String) {
                    self.id = id
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    id = try container.decode(.id)
                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(id, forKey: .id)
                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DefaultResponse else { return false }
                  guard self.id == object.id else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: DefaultResponse, rhs: DefaultResponse) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Void

            /** Success */
            case status200

            /** Bad Request */
            case defaultResponse(statusCode: Int, DefaultResponse)

            public var success: Void? {
                switch self {
                case .status200: return ()
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
            public var responseResult: APIResponseResult<Void, DefaultResponse> {
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
                case .defaultResponse(_, let response): return response
                default: return ()
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
                case 200: self = .status200
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
