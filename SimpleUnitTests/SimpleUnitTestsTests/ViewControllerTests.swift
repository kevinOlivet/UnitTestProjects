//
//  ViewControllerTests.swift
//  SimpleUnitTestsTests
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
@testable import SimpleUnitTests

class ViewControllerTests: XCTestCase {
  
  var viewController = ViewController()
  let storyboard = UIStoryboard(name: "Main", bundle: nil)

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testIsNumberEven() {
        let odd = 7
        let even = 6
        
        XCTAssertTrue(viewController.isNumberEven(num: even))
        XCTAssertFalse(viewController.isNumberEven(num: odd))
    }
    
    func testSumEvenValuedNumbersFibonacciSequence() {
        let limit = 4000000
        let answer = 4613732
        
        XCTAssertEqual(viewController.sumEvenValuedNumbersFibonacciSequence(limit: limit), answer, "This should be 4613732")
    }
    
    func testCoinRewardedAmount() {
        let gamePrice = 100
        let coinsRewarded = 1
        XCTAssertEqual(viewController.getGameCoinAmout(gamePrice: gamePrice), coinsRewarded)
    }
  
  func testLoadViewDoesSetOutlets() {
    viewController = storyboard.instantiateInitialViewController() as! ViewController
    viewController.loadViewIfNeeded()
    
    XCTAssertNotNil(viewController.speedLabel)
  }
  
  func testCalculateFerrariMiles() {
    viewController.setUpFerrari()
    XCTAssertEqual(viewController.ferrari.miles, 140)
  }
    
}
