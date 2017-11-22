#BullsEye

This MVC project is based on the Ray Wenderlich tutorial here:
https://www.raywenderlich.com/150073/ios-unit-testing-and-ui-testing-tutorial

In BullsEyeTests the game logic is tested using XCTAssertEqual.

BullsEyeMockTests is more interesting.
* It uses MockUserDefaults to mock UserDefaults by overriding setValue:forKey
* It also shows how to trigger a segmentedControl .valueChanged event for testing.

BullsEyeUITests file has basic implementation for testing the UI.
You start by recording the actions you want copied and then modifying them into the tests you want.