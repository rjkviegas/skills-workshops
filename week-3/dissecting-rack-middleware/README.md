# Skills Workshop: Debugging a Rack App

## Learning objectives
* Demonstrate that Rack provides a library to wrap HTTP requests in ruby objects
* Solve bugs in a simple rack application
* Describe how rack utilises polymorphism to pass a request through multiple layers of middleware

## Instructions (40 minutes)
The documentation for rack can be found [here](https://github.com/rack/rack).
We will be testing the application with RSpec and Rack::Test. The docs for Rack::Test can be found [here](https://github.com/brynary/rack-test)
For each exercise, you will be able to gain visibility by:
* sending a cURL request to the server
* running the tests
* using the browser 
* using `p` to send output to the server log

* Before you start each exercise, `cd` into the directory and run bundle
* Read through the code line by line
* Gain visibility on each expression using the techniques above
* Complete the individual bullet points in each exercise

## Exercise 1: Hello world

Rack is a library that provides a simplified interface between your ruby application and your server. We have provided a simple rack application for you to examine. You can start the server by running the file in ruby: `ruby ./lib/hello_world.rb`

* Make the tests pass by changing the body and the status code of the response.

## Exercise 2: rackup

In this exercise, the tests pass, but if you try to run your server using `rackup` there are problems.
* Take time to identify how the files have changed - we no longer need so many `require`s at the top `hello_world.rb`, why not?
* Tighten the loop and gain visibility until you have identified and resolved the bug. The bug is resolved when `rackup` runs the server and we can see "Hello Exercise 2" in the response body.

## Exercise 3: Returning params

* Fix the failing test - there is one passing test that can you can use as a guide
* Can you find a way to look inside the contents of env? Where is env being passed in from?

## Exercise 4: Using a Request object

* The env object has now been encapsulated in a convenient Request object, provided by Rack
* A convenient method to gain visibility of an object's interface is to call #methods.sort on the object
* Using the [documentation](http://www.rubydoc.info/gems/rack/Rack/Request), change the code to make the tests pass

## Exercise 5: Using a Response object

* In this exercise we encapsulate that weird array response within a response object
* Using the [documentation](http://www.rubydoc.info/gems/rack/Rack/Response), return the correct response object to make the tests pass
* Explain what the `.finish` method is doing here

## Exercise 6: Building a stack of middleware

* The real power of rack comes with its ability to chain applications together in a stack. See the documentation [here](http://www.rubydoc.info/gems/rack/Rack/Builder)
* In this exercise, we have introduced some extra layers of middleware. Unfortunately, they are broken. Fix them so that you can once again use the app by running `rackup`
* What can you infer that rackup is doing, under the hood? 
* What other uses can you think of that may utilize the middleware stack?

## Frameworks supported by Rack

If rack provides the space to hang a stack of middleware, frameworks can extend its functionality with complex routing systems and MVC server structures. 
* Checkout the [rack github](https://github.com/rack/rack) for a list of supported frameworks
* How does a framework like sinatra make use of the Rack library?
