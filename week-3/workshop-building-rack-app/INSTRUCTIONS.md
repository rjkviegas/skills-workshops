#Skills Workshop: Building a Rack App

## Learning Objectives

* Describe 'middleware' as software that acts as a bridge between separate, complex programs.
* Understand that Rack acts as middleware between the server and your application, enabling easier filtering of HTTP requests and responses.
* Build a simple stack of Rack middleware.

## Starter (10 minutes)

* Draw a simple diagram to show the req/res between a client and server
* Highlight that HTTP is like a simple language consisting of key value pairs
* Demonstrate that Rack sits inbetween your server and your application, and allows us to represent the req/res as ruby objects with a simple interface

## Main (30 minutes)

Instructions are in the [README.md](README.md). There are a set of questions for students to work through - the main learning is in answering the questions. Students are unlikely to finish the entire exercise, but they can always continue in their own time.

## Plenary (15 minutes)

Discuss the questions as a group.

Common themes:
* Rack allows us to use request or response objects to make it easier to access the data.
* rackup just means we can use a config.ru to to set up our stack
* Sinatra controllers access the request object's `#path` method to determine the routing.
* Sinatra is automating the instantiation of a new Response object with all the relevant headers and meta-information.
