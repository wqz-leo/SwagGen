//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class TrainLoading: Codable, Equatable {

    /** Direction in regards to Journey Planner i.e. inbound or outbound */
    public var direction: String?

    /** The Line Name e.g. "Victoria" */
    public var line: String?

    /** Direction of the Line e.g. NB, SB, WB etc. */
    public var lineDirection: String?

    /** Naptan of the adjacent station */
    public var naptanTo: String?

    /** Direction displayed on the platform e.g. NB, SB, WB etc. */
    public var platformDirection: String?

    /** Time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc. */
    public var timeSlice: String?

    /** Scale between 1-6, 
             1 = Very quiet, 2 = Quiet, 3 = Fairly busy, 4 = Busy, 5 = Very busy, 6 = Exceptionally busy */
    public var value: Int?

    public init(direction: String? = nil, line: String? = nil, lineDirection: String? = nil, naptanTo: String? = nil, platformDirection: String? = nil, timeSlice: String? = nil, value: Int? = nil) {
        self.direction = direction
        self.line = line
        self.lineDirection = lineDirection
        self.naptanTo = naptanTo
        self.platformDirection = platformDirection
        self.timeSlice = timeSlice
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case direction
        case line
        case lineDirection
        case naptanTo
        case platformDirection
        case timeSlice
        case value
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        direction = try container.decodeIfPresent(.direction)
        line = try container.decodeIfPresent(.line)
        lineDirection = try container.decodeIfPresent(.lineDirection)
        naptanTo = try container.decodeIfPresent(.naptanTo)
        platformDirection = try container.decodeIfPresent(.platformDirection)
        timeSlice = try container.decodeIfPresent(.timeSlice)
        value = try container.decodeIfPresent(.value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(direction, forKey: .direction)
        try container.encode(line, forKey: .line)
        try container.encode(lineDirection, forKey: .lineDirection)
        try container.encode(naptanTo, forKey: .naptanTo)
        try container.encode(platformDirection, forKey: .platformDirection)
        try container.encode(timeSlice, forKey: .timeSlice)
        try container.encode(value, forKey: .value)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? TrainLoading else { return false }
      guard self.direction == object.direction else { return false }
      guard self.line == object.line else { return false }
      guard self.lineDirection == object.lineDirection else { return false }
      guard self.naptanTo == object.naptanTo else { return false }
      guard self.platformDirection == object.platformDirection else { return false }
      guard self.timeSlice == object.timeSlice else { return false }
      guard self.value == object.value else { return false }
      return true
    }

    public static func == (lhs: TrainLoading, rhs: TrainLoading) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
