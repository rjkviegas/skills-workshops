# Skills Workshop: Building a Rack App

This workshop is not essential to successfully completing week 3. However it is really useful for some students to learn about some of the inner workings of sinatra and rack. This workshop can work well as an optional workshop, either during a lunchtime or an early morning session.

## Learning Objectives

* Demonstrate that Rack provides a library to wrap HTTP requests in ruby objects
* Solve bugs in a simple rack application
* Describe how rack utilises polymorphism to pass a request through multiple layers of middleware

## Starter (10 minutes)

* Draw a simple diagram to show the req/res between a client and server
* Highlight that HTTP is like a simple language consisting of key value pairs
* Demonstrate that Rack sits inbetween your server and your application, and allows us to represent the req/res as ruby objects with a simple interface

## Main (40 minutes)

Instructions are in the [README.md](README.md). Each exercise has its own directory. Students should use 'Tighten the loop, gain visibility' mantra, in combination with the docs, to figure out how to fix the broken code. In the process, they will need to follow the flow of control through a simple rack application.

## Plenary (10 minutes)

Discuss the questions as a group.

Common themes:
* Rack allows us to use request or response objects to make it easier to access the data.
* rackup just means we can use a config.ru to to set up our stack
* Sinatra controllers access the request object's `#path` method to determine the routing.
* Sinatra is automating the instantiation of a new Response object with all the relevant headers and meta-information.
