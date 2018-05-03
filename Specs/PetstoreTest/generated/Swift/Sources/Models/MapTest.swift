//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class MapTest: Codable, Equatable {

    public enum MapOfEnumString: String, Codable {
        case upper = "UPPER"
        case lower = "lower"

        public static let cases: [MapOfEnumString] = [
          .upper,
          .lower,
        ]
    }

    public var mapMapOfString: [String: [String: String]]?

    public var mapOfEnumString: [String: MapOfEnumString]?

    public init(mapMapOfString: [String: [String: String]]? = nil, mapOfEnumString: [String: MapOfEnumString]? = nil) {
        self.mapMapOfString = mapMapOfString
        self.mapOfEnumString = mapOfEnumString
    }

    private enum CodingKeys: String, CodingKey {
        case mapMapOfString = "map_map_of_string"
        case mapOfEnumString = "map_of_enum_string"
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        mapMapOfString = try container.decodeIfPresent(.mapMapOfString)
        mapOfEnumString = try container.decodeIfPresent(.mapOfEnumString)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(mapMapOfString, forKey: .mapMapOfString)
        try container.encode(mapOfEnumString, forKey: .mapOfEnumString)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? MapTest else { return false }
      guard self.mapMapOfString == object.mapMapOfString else { return false }
      guard self.mapOfEnumString == object.mapOfEnumString else { return false }
      return true
    }

    public static func == (lhs: MapTest, rhs: MapTest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
