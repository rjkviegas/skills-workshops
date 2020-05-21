# Process modelling, applied to javascript API calls

A process model is a diagram/performance/[something else] that demonstrates how a process works. In this workshop, you'll practice your process modelling skill by modelling the flow of data between the front-end and back-end of a single page app that talks to an API.

## Learning objectives

- Use process modelling to explore the flow of data between front and back end
- Further your understanding of JS api requests and responses

## Why model a process?

* It's a quick way to figure out and cement your understanding of how a process works.

* It's a great way to communicate and discuss a process with another person.

## What forms can a process model take?

Many forms!

* A boxes and arrows diagram.

* An interpretive dance.

* A performance where each person is a thing in the process (a server, the API, javascript..).

* A form of your own invention.

## Instructions

* Choose one of the forms above.

* Use it to model each of the processes in the [processes to model](README.md#processes-to-model) section below.

* Prioritize the clarity and detail of your model over getting through all the processes listed below.

* Make sure that your models include the following:

  * The order that things happen in.
  * Which parts of the code sends and receive requests.
  * The HTTP requests and the data they carry.
  * The HTTP responses and the data they carry. 
  * The movement of requests between front-end and back-end.
  * What is displayed or changed in the browser.

You should **use the network tab of the chrome dev-tools** to monitor what is happening on the network. You may also want to get visibility in both ruby and javascript to understand the order in which things happen.

## Install the app

The code for this is at https://github.com/makersacademy/thermostat-example

1. Clone the repo locally:
```
git clone git@github.com:makersacademy/thermostat-example.git

cd thermostat-example
```
1. Switch to the sinatra-api branch
```
git checkout sinatra-api
```
1. Install dependencies
```
bundle install
```
1. Start the server
```
ruby app.rb
```
1. Open the app by navigating to http://localhost:4567/

## Processes to model
### Home page

A user visits `http://localhost:4567/` in their browser.
What are all the requests sent? Where do they get sent from, and in what order? (The waterfall view in the network tab may have interesting insight)

### Changing temperature

A user clicks the `+` button.
Don't forget to model what happens in the different parts of the server, and the content of the resquest/response.

### PSM mode

A user clicks the `PSM on` button.

