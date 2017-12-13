//
//  TodaysWeather+CoreDataProperties.swift
//  DarkSkyWeather
//
//  Created by Ratheesh Konkala on 12/08/17.
//  Copyright © 2017 Ratheesh Konkala. All rights reserved.
//
//

import Foundation
import CoreData


extension TodaysWeather {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TodaysWeather> {
        return NSFetchRequest<TodaysWeather>(entityName: "TodaysWeather")
    }

    @NSManaged public var datetime: Double
    @NSManaged public var location: String?
    @NSManaged public var summary: String?
    @NSManaged public var temperature: Float

}
