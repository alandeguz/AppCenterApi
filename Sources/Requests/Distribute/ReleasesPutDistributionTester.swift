//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Distribute {

    /**
    Update details about the specified tester associated with the release
    */
    public enum ReleasesPutDistributionTester {

        public static let service = APIService<Response>(id: "releases_putDistributionTester", tag: "distribute", method: "PUT", path: "/v0.1/apps/{owner_name}/{app_name}/releases/{release_id}/testers/{tester_id}", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Update details about the specified tester associated with the release */
            public class DestinationTesterUpdateDetails: APIModel {

                /** Whether a release is mandatory for the given destination */
                public var mandatoryUpdate: Bool

                public init(mandatoryUpdate: Bool) {
                    self.mandatoryUpdate = mandatoryUpdate
                }

                private enum CodingKeys: String, CodingKey {
                    case mandatoryUpdate = "mandatory_update"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    mandatoryUpdate = try container.decode(.mandatoryUpdate)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(mandatoryUpdate, forKey: .mandatoryUpdate)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? DestinationTesterUpdateDetails else { return false }
                  guard self.mandatoryUpdate == object.mandatoryUpdate else { return false }
                  return true
                }

                public static func == (lhs: DestinationTesterUpdateDetails, rhs: DestinationTesterUpdateDetails) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The ID of the release */
                public var releaseId: Int

                /** The id of the tester */
                public var testerId: ID

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(releaseId: Int, testerId: ID, ownerName: String, appName: String) {
                    self.releaseId = releaseId
                    self.testerId = testerId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var destinationTesterUpdateDetails: DestinationTesterUpdateDetails?

            public init(destinationTesterUpdateDetails: DestinationTesterUpdateDetails?, options: Options) {
                self.destinationTesterUpdateDetails = destinationTesterUpdateDetails
                self.options = options
                super.init(service: ReleasesPutDistributionTester.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(destinationTesterUpdateDetails)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(releaseId: Int, testerId: ID, destinationTesterUpdateDetails: DestinationTesterUpdateDetails? = nil, ownerName: String, appName: String) {
                let options = Options(releaseId: releaseId, testerId: testerId, ownerName: ownerName, appName: appName)
                self.init(destinationTesterUpdateDetails: destinationTesterUpdateDetails, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "releaseId" + "}", with: "\(self.options.releaseId)").replacingOccurrences(of: "{" + "testerId" + "}", with: "\(self.options.testerId.encode())").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Update details about the specified tester associated with the release */
            public class Status404: APIModel {

                /** Update details about the specified tester associated with the release */
                public enum Code: String, Codable {
                    case badRequest = "BadRequest"
                    case conflict = "Conflict"
                    case notAcceptable = "NotAcceptable"
                    case notFound = "NotFound"
                    case internalServerError = "InternalServerError"
                    case unauthorized = "Unauthorized"
                    case tooManyRequests = "TooManyRequests"

                    public static let cases: [Code] = [
                      .badRequest,
                      .conflict,
                      .notAcceptable,
                      .notFound,
                      .internalServerError,
                      .unauthorized,
                      .tooManyRequests,
                    ]
                }

                public var code: Code

                public var message: String

                public init(code: Code, message: String) {
                    self.code = code
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case code
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    code = try container.decode(.code)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(code, forKey: .code)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status404 else { return false }
                  guard self.code == object.code else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status404, rhs: Status404) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Void

            /** Success */
            case status200

            /** A destination can't be found.
 */
            case status404(Status404)

            public var success: Void? {
                switch self {
                case .status200: return ()
                default: return nil
                }
            }

            public var failure: Status404? {
                switch self {
                case .status404(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Void, Status404> {
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
                case .status404(let response): return response
                default: return ()
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status404: return 404
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status404: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = .status200
                case 404: self = try .status404(decoder.decode(Status404.self, from: data))
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
