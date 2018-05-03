//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ResponseError: Codable, Equatable {

    public var error: ErrorObject

    public init(error: ErrorObject) {
        self.error = error
    }

    private enum CodingKeys: String, CodingKey {
        case error
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        error = try container.decode(.error)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(error, forKey: .error)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ResponseError else { return false }
      guard self.error == object.error else { return false }
      return true
    }

    public static func == (lhs: ResponseError, rhs: ResponseError) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
