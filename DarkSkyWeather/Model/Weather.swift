//
//  Weather.swift
//  DarkSkyWeather
//
//  Created by Ratheesh Konkala on 12/07/17.
//  Copyright © 2017 Ratheesh Konkala. All rights reserved.
//

import Foundation

struct Weather: Decodable {
    let timezone: String?
    let currently: CurrentWeather
    let daily: DailyWeather
}
struct CurrentWeather: Decodable {
    let time: Double?
    let temperature: Float?
    let summary: String?
    //Formarting Time Epouch Value
    var formattedTimeZone:String {
        guard let time = time else {
            return "NA"
        }
        let myDate = Date(timeIntervalSince1970:  time)
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter.string(from: myDate)
    }
    
    //Formarting Temperature Value
    var formattedTemperature:String {
        guard let temp = temperature else {
            return "0.0ºF"
        }
        return String(format:"%.fºF",temp)
    }
}

struct DailyWeather: Decodable {
    let summary: String?
    let data: [DailyData]
    
    var formattedSummary: String {
        guard let summary = summary else {
            return "NA"
        }
        return summary
    }
}

struct DailyData: Decodable {
    let time: Double?
    let temperatureHigh: Float?
    let temperatureLow: Float?
    let summary: String?
    //Formarting Summary
    var formattedSummary: String {
        guard let summary = summary else {
            return "NA"
        }
        return summary
    }
    
    //Formarting Max Temp
    var formattedMaxTemp:String {
        guard let maxTemp = temperatureHigh else {
            return "0.0ºF"
        }
        return String(format:"%.fºF",maxTemp)
    }
    
    //Formarting Min Temp
    var formattedMinTemp:String {
        guard let minTemp = temperatureLow else {
            return "0.0ºF"
        }
        return String(format:"%.fºF",minTemp)
    }
    
    //Finding and Formarting Weekname
    var formattedWeek:String {
        guard let time = time else {
            return "NA"
        }
        let myDate = Date(timeIntervalSince1970:  time)
        let formatter = DateFormatter()
        formatter.dateFormat = "EEE"
        let dayOfWeekString = formatter.string(from: myDate)
        return dayOfWeekString
    }
    
    //Finding and Formarting Day
    var formattedDay:String {
        guard let time = time else {
            return "NA"
        }
        let myDate = Date(timeIntervalSince1970:  time)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        let dayOfWeekString = formatter.string(from: myDate)
        return dayOfWeekString
    }
}
