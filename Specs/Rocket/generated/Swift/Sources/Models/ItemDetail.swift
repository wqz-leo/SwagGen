//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class ItemDetail: ItemSummary {

    /** Advisory text about this item, related to the classification */
    public var advisoryText: String?

    /** Copyright information about this item */
    public var copyright: String?

    /** A list of credits associated with this item. */
    public var credits: [Credit]?

    /** An ordered list of custom name-value-pair item metadata.

Usually displayed on an item detail page.
 */
    public var customMetadata: [ItemCustomMetadata]?

    /** The description of this item. */
    public var description: String?

    /** The distributor of this item. */
    public var distributor: String?

    /** The full name of an episode. */
    public var episodeName: String?

    /** A list of episodes associated with this item. */
    public var episodes: ItemList?

    /** The optional date of an event.
Specific to a Program item type.
 */
    public var eventDate: Date?

    /** An array of genre paths mapping to the values within the `genres` array from ItemSummary.
 */
    public var genrePaths: [String]?

    /** The optional location (e.g. city) of an event.
Specific to a Program item type.
 */
    public var location: String?

    /** The season associated with this item. */
    public var season: ItemDetail?

    /** A list of seasons associated with this item. */
    public var seasons: ItemList?

    /** The season associated with this item. */
    public var show: ItemDetail?

    /** The total number of users who have rated this item. */
    public var totalUserRatings: Double?

    /** A list of trailers associated with this item. */
    public var trailers: [ItemSummary]?

    /** The optional venue of an event.
Specific to a Program item type.
 */
    public var venue: String?

    public init(id: String, type: ItemType, path: String, title: String, availableEpisodeCount: Int? = nil, availableSeasonCount: Int? = nil, averageUserRating: Double? = nil, badge: String? = nil, classification: ClassificationSummary? = nil, contextualTitle: String? = nil, customFields: [String: Any]? = nil, customId: String? = nil, duration: Int? = nil, episodeCount: Int? = nil, episodeNumber: Int? = nil, genres: [String]? = nil, hasClosedCaptions: Bool? = nil, images: [String: URL]? = nil, offers: [Offer]? = nil, releaseYear: Int? = nil, scopes: [String]? = nil, seasonId: String? = nil, seasonNumber: Int? = nil, shortDescription: String? = nil, showId: String? = nil, tagline: String? = nil, watchPath: String? = nil, advisoryText: String? = nil, copyright: String? = nil, credits: [Credit]? = nil, customMetadata: [ItemCustomMetadata]? = nil, description: String? = nil, distributor: String? = nil, episodeName: String? = nil, episodes: ItemList? = nil, eventDate: Date? = nil, genrePaths: [String]? = nil, location: String? = nil, season: ItemDetail? = nil, seasons: ItemList? = nil, show: ItemDetail? = nil, totalUserRatings: Double? = nil, trailers: [ItemSummary]? = nil, venue: String? = nil) {
        self.advisoryText = advisoryText
        self.copyright = copyright
        self.credits = credits
        self.customMetadata = customMetadata
        self.description = description
        self.distributor = distributor
        self.episodeName = episodeName
        self.episodes = episodes
        self.eventDate = eventDate
        self.genrePaths = genrePaths
        self.location = location
        self.season = season
        self.seasons = seasons
        self.show = show
        self.totalUserRatings = totalUserRatings
        self.trailers = trailers
        self.venue = venue
        super.init(id: id, type: type, path: path, title: title, availableEpisodeCount: availableEpisodeCount, availableSeasonCount: availableSeasonCount, averageUserRating: averageUserRating, badge: badge, classification: classification, contextualTitle: contextualTitle, customFields: customFields, customId: customId, duration: duration, episodeCount: episodeCount, episodeNumber: episodeNumber, genres: genres, hasClosedCaptions: hasClosedCaptions, images: images, offers: offers, releaseYear: releaseYear, scopes: scopes, seasonId: seasonId, seasonNumber: seasonNumber, shortDescription: shortDescription, showId: showId, tagline: tagline, watchPath: watchPath)
    }

    private enum CodingKeys: String, CodingKey {
        case advisoryText
        case copyright
        case credits
        case customMetadata
        case description
        case distributor
        case episodeName
        case episodes
        case eventDate
        case genrePaths
        case location
        case season
        case seasons
        case show
        case totalUserRatings
        case trailers
        case venue
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        advisoryText = try container.decodeIfPresent(.advisoryText)
        copyright = try container.decodeIfPresent(.copyright)
        credits = try container.decodeIfPresent(.credits)
        customMetadata = try container.decodeIfPresent(.customMetadata)
        description = try container.decodeIfPresent(.description)
        distributor = try container.decodeIfPresent(.distributor)
        episodeName = try container.decodeIfPresent(.episodeName)
        episodes = try container.decodeIfPresent(.episodes)
        eventDate = try container.decodeIfPresent(.eventDate)
        genrePaths = try container.decodeIfPresent(.genrePaths)
        location = try container.decodeIfPresent(.location)
        season = try container.decodeIfPresent(.season)
        seasons = try container.decodeIfPresent(.seasons)
        show = try container.decodeIfPresent(.show)
        totalUserRatings = try container.decodeIfPresent(.totalUserRatings)
        trailers = try container.decodeIfPresent(.trailers)
        venue = try container.decodeIfPresent(.venue)
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(advisoryText, forKey: .advisoryText)
        try container.encode(copyright, forKey: .copyright)
        try container.encode(credits, forKey: .credits)
        try container.encode(customMetadata, forKey: .customMetadata)
        try container.encode(description, forKey: .description)
        try container.encode(distributor, forKey: .distributor)
        try container.encode(episodeName, forKey: .episodeName)
        try container.encode(episodes, forKey: .episodes)
        try container.encode(eventDate, forKey: .eventDate)
        try container.encode(genrePaths, forKey: .genrePaths)
        try container.encode(location, forKey: .location)
        try container.encode(season, forKey: .season)
        try container.encode(seasons, forKey: .seasons)
        try container.encode(show, forKey: .show)
        try container.encode(totalUserRatings, forKey: .totalUserRatings)
        try container.encode(trailers, forKey: .trailers)
        try container.encode(venue, forKey: .venue)
        try super.encode(to: encoder)
    }

    override public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? ItemDetail else { return false }
      guard self.advisoryText == object.advisoryText else { return false }
      guard self.copyright == object.copyright else { return false }
      guard self.credits == object.credits else { return false }
      guard self.customMetadata == object.customMetadata else { return false }
      guard self.description == object.description else { return false }
      guard self.distributor == object.distributor else { return false }
      guard self.episodeName == object.episodeName else { return false }
      guard self.episodes == object.episodes else { return false }
      guard self.eventDate == object.eventDate else { return false }
      guard self.genrePaths == object.genrePaths else { return false }
      guard self.location == object.location else { return false }
      guard self.season == object.season else { return false }
      guard self.seasons == object.seasons else { return false }
      guard self.show == object.show else { return false }
      guard self.totalUserRatings == object.totalUserRatings else { return false }
      guard self.trailers == object.trailers else { return false }
      guard self.venue == object.venue else { return false }
      return super.isEqual(to: object)
    }
}
