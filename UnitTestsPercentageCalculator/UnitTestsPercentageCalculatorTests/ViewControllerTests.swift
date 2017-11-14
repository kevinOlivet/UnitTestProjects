//
//  ViewControllerTests.swift
//  UnitTestsPercentageCalculatorTests
//
//  Created by Jon Olivet on 11/13/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
@testable import UnitTestsPercentageCalculator

class ViewControllerTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateInitialViewController() as! ViewController
  }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPercentageCalculator() {
      let result = viewController.percentage(value: 50, 50)
        XCTAssert(result == 25)
    }
  
  func testLabelValuesShowedProperly() {
    let _ = viewController.view
    viewController.updateLabels(nV: 80.0, 50.0, 40.0)
    
    // The labels should now display 80, 50 and 40
    XCTAssert(viewController.numberLabel.text == "80.0", "numberLabel doesn't show the right text")
    XCTAssert(viewController.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
    XCTAssert(viewController.resultLabel.text == "40.0", "resultLabel doesn't show the right text")
  }
    
}
