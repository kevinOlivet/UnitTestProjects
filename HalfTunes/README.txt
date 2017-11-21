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