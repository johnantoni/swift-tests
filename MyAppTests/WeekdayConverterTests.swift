//
//  WeekdayConverterTests.swift
//  MyApp
//
//  Created by R. Tony Goold on 2015-04-16.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit
import XCTest
import MyApp

class WeekdayConverterTests: XCTestCase {

    func timeForYMDHS(year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int) -> NSTimeInterval {
        var gregorian = NSCalendar(calendarIdentifier: NSGregorianCalendar)!
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        components.hour = hour
        components.minute = minute
        components.second = second
        var date = gregorian.dateFromComponents(components)!
        return date.timeIntervalSinceReferenceDate
    }

    func testAnyThursday() {
        // Picked on a Thursday
        var date = timeForYMDHS(2015, month: 4, day: 16, hour: 19, minute: 22, second: 0)
        XCTAssertEqual(WeekdayConverter.convertTimeToWeekday(date), "Thursday", "Wrong day!")
    }

    func testBeforeMidnight() {
        var date = timeForYMDHS(2015, month: 4, day: 16, hour: 23, minute: 59, second: 59)
        XCTAssertEqual(WeekdayConverter.convertTimeToWeekday(date), "Thursday", "Wrong day!")
    }

    func testAtMidnightUsing24() {
        var date = timeForYMDHS(2015, month: 4, day: 16, hour: 24, minute: 00, second: 00)
        XCTAssertEqual(WeekdayConverter.convertTimeToWeekday(date), "Friday", "Wrong day!")
    }

    func testAtMidnight() {
        var date = timeForYMDHS(2015, month: 4, day: 16, hour: 00, minute: 00, second: 00)
        XCTAssertEqual(WeekdayConverter.convertTimeToWeekday(date), "Thursday", "Wrong day!")
    }
    
    func testatApril() {
        var date = timeForYMDHS(2015, month: 4, day: 16, hour: 00, minute: 00, second: 00)
        XCTAssertEqual(MonthNameConverter.convertTimeToMonthName(date), "April", "Right month!")
        
    }

}
