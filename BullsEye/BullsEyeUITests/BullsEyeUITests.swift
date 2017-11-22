//
//  BullsEyeUITests.swift
//  BullsEyeUITests
//
//  Created by Jon Olivet on 11/17/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest

class BullsEyeUITests: XCTestCase {
  var app: XCUIApplication!
  
  override func setUp() {
    super.setUp()
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    app = XCUIApplication()
    app.launch()
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testGameStyleSwitch() {
    //given
    let slideButton = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["Slide"]/*[[".segmentedControls.buttons[\"Slide\"]",".buttons[\"Slide\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
    let typeButton = app/*@START_MENU_TOKEN@*/.segmentedControls.buttons["Type"]/*[[".segmentedControls.buttons[\"Type\"]",".buttons[\"Type\"]"],[[[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/
    let slideLabel = app.staticTexts["Get as close as you can to: "]
    let typeLabel = app.staticTexts["Guess where the slider is: "]
    
    if slideButton.isSelected {
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
      
      typeButton.tap()
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
    } else if typeButton.isSelected {
      XCTAssertTrue(typeLabel.exists)
      XCTAssertFalse(slideLabel.exists)
      
      slideButton.tap()
      XCTAssertTrue(slideLabel.exists)
      XCTAssertFalse(typeLabel.exists)
    }
  }
  
}
