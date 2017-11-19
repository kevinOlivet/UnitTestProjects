//
//  ViewControllerTests.swift
//  UnitTestsDependencyInjectionTests
//
//  Created by Jon Olivet on 11/15/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
@testable import UnitTestsDependencyInjection

class ViewControllerTests: XCTestCase {
    
    // Using the real ViewController
    var viewController: ViewController!
    
    // These Mocks can be put inside each test if needed along with their instantiations
    // Used to mock the API response
    class MockMinionService: MinionService {
        var getTheMinionsWasCalled = false
        var result = [Minion(name: "Bob"), Minion(name: "Dave")]
        
        // This override is what shorts the real network function
        override func getTheMinions(completionHandler: @escaping (MinionDataResult) -> Void) {
            getTheMinionsWasCalled = true
            completionHandler(MinionDataResult.success(result))
        }
    }
    
    override func setUp() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        viewController = navigationController.topViewController as! ViewController
        
        UIApplication.shared.keyWindow!.rootViewController = navigationController
        RunLoop.main.run(until: NSDate() as Date)
    }
    
    // MARK: - Tests
    func testFetchMinions() {
        //given
        let mockMinionService = MockMinionService()
        
        //when
        viewController.fetchMinions(minionService: mockMinionService)
        
        //verify
        XCTAssertTrue(mockMinionService.getTheMinionsWasCalled)
        XCTAssertEqual(mockMinionService.result, viewController.dataSource!, "Data Source should not be nil!!!")
    }
}

