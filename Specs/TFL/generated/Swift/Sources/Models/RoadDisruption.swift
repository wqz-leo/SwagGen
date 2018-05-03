//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class RoadDisruption: Codable, Equatable {

    /** Describes the nature of disruption e.g. Traffic Incidents, Works */
    public var category: String?

    /** Full text of comments describing the disruption, including details of any road closures and diversions, where appropriate. */
    public var comments: String?

    /** The Ids of affected corridors, if any. */
    public var corridorIds: [String]?

    /** Text of the most recent update from the LSTCC on the state of the
             disruption, including the current traffic impact and any advice to
             road users. */
    public var currentUpdate: String?

    /** The time when the last CurrentUpdate description was recorded, 
            or null if no CurrentUpdate has been applied. */
    public var currentUpdateDateTime: Date?

    /** The date and time on which the disruption ended. For planned disruptions, this date will have a valid value. For unplanned 
            disruptions in progress, this field will be omitted. */
    public var endDateTime: Date?

    /** Geography version of Point for output as GeoJSON.
            Can not use Geometry in a consistent way as non-TIMS disruptions do not have a polygon */
    public var geography: DbGeography?

    /** GeoJSON formatted latitude/longitude (WGS84) pairs forming an enclosed polyline or polygon. The polygon will only be included where affected streets information
            is not available for the disruption, would be inappropriate (e.g. a very large number of streets), or is centred on an area without streets (e.g. a football stadium). */
    public var geometry: DbGeography?

    /** True if any of the affected Streets have a "Full Closure" status, false otherwise. A RoadDisruption that has HasClosures is considered a 
            Severe or Serious disruption for severity filtering purposes. */
    public var hasClosures: Bool?

    /** Unique identifier for the road disruption */
    public var id: String?

    /** True if the disruption is planned on a future date that is open to change */
    public var isProvisional: Bool?

    /** The date and time on which the disruption was last modified in the system. This information can reliably be used by a developer to quickly
            compare two instances of the same disruption to determine if it has been changed. */
    public var lastModifiedTime: Date?

    /** This describes the level of potential impact on traffic operations of the disruption. 
            High = e.g. a one-off disruption on a major or high profile route which will require a high level of operational attention 
            Medium = This is the default value 
            Low = e.g. a frequently occurring disruption which is well known */
    public var levelOfInterest: String?

    /** The text of any associated link */
    public var linkText: String?

    /** The url of any associated link */
    public var linkUrl: String?

    /** Main road name / number (borough) or preset area name where the disruption is located. This might be useful for a map popup where space is limited. */
    public var location: String?

    /** An ordinal of the disruption based on severity, level of interest and corridor. */
    public var ordinal: Int?

    /** Latitude and longitude (WGS84) of the centroid of the disruption, stored in a geoJSON-formatted string. */
    public var point: String?

    public var publishEndDate: Date?

    /** TDM Additional properties */
    public var publishStartDate: Date?

    public var recurringSchedules: [RoadDisruptionSchedule]?

    public var roadDisruptionImpactAreas: [RoadDisruptionImpactArea]?

    public var roadDisruptionLines: [RoadDisruptionLine]?

    /** Any associated road project */
    public var roadProject: RoadProject?

    /** A description of the severity of the disruption. */
    public var severity: String?

    /** The date and time which the disruption started. For a planned disruption (i.e. planned road works) this date will be in the future.
            For unplanned disruptions, this will default to the date on which the disruption was first recorded, but may be adjusted by the operator. */
    public var startDateTime: Date?

    /** This describes the status of the disruption.  
            Active = currently in progress 
            Active Long Term = currently in progress and long term
            Scheduled = scheduled to start within the next 180 days
            Recurring Works = planned maintenance works that follow a regular routine or pattern and whose next occurrence is to start within the next 180 days.
            Recently Cleared = recently cleared in the last 24 hours
            Note that the status of Scheduled or Recurring Works disruptions will change to Active when they start, and will change status again when they end. */
    public var status: String?

    /** A collection of zero or more streets affected by the disruption. */
    public var streets: [Street]?

    /** Describes the sub-category of disruption e.g. Collapsed Manhole, Abnormal Load */
    public var subCategory: String?

    public var timeFrame: String?

    /** URL to retrieve this road disruption */
    public var url: String?

    public init(category: String? = nil, comments: String? = nil, corridorIds: [String]? = nil, currentUpdate: String? = nil, currentUpdateDateTime: Date? = nil, endDateTime: Date? = nil, geography: DbGeography? = nil, geometry: DbGeography? = nil, hasClosures: Bool? = nil, id: String? = nil, isProvisional: Bool? = nil, lastModifiedTime: Date? = nil, levelOfInterest: String? = nil, linkText: String? = nil, linkUrl: String? = nil, location: String? = nil, ordinal: Int? = nil, point: String? = nil, publishEndDate: Date? = nil, publishStartDate: Date? = nil, recurringSchedules: [RoadDisruptionSchedule]? = nil, roadDisruptionImpactAreas: [RoadDisruptionImpactArea]? = nil, roadDisruptionLines: [RoadDisruptionLine]? = nil, roadProject: RoadProject? = nil, severity: String? = nil, startDateTime: Date? = nil, status: String? = nil, streets: [Street]? = nil, subCategory: String? = nil, timeFrame: String? = nil, url: String? = nil) {
        self.category = category
        self.comments = comments
        self.corridorIds = corridorIds
        self.currentUpdate = currentUpdate
        self.currentUpdateDateTime = currentUpdateDateTime
        self.endDateTime = endDateTime
        self.geography = geography
        self.geometry = geometry
        self.hasClosures = hasClosures
        self.id = id
        self.isProvisional = isProvisional
        self.lastModifiedTime = lastModifiedTime
        self.levelOfInterest = levelOfInterest
        self.linkText = linkText
        self.linkUrl = linkUrl
        self.location = location
        self.ordinal = ordinal
        self.point = point
        self.publishEndDate = publishEndDate
        self.publishStartDate = publishStartDate
        self.recurringSchedules = recurringSchedules
        self.roadDisruptionImpactAreas = roadDisruptionImpactAreas
        self.roadDisruptionLines = roadDisruptionLines
        self.roadProject = roadProject
        self.severity = severity
        self.startDateTime = startDateTime
        self.status = status
        self.streets = streets
        self.subCategory = subCategory
        self.timeFrame = timeFrame
        self.url = url
    }

    private enum CodingKeys: String, CodingKey {
        case category
        case comments
        case corridorIds
        case currentUpdate
        case currentUpdateDateTime
        case endDateTime
        case geography
        case geometry
        case hasClosures
        case id
        case isProvisional
        case lastModifiedTime
        case levelOfInterest
        case linkText
        case linkUrl
        case location
        case ordinal
        case point
        case publishEndDate
        case publishStartDate
        case recurringSchedules
        case roadDisruptionImpactAreas
        case roadDisruptionLines
        case roadProject
        case severity
        case startDateTime
        case status
        case streets
        case subCategory
        case timeFrame
        case url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        category = try container.decodeIfPresent(.category)
        comments = try container.decodeIfPresent(.comments)
        corridorIds = try container.decodeIfPresent(.corridorIds)
        currentUpdate = try container.decodeIfPresent(.currentUpdate)
        currentUpdateDateTime = try container.decodeIfPresent(.currentUpdateDateTime)
        endDateTime = try container.decodeIfPresent(.endDateTime)
        geography = try container.decodeIfPresent(.geography)
        geometry = try container.decodeIfPresent(.geometry)
        hasClosures = try container.decodeIfPresent(.hasClosures)
        id = try container.decodeIfPresent(.id)
        isProvisional = try container.decodeIfPresent(.isProvisional)
        lastModifiedTime = try container.decodeIfPresent(.lastModifiedTime)
        levelOfInterest = try container.decodeIfPresent(.levelOfInterest)
        linkText = try container.decodeIfPresent(.linkText)
        linkUrl = try container.decodeIfPresent(.linkUrl)
        location = try container.decodeIfPresent(.location)
        ordinal = try container.decodeIfPresent(.ordinal)
        point = try container.decodeIfPresent(.point)
        publishEndDate = try container.decodeIfPresent(.publishEndDate)
        publishStartDate = try container.decodeIfPresent(.publishStartDate)
        recurringSchedules = try container.decodeIfPresent(.recurringSchedules)
        roadDisruptionImpactAreas = try container.decodeIfPresent(.roadDisruptionImpactAreas)
        roadDisruptionLines = try container.decodeIfPresent(.roadDisruptionLines)
        roadProject = try container.decodeIfPresent(.roadProject)
        severity = try container.decodeIfPresent(.severity)
        startDateTime = try container.decodeIfPresent(.startDateTime)
        status = try container.decodeIfPresent(.status)
        streets = try container.decodeIfPresent(.streets)
        subCategory = try container.decodeIfPresent(.subCategory)
        timeFrame = try container.decodeIfPresent(.timeFrame)
        url = try container.decodeIfPresent(.url)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(category, forKey: .category)
        try container.encode(comments, forKey: .comments)
        try container.encode(corridorIds, forKey: .corridorIds)
        try container.encode(currentUpdate, forKey: .currentUpdate)
        try container.encode(currentUpdateDateTime, forKey: .currentUpdateDateTime)
        try container.encode(endDateTime, forKey: .endDateTime)
        try container.encode(geography, forKey: .geography)
        try container.encode(geometry, forKey: .geometry)
        try container.encode(hasClosures, forKey: .hasClosures)
        try container.encode(id, forKey: .id)
        try container.encode(isProvisional, forKey: .isProvisional)
        try container.encode(lastModifiedTime, forKey: .lastModifiedTime)
        try container.encode(levelOfInterest, forKey: .levelOfInterest)
        try container.encode(linkText, forKey: .linkText)
        try container.encode(linkUrl, forKey: .linkUrl)
        try container.encode(location, forKey: .location)
        try container.encode(ordinal, forKey: .ordinal)
        try container.encode(point, forKey: .point)
        try container.encode(publishEndDate, forKey: .publishEndDate)
        try container.encode(publishStartDate, forKey: .publishStartDate)
        try container.encode(recurringSchedules, forKey: .recurringSchedules)
        try container.encode(roadDisruptionImpactAreas, forKey: .roadDisruptionImpactAreas)
        try container.encode(roadDisruptionLines, forKey: .roadDisruptionLines)
        try container.encode(roadProject, forKey: .roadProject)
        try container.encode(severity, forKey: .severity)
        try container.encode(startDateTime, forKey: .startDateTime)
        try container.encode(status, forKey: .status)
        try container.encode(streets, forKey: .streets)
        try container.encode(subCategory, forKey: .subCategory)
        try container.encode(timeFrame, forKey: .timeFrame)
        try container.encode(url, forKey: .url)
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? RoadDisruption else { return false }
      guard self.category == object.category else { return false }
      guard self.comments == object.comments else { return false }
      guard self.corridorIds == object.corridorIds else { return false }
      guard self.currentUpdate == object.currentUpdate else { return false }
      guard self.currentUpdateDateTime == object.currentUpdateDateTime else { return false }
      guard self.endDateTime == object.endDateTime else { return false }
      guard self.geography == object.geography else { return false }
      guard self.geometry == object.geometry else { return false }
      guard self.hasClosures == object.hasClosures else { return false }
      guard self.id == object.id else { return false }
      guard self.isProvisional == object.isProvisional else { return false }
      guard self.lastModifiedTime == object.lastModifiedTime else { return false }
      guard self.levelOfInterest == object.levelOfInterest else { return false }
      guard self.linkText == object.linkText else { return false }
      guard self.linkUrl == object.linkUrl else { return false }
      guard self.location == object.location else { return false }
      guard self.ordinal == object.ordinal else { return false }
      guard self.point == object.point else { return false }
      guard self.publishEndDate == object.publishEndDate else { return false }
      guard self.publishStartDate == object.publishStartDate else { return false }
      guard self.recurringSchedules == object.recurringSchedules else { return false }
      guard self.roadDisruptionImpactAreas == object.roadDisruptionImpactAreas else { return false }
      guard self.roadDisruptionLines == object.roadDisruptionLines else { return false }
      guard self.roadProject == object.roadProject else { return false }
      guard self.severity == object.severity else { return false }
      guard self.startDateTime == object.startDateTime else { return false }
      guard self.status == object.status else { return false }
      guard self.streets == object.streets else { return false }
      guard self.subCategory == object.subCategory else { return false }
      guard self.timeFrame == object.timeFrame else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: RoadDisruption, rhs: RoadDisruption) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
