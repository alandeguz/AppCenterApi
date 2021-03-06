//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Test {

    /**
    Creates new test series for an application
    */
    public enum TestCreateTestSeries {

        public static let service = APIService<Response>(id: "test_createTestSeries", tag: "test", method: "POST", path: "/v0.1/apps/{owner_name}/{app_name}/test_series", hasBody: true, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            /** Creates new test series for an application */
            public class TestSeriesName: APIModel {

                /** Name of the new test series */
                public var name: String

                public init(name: String) {
                    self.name = name
                }

                private enum CodingKeys: String, CodingKey {
                    case name
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    name = try container.decode(.name)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(name, forKey: .name)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? TestSeriesName else { return false }
                  guard self.name == object.name else { return false }
                  return true
                }

                public static func == (lhs: TestSeriesName, rhs: TestSeriesName) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            public struct Options {

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(ownerName: String, appName: String) {
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public var testSeriesName: TestSeriesName

            public init(testSeriesName: TestSeriesName, options: Options) {
                self.testSeriesName = testSeriesName
                self.options = options
                super.init(service: TestCreateTestSeries.service) {
                    let jsonEncoder = JSONEncoder()
                    return try jsonEncoder.encode(testSeriesName)
                }
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(testSeriesName: TestSeriesName, ownerName: String, appName: String) {
                let options = Options(ownerName: ownerName, appName: appName)
                self.init(testSeriesName: testSeriesName, options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Creates new test series for an application */
            public class Status200: APIModel {

                /** Unique, human-readable identifier of the test series */
                public var slug: String

                /** Name of the test series */
                public var name: String

                /** Date of the latest test run that used this test series */
                public var mostRecentActivity: String?

                /** Most recent test runs */
                public var testRuns: [TestRuns]?

                public init(slug: String, name: String, mostRecentActivity: String? = nil, testRuns: [TestRuns]? = nil) {
                    self.slug = slug
                    self.name = name
                    self.mostRecentActivity = mostRecentActivity
                    self.testRuns = testRuns
                }

                private enum CodingKeys: String, CodingKey {
                    case slug
                    case name
                    case mostRecentActivity
                    case testRuns
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    slug = try container.decode(.slug)
                    name = try container.decode(.name)
                    mostRecentActivity = try container.decodeIfPresent(.mostRecentActivity)
                    testRuns = try container.decodeArrayIfPresent(.testRuns)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(slug, forKey: .slug)
                    try container.encode(name, forKey: .name)
                    try container.encodeIfPresent(mostRecentActivity, forKey: .mostRecentActivity)
                    try container.encodeIfPresent(testRuns, forKey: .testRuns)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.slug == object.slug else { return false }
                  guard self.name == object.name else { return false }
                  guard self.mostRecentActivity == object.mostRecentActivity else { return false }
                  guard self.testRuns == object.testRuns else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }

            /** Creates new test series for an application */
            public class Status400: APIModel {

                /** Status of the operation */
                public var status: String

                /** Human-readable message that describes the error */
                public var message: String

                public init(status: String, message: String) {
                    self.status = status
                    self.message = message
                }

                private enum CodingKeys: String, CodingKey {
                    case status
                    case message
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    status = try container.decode(.status)
                    message = try container.decode(.message)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(status, forKey: .status)
                    try container.encode(message, forKey: .message)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status400 else { return false }
                  guard self.status == object.status else { return false }
                  guard self.message == object.message else { return false }
                  return true
                }

                public static func == (lhs: Status400, rhs: Status400) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
            case status200(Status200)

            /** Invalid test series name */
            case status400(Status400)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                default: return nil
                }
            }

            public var failure: Status400? {
                switch self {
                case .status400(let response): return response
                default: return nil
                }
            }

            /// either success or failure value. Success is anything in the 200..<300 status code range
            public var responseResult: APIResponseResult<Status200, Status400> {
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
                case .status400(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                case .status400: return 400
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
                case 400: self = try .status400(decoder.decode(Status400.self, from: data))
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
