//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class LatencyData: APIModel {

    public var endTime: DateTime?

    public var metricValues: [MetricValues]?

    public var name: String?

    public var startTime: DateTime?

    public var unit: String?

    public init(endTime: DateTime? = nil, metricValues: [MetricValues]? = nil, name: String? = nil, startTime: DateTime? = nil, unit: String? = nil) {
        self.endTime = endTime
        self.metricValues = metricValues
        self.name = name
        self.startTime = startTime
        self.unit = unit
    }

    private enum CodingKeys: String, CodingKey {
        case endTime
        case metricValues
        case name
        case startTime
        case unit
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        endTime = try container.decodeIfPresent(.endTime)
        metricValues = try container.decodeArrayIfPresent(.metricValues)
        name = try container.decodeIfPresent(.name)
        startTime = try container.decodeIfPresent(.startTime)
        unit = try container.decodeIfPresent(.unit)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(endTime, forKey: .endTime)
        try container.encodeIfPresent(metricValues, forKey: .metricValues)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(startTime, forKey: .startTime)
        try container.encodeIfPresent(unit, forKey: .unit)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? LatencyData else { return false }
      guard self.endTime == object.endTime else { return false }
      guard self.metricValues == object.metricValues else { return false }
      guard self.name == object.name else { return false }
      guard self.startTime == object.startTime else { return false }
      guard self.unit == object.unit else { return false }
      return true
    }

    public static func == (lhs: LatencyData, rhs: LatencyData) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
