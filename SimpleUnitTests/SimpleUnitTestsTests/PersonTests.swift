//
//  PersonTests.swift
//  SimpleUnitTestsTests
//
//  Created by Jon Olivet on 11/12/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
@testable import SimpleUnitTests

class PersonTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInit_ShouldTakeName() {
        let person = Person(name: "John Smith")
        XCTAssertEqual(person.name, "John Smith")
    }
    
    func testInit_ShouldTakeHairColor() {
        let person = Person(name: "Kevin Olivet", hairColor: "brown")
        XCTAssertEqual(person.name, "Kevin Olivet")
        XCTAssertEqual(person.hairColor, "brown")
    }
}
