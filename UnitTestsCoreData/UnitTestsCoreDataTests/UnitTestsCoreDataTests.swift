//
//  UnitTestsCoreDataTests.swift
//  UnitTestsCoreDataTests
//
//  Created by Jon Olivet on 11/15/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import XCTest
import CoreData
@testable import UnitTestsCoreData

class UnitTestsCoreDataTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
  
  // Test with Mock CoreData
  func testFetchRequestWithMockedManagedObjectContext() {
    
    class MockNSManagedObjectContext: NSManagedObjectContext {
      override func fetch(_ request: NSFetchRequest<NSFetchRequestResult>) throws -> [Any] {
        return [["name": "Johnny Appleseed", "email": "johnny@apple.com"]]
      }
    }
    
    let mockContext = MockNSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
    let fetchRequest = NSFetchRequest<NSDictionary>(entityName: "User")
    fetchRequest.predicate = NSPredicate(format: "email ENDSWITH[cd] %@", "@apple.com")
    fetchRequest.resultType = .dictionaryResultType
    
    do {
      let results = try mockContext.fetch(fetchRequest)
      XCTAssertEqual(results.count, 1, "fetch request should only return 1 result")
      guard let result = results.first as? [String: String] else {
        XCTFail("fetch request returned wrong type")
        return
      }
      
      XCTAssertEqual(result["name"], "Johnny Appleseed", "name should be Johnny Appleseed")
      XCTAssertEqual(result["email"], "johnny@apple.com", "email should be johnny@apple.com")
    } catch {
      XCTFail("fetch request should not throw")
    }
  }
    
}
