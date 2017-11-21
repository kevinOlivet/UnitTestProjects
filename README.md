# UnitTestProjects
A collection of UnitTest project experiments.

#SimpleUnitTests

This is a simple project with a few unit tests.
One tests if a number returns even using XCTAssertTrue and XCTAssertFalse

Another tests the sum of even valued numbers in a Fibonacci Sequence using XCTAssertEqual with a message of the expected result.

The third tests the percent that should be returned for game coins in relation to game price.

The fourth tests if the outlets in the storyboard have been connected correctly and aren't  nil.

The fifth tests if the ferrari.miles are equal to the correct number.

There is a simple Person model with name and hairColor attributes.
A separate PersonTests file tests the initializers.

There is also a simple Car model with miles, type and transmissionMode attributes.
A separate CarTests file tests if ferrari.miles > jeep.miles

This project was influenced by DevSlopes.

#UnitTestsDependencyInjection

This project uses MVC architecture to display a small list of Minions (like from the movie).

It's most interesting because of the tests.
It uses a FakeMinionService to mock the response from a web server.
To do this it overrides the call to the network: func getTheMinions.
getTheMinions uses a completion handler to send the data to the ViewController from class MinionService.

It then uses the mock to test if the getTheMinions function was called
and if the result matches the viewController's dataSource.

Later I converted it to the MVP architecture.  That project can be found in MVPProjects.
It's called: MVPDependencyInjection

#UnitTestsPercentageCalculator

This is a simple project with a few unit tests.
One tests if a number returns the correct result using XCTAssert.

Another tests the text of three labels using an accompanying message.

A simple project with a quick and dirty architecture.

#UnitTestsPokemon

This project uses MVVM architecture to test Pokemon.
There is a model class Pokemon.
The logic and functions are implemented in PokemonViewModel.

#UnitTestsCoreData

This is a small project using unit tests with CoreData.

It's purpose is to show how to create a mock to a test CoreData fetchRequest.

#HalfTunes

This project is from the Ray Wenderlich tutorial here:
https://www.raywenderlich.com/150073/ios-unit-testing-and-ui-testing-tutorial

It has a massive SearchViewController, but let's not worry about it's architecture for now.

In HalfTunesSlowTests it has two ways to test a network call using URLSession
1. func testValidCallToiTunesGetsHTTPStatusCode200() uses expectation to confirm the response status code is 200.
It is called in the completion block for dataTask.
A success will be evaluated fast, a failure is based on a 5 second timeout.

2. func testCallToiTunesCompletes() also uses expectation and is called in the closure block.
The difference is that it's only based on invoking the completion block and so  will fail faster.

Meanwhile in HalfTunesFakeTests-
The URLSession test is done using a mock URLSession.
* DHURLSession file is used to mock a URLSession and assign it to the dataTask in the SearchViewController.
It supplies mock data in the abbaData.json file in the testBundle
