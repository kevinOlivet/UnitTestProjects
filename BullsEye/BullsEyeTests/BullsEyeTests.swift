//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Jon Olivet on 11/17/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
  
  var gameUnderTest: BullsEyeGame!
  
    override func setUp() {
        super.setUp()
        gameUnderTest = BullsEyeGame()
      gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        gameUnderTest = nil
        super.tearDown()
    }
    
  func testScoreIsComputedWhenGuessGTTarget() {
    //given
    let guess = gameUnderTest.targetValue + 5
    
    //when
    _ = gameUnderTest.check(guess: guess)
    
    //then
    XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
  }
  
  func testScoreIsComputedWhenGuessLTTarget() {
    //given
    let guess = gameUnderTest.targetValue - 5
    
    //when
    _ = gameUnderTest.check(guess: guess)
    
    //then
    XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
  }
}
