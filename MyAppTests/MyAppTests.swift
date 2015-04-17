//
//  MyAppTests.swift
//  MyAppTests
//
//  Created by R. Tony Goold on 2015-04-16.
//  Copyright (c) 2015 Tony. All rights reserved.
//

import UIKit
import XCTest

class MyAppTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testAccuracy() {
        XCTAssertEqualWithAccuracy(4.0/3.0, 12.0/9.0, 0.000001, "Not close enough")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
