//
//  HalfTunesSlowTests.swift
//  HalfTunesSlowTests
//
//  Created by Jon Olivet on 11/17/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import HalfTunes

var sessionUnderTest: URLSession!

class HalfTunesSlowTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        sessionUnderTest = URLSession(configuration: .default)
    }
    
    override func tearDown() {
        sessionUnderTest = nil
        super.tearDown()
    }
    
  // Asynchronous test: success fast, failure slow based on timeout
  func testValidCallToiTunesGetsHTTPStatusCode200() {
    //given
    let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
    
    let promise = expectation(description: "Status code: 200")
    
    //when
    let dataTask = sessionUnderTest.dataTask(with: url!) { (data, response, error) in
      //then
      if let error = error {
        XCTFail("Error: \(error.localizedDescription)")
        return
      } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
        if statusCode == 200 {
          promise.fulfill()
        } else {
          XCTFail("Status code: \(statusCode)")
        }
      }
    }
    dataTask.resume()
    
    waitForExpectations(timeout: 5, handler: nil)
  }
  
  //Asynchronous test: faster fail based on entering completion handler
  func testCallToiTunesCompletes() {
    //given
    let url = URL(string: "https://itunes.apple.com/search?media=music&entity=song&term=abba")
    
    let promise = expectation(description: "Completion handler invoked")
    var statusCode: Int?
    var responseError: Error?
    
    //when
    let dataTask = sessionUnderTest.dataTask(with: url!) { (data, response, error) in
      statusCode = (response as? HTTPURLResponse)?.statusCode
      responseError = error
      
      promise.fulfill()
    }
    dataTask.resume()
    
    waitForExpectations(timeout: 5, handler: nil)
    
    //then
    XCTAssertNil(responseError)
    XCTAssertEqual(statusCode, 200)
  }
    
}
