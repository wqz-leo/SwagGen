//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class Object: Codable, Equatable {

    public init() {
    }


    public required init(from decoder: Decoder) throws {
    }

    public func encode(to encoder: Encoder) throws {
    }

    public func isEqual(to object: Any?) -> Bool {
      guard object is Object else { return false }
      return true
    }

    public static func == (lhs: Object, rhs: Object) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
