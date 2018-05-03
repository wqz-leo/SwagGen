//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ProfileTokenRequest: Codable, Equatable {

    /** The scope(s) of the token(s) required. */
    public enum Scopes: String, Codable {
        case catalog = "Catalog"
        case commerce = "Commerce"
        case settings = "Settings"

        public static let cases: [Scopes] = [
          .catalog,
          .commerce,
          .settings,
        ]
    }

    /** The id of the profile the token should grant access rights to. */
    public var profileId: String

    /** The scope(s) of the token(s) required. */
    public var scopes: [Scopes]

    /** The pin associated with this profile, if any. */
    public var pin: String?

    public init(profileId: String, scopes: [Scopes], pin: String? = nil) {
        self.profileId = profileId
        self.scopes = scopes
        self.pin = pin
    }

    private enum CodingKeys: String, CodingKey {
        case profileId
        case scopes
        case pin
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        profileId = try container.decode(.profileId)
        scopes = try container.decode(.scopes)
        pin = try container.decodeIfPresent(.pin)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(profileId, forKey: .profileId)
        try container.encode(scopes, forKey: .scopes)
        try container.encode(pin, forKey: .pin)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ProfileTokenRequest else { return false }
      guard self.profileId == object.profileId else { return false }
      guard self.scopes == object.scopes else { return false }
      guard self.pin == object.pin else { return false }
      return true
    }

    public static func == (lhs: ProfileTokenRequest, rhs: ProfileTokenRequest) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
