//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Mbaas {

    /**
    Checks that the Azure Cosmos DB account name already exists. A valid account name may contain only lowercase letters, numbers, and the '-' character, and must be between 3 and 31 characters.
    */
    public enum DataCheckNameExists {

        public static let service = APIService<Response>(id: "data_checkNameExists", tag: "mbaas", method: "HEAD", path: "/v0.1/apps/{owner_name}/{app_name}/data/database_account_names/{accountName}", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** ARM token */
                public var aCAuthorizationARM: String

                /** Account Name */
                public var accountName: String

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(aCAuthorizationARM: String, accountName: String, ownerName: String, appName: String) {
                    self.aCAuthorizationARM = aCAuthorizationARM
                    self.accountName = accountName
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: DataCheckNameExists.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(aCAuthorizationARM: String, accountName: String, ownerName: String, appName: String) {
                let options = Options(aCAuthorizationARM: aCAuthorizationARM, accountName: accountName, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "accountName" + "}", with: "\(self.options.accountName)").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {
            public typealias SuccessType = Void

            /** OK. The account name is valid but is already in use. */
            case status200

            /** Bad request. Account name in not valid. */
            case status400

            /** Unauthorized. Provided ARM Authorization token is invalid or expired. */
            case status401

            /** Not Found. The account name is available and valid. */
            case status404

            /** Internal Error. */
            case status500

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
                case .status400: return 400
                case .status401: return 401
                case .status404: return 404
                case .status500: return 500
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                case .status400: return false
                case .status401: return false
                case .status404: return false
                case .status500: return false
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = .status200
                case 400: self = .status400
                case 401: self = .status401
                case 404: self = .status404
                case 500: self = .status500
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
