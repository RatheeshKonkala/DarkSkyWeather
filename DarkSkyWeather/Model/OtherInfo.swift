//
//  OtherInfo.swift
//  DarkSkyWeather
//
//  Created by Ratheesh Reddy on 12/9/17.
//  Copyright © 2017 Ratheesh Reddy. All rights reserved.
//

import Foundation

struct OtherInfo:Decodable {
    let wind: WindSpeed
    let sys: SunRiseSet
}

struct WindSpeed:Decodable {
    let speed: Float?
    //Formatting Wind Speed
    var formattedSpeed: String {
        guard let speed = speed else {
            return "NA"
        }
        return String(format:"WindSpeed\n%.1f",speed)
    }
}

struct SunRiseSet: Decodable {
    let sunrise: Double?
    let sunset: Double?
    //Formatting Sunrise Epouch time
    var formattedSunRise:String {
        guard let sunrise = sunrise else {
            return "NA"
        }
        let mytime = Date(timeIntervalSince1970:  sunrise)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let timeStr = formatter.string(from: mytime)
        return String(format:"Sunraise\n%@",timeStr)
    }
    //Formatting Sunset Epouch time
    var formattedSunSet:String {
        guard let sunSet = sunset else {
            return "NA"
        }
        let mytime = Date(timeIntervalSince1970:  sunSet)
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let timeStr = formatter.string(from: mytime)
        return String(format:"Sunset\n%@",timeStr)
    }
}
