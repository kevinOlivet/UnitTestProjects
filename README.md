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
