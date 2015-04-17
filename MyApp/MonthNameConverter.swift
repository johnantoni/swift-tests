//
//  MonthNameConverter.swift
//  MyApp
//
//  Created by John Griffiths on 2015-04-16.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import Foundation

public class MonthNameConverter {
    public class func convertTimeToMonthName(time: NSTimeInterval) -> String {
        var gregorian = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        var date = NSDate(timeIntervalSinceReferenceDate: time)
        var monthname = gregorian!.component(NSCalendarUnit.MonthCalendarUnit, fromDate: date)
        switch monthname {
        case 1:
            return "January"
        case 2:
            return "February"
        case 3:
            return "March"
        case 4:
            return "April"
        case 5:
            return "May"
        case 6:
            return "June"
        case 7:
            return "July"
        case 8:
            return "August"
        case 9:
            return "September"
        case 10:
            return "October"
        case 11:
            return "November"
        case 12:
            return "December"
        default:
            return ""
        }
    }
}
