//
//  CarTests.swift
//  SimpleUnitTestsTests
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
@testable import SimpleUnitTests

class CarTests: XCTestCase {
  
  var ferrari: Car!
  var jeep: Car!
  var honda: Car!
  
  override func setUp() {
    super.setUp()
    
    ferrari = Car(type: .sport, transmissionMode: .drive)
    jeep = Car(type: .offRoad, transmissionMode: .drive)
    honda = Car(type: .economy, transmissionMode: .park)
    
  }
  
  override func tearDown() {
    ferrari = nil
    jeep = nil
    honda = nil
    super.tearDown()
  }
  
  func testSportFasterThanJeep() {
    let minutes = 60
    
    // start ferrari
    ferrari.start(minutes: minutes)
    
    // start jeep
    jeep.start(minutes: minutes)
    
    // Test it
    XCTAssertTrue(ferrari.miles > jeep.miles)
  }
  
}
