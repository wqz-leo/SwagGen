//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class PasswordResetRequest: Codable, Equatable {

    /** The email address of the primary account profile to reset the password for. */
    public var email: String

    /** The new password for the primary account profile. */
    public var password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }

    private enum CodingKeys: String, CodingKey {
        case email
        case password
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        email = try container.decode(.email)
        password = try container.decode(.password)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(email, forKey: .email)
        try container.encode(password, forKey: .password)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? PasswordResetRequest else { return false }
      guard self.email == object.email else { return false }
      guard self.password == object.password else { return false }
      return true
    }

    public static func == (lhs: PasswordResetRequest, rhs: PasswordResetRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
