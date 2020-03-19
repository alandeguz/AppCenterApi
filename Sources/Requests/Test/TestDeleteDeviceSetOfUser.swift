//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Test {

    /**
    Deletes a device set belonging to the user
    */
    public enum TestDeleteDeviceSetOfUser {

        public static let service = APIService<Response>(id: "test_deleteDeviceSetOfUser", tag: "test", method: "DELETE", path: "/v0.1/apps/{owner_name}/{app_name}/user/device_sets/{id}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The UUID of the device set */
                public var id: ID

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(id: ID, ownerName: String, appName: String) {
                    self.id = id
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: TestDeleteDeviceSetOfUser.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(id: ID, ownerName: String, appName: String) {
                let options = Options(id: id, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "id" + "}", with: "\(self.options.id.encode())").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** OK */
            case status200

            /** Device set with the given ID was not found */
            case status404

            public var success: Void? {
                switch self {
                case .status200: return ()
                default: return nil
                }
            }

            public var response: Any {
                switch self {
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
                case 404: self = .status404
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
