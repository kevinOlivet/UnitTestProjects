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