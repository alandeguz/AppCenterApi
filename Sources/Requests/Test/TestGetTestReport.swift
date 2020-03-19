//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

extension EngagementAPI.Test {

    /**
    Returns a single test report
    */
    public enum TestGetTestReport {

        public static let service = APIService<Response>(id: "test_getTestReport", tag: "test", method: "GET", path: "/v0.1/apps/{owner_name}/{app_name}/test_runs/{test_run_id}/report", hasBody: false, securityRequirement: SecurityRequirement(type: "APIToken", scope: ""))

        public final class Request: APIRequest<Response> {

            public struct Options {

                /** The ID of the test run */
                public var testRunId: ID

                /** The name of the owner */
                public var ownerName: String

                /** The name of the application */
                public var appName: String

                public init(testRunId: ID, ownerName: String, appName: String) {
                    self.testRunId = testRunId
                    self.ownerName = ownerName
                    self.appName = appName
                }
            }

            public var options: Options

            public init(options: Options) {
                self.options = options
                super.init(service: TestGetTestReport.service)
            }

            /// convenience initialiser so an Option doesn't have to be created
            public convenience init(testRunId: ID, ownerName: String, appName: String) {
                let options = Options(testRunId: testRunId, ownerName: ownerName, appName: appName)
                self.init(options: options)
            }

            public override var path: String {
                return super.path.replacingOccurrences(of: "{" + "testRunId" + "}", with: "\(self.options.testRunId.encode())").replacingOccurrences(of: "{" + "ownerName" + "}", with: "\(self.options.ownerName)").replacingOccurrences(of: "{" + "appName" + "}", with: "\(self.options.appName)")
            }
        }

        public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible {

            /** Returns a single test report */
            public class Status200: APIModel {

                public var appUploadId: String

                public var date: String

                public var testType: String

                public var platform: String

                public var stats: Stats

                public var id: String

                public var schemaVersion: Double

                public var revision: Double

                public var features: [Features]

                public var finishedDeviceSnapshots: [String]

                public var deviceLogs: [DeviceLogs]

                public var dateFinished: String

                public var errorMessage: String?

                public var snapshotFatalErrors: [SnapshotFatalErrors]?

                /** Returns a single test report */
                public class Stats: APIModel {

                    public var os: Double

                    public var devices: Double

                    public var filesize: Double

                    public var totalDeviceMinutes: Double

                    public var devicesNotRunned: Double

                    public var failed: Double

                    public var skipped: Double

                    public var passed: Double

                    public var total: Double

                    public var devicesFinished: Double

                    public var devicesFailed: Double

                    public var devicesSkipped: Double

                    public var stepCount: Double

                    public var artifacts: [String: String]?

                    public init(os: Double, devices: Double, filesize: Double, totalDeviceMinutes: Double, devicesNotRunned: Double, failed: Double, skipped: Double, passed: Double, total: Double, devicesFinished: Double, devicesFailed: Double, devicesSkipped: Double, stepCount: Double, artifacts: [String: String]? = nil) {
                        self.os = os
                        self.devices = devices
                        self.filesize = filesize
                        self.totalDeviceMinutes = totalDeviceMinutes
                        self.devicesNotRunned = devicesNotRunned
                        self.failed = failed
                        self.skipped = skipped
                        self.passed = passed
                        self.total = total
                        self.devicesFinished = devicesFinished
                        self.devicesFailed = devicesFailed
                        self.devicesSkipped = devicesSkipped
                        self.stepCount = stepCount
                        self.artifacts = artifacts
                    }

                    private enum CodingKeys: String, CodingKey {
                        case os
                        case devices
                        case filesize
                        case totalDeviceMinutes
                        case devicesNotRunned = "devices_not_runned"
                        case failed
                        case skipped
                        case passed
                        case total
                        case devicesFinished = "devices_finished"
                        case devicesFailed = "devices_failed"
                        case devicesSkipped = "devices_skipped"
                        case stepCount = "step_count"
                        case artifacts
                    }

                    public required init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)

                        os = try container.decode(.os)
                        devices = try container.decode(.devices)
                        filesize = try container.decode(.filesize)
                        totalDeviceMinutes = try container.decode(.totalDeviceMinutes)
                        devicesNotRunned = try container.decode(.devicesNotRunned)
                        failed = try container.decode(.failed)
                        skipped = try container.decode(.skipped)
                        passed = try container.decode(.passed)
                        total = try container.decode(.total)
                        devicesFinished = try container.decode(.devicesFinished)
                        devicesFailed = try container.decode(.devicesFailed)
                        devicesSkipped = try container.decode(.devicesSkipped)
                        stepCount = try container.decode(.stepCount)
                        artifacts = try container.decodeIfPresent(.artifacts)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)

                        try container.encode(os, forKey: .os)
                        try container.encode(devices, forKey: .devices)
                        try container.encode(filesize, forKey: .filesize)
                        try container.encode(totalDeviceMinutes, forKey: .totalDeviceMinutes)
                        try container.encode(devicesNotRunned, forKey: .devicesNotRunned)
                        try container.encode(failed, forKey: .failed)
                        try container.encode(skipped, forKey: .skipped)
                        try container.encode(passed, forKey: .passed)
                        try container.encode(total, forKey: .total)
                        try container.encode(devicesFinished, forKey: .devicesFinished)
                        try container.encode(devicesFailed, forKey: .devicesFailed)
                        try container.encode(devicesSkipped, forKey: .devicesSkipped)
                        try container.encode(stepCount, forKey: .stepCount)
                        try container.encodeIfPresent(artifacts, forKey: .artifacts)
                    }

                    public func isEqual(to object: Any?) -> Bool {
                      guard let object = object as? Stats else { return false }
                      guard self.os == object.os else { return false }
                      guard self.devices == object.devices else { return false }
                      guard self.filesize == object.filesize else { return false }
                      guard self.totalDeviceMinutes == object.totalDeviceMinutes else { return false }
                      guard self.devicesNotRunned == object.devicesNotRunned else { return false }
                      guard self.failed == object.failed else { return false }
                      guard self.skipped == object.skipped else { return false }
                      guard self.passed == object.passed else { return false }
                      guard self.total == object.total else { return false }
                      guard self.devicesFinished == object.devicesFinished else { return false }
                      guard self.devicesFailed == object.devicesFailed else { return false }
                      guard self.devicesSkipped == object.devicesSkipped else { return false }
                      guard self.stepCount == object.stepCount else { return false }
                      guard self.artifacts == object.artifacts else { return false }
                      return true
                    }

                    public static func == (lhs: Stats, rhs: Stats) -> Bool {
                        return lhs.isEqual(to: rhs)
                    }
                }

                public init(appUploadId: String, date: String, testType: String, platform: String, stats: Stats, id: String, schemaVersion: Double, revision: Double, features: [Features], finishedDeviceSnapshots: [String], deviceLogs: [DeviceLogs], dateFinished: String, errorMessage: String? = nil, snapshotFatalErrors: [SnapshotFatalErrors]? = nil) {
                    self.appUploadId = appUploadId
                    self.date = date
                    self.testType = testType
                    self.platform = platform
                    self.stats = stats
                    self.id = id
                    self.schemaVersion = schemaVersion
                    self.revision = revision
                    self.features = features
                    self.finishedDeviceSnapshots = finishedDeviceSnapshots
                    self.deviceLogs = deviceLogs
                    self.dateFinished = dateFinished
                    self.errorMessage = errorMessage
                    self.snapshotFatalErrors = snapshotFatalErrors
                }

                private enum CodingKeys: String, CodingKey {
                    case appUploadId = "app_upload_id"
                    case date
                    case testType
                    case platform
                    case stats
                    case id
                    case schemaVersion = "schema_version"
                    case revision
                    case features
                    case finishedDeviceSnapshots = "finished_device_snapshots"
                    case deviceLogs = "device_logs"
                    case dateFinished = "date_finished"
                    case errorMessage
                    case snapshotFatalErrors = "snapshot_fatal_errors"
                }

                public required init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)

                    appUploadId = try container.decode(.appUploadId)
                    date = try container.decode(.date)
                    testType = try container.decode(.testType)
                    platform = try container.decode(.platform)
                    stats = try container.decode(.stats)
                    id = try container.decode(.id)
                    schemaVersion = try container.decode(.schemaVersion)
                    revision = try container.decode(.revision)
                    features = try container.decodeArray(.features)
                    finishedDeviceSnapshots = try container.decodeArray(.finishedDeviceSnapshots)
                    deviceLogs = try container.decodeArray(.deviceLogs)
                    dateFinished = try container.decode(.dateFinished)
                    errorMessage = try container.decodeIfPresent(.errorMessage)
                    snapshotFatalErrors = try container.decodeArrayIfPresent(.snapshotFatalErrors)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)

                    try container.encode(appUploadId, forKey: .appUploadId)
                    try container.encode(date, forKey: .date)
                    try container.encode(testType, forKey: .testType)
                    try container.encode(platform, forKey: .platform)
                    try container.encode(stats, forKey: .stats)
                    try container.encode(id, forKey: .id)
                    try container.encode(schemaVersion, forKey: .schemaVersion)
                    try container.encode(revision, forKey: .revision)
                    try container.encode(features, forKey: .features)
                    try container.encode(finishedDeviceSnapshots, forKey: .finishedDeviceSnapshots)
                    try container.encode(deviceLogs, forKey: .deviceLogs)
                    try container.encode(dateFinished, forKey: .dateFinished)
                    try container.encodeIfPresent(errorMessage, forKey: .errorMessage)
                    try container.encodeIfPresent(snapshotFatalErrors, forKey: .snapshotFatalErrors)
                }

                public func isEqual(to object: Any?) -> Bool {
                  guard let object = object as? Status200 else { return false }
                  guard self.appUploadId == object.appUploadId else { return false }
                  guard self.date == object.date else { return false }
                  guard self.testType == object.testType else { return false }
                  guard self.platform == object.platform else { return false }
                  guard self.stats == object.stats else { return false }
                  guard self.id == object.id else { return false }
                  guard self.schemaVersion == object.schemaVersion else { return false }
                  guard self.revision == object.revision else { return false }
                  guard self.features == object.features else { return false }
                  guard self.finishedDeviceSnapshots == object.finishedDeviceSnapshots else { return false }
                  guard self.deviceLogs == object.deviceLogs else { return false }
                  guard self.dateFinished == object.dateFinished else { return false }
                  guard self.errorMessage == object.errorMessage else { return false }
                  guard self.snapshotFatalErrors == object.snapshotFatalErrors else { return false }
                  return true
                }

                public static func == (lhs: Status200, rhs: Status200) -> Bool {
                    return lhs.isEqual(to: rhs)
                }
            }
            public typealias SuccessType = Status200

            /** OK */
            case status200(Status200)

            public var success: Status200? {
                switch self {
                case .status200(let response): return response
                }
            }

            public var response: Any {
                switch self {
                case .status200(let response): return response
                }
            }

            public var statusCode: Int {
                switch self {
                case .status200: return 200
                }
            }

            public var successful: Bool {
                switch self {
                case .status200: return true
                }
            }

            public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws {
                switch statusCode {
                case 200: self = try .status200(decoder.decode(Status200.self, from: data))
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
