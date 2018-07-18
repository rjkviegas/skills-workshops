# Process modelling, applied to HTTP request/response cycle.

A process model is a diagram/performance/[something else] that demonstrates how a process works. In this workshop, you'll practice your process modelling skill by modelling the HTTP request/response cycle.

## Learning objectives

- Define process modelling as a tool to describe and understand a process.
- Use process modelling to further your understanding of HTTP requests and responses.

## Why model a process?

* It's a quick way to figure out and cement your understanding of how a process works.  It's much quicker than writing the code that enacts the process.

* It's much easier to iterate on a process model that the code that enacts the process.

* It's much easier to add detail to a process model than to add it to code.

* It's a great way to communicate and discuss a process with another person.

## What forms can a process model take?

Many forms!

* A boxes and arrows diagram.

* An interpretive dance.

* A performance where each person is a thing in the process (a server, a GET request).

* A form of your own invention.

## Instructions

* Choose one of the forms above.

* Use it to model each of the processes in the [processes to model](README.md#processes-to-model) section below.

* Prioritise the clarity and detail of your model over getting through all the processes listed below.

* Make sure that your models include the following:

  * The order that things happen in.
  * The HTTP requests and the data they carry. (Resources for this at the bottom of this readme.)
  * The HTTP responses and the data they carry. (Resources for this at the bottom of this readme.)
  * The movement of requests between client and server.
  * Mouse clicks.
  * What is displayed in the browser.

You can use chrome dev-tools to monitor what is happenning on the network.

## Processes to model

### Home page
(The code for the app we'll use in the workshop is here: https://github.com/makersacademy/process_modelling)

A user visits `https://makers-cats.herokuapp.com/` in their browser and is shown this HTML:

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Req/Res</title>
  </head>
  <body>
    <ul>
      <a href="list.html">a list</a>
      <a href="cats.html">a cat pic</a>
    </ul>
  </body>
</html>

```

What if the user mistyped this url? Try to include more details into your model.

### Cat page

A user clicks the `a cat pic` link and is shown this HTML:

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>a cat</title>
  </head>
  <body>
    <img src='cat.jpg'>
  </body>
</html>

```

Don't forget to model the `cat.jpg` request and response.

### Mailing list page

* A user clicks the `list` link and is shown this HTML:

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>A list</title>
  </head>
  <body>
    <form action="thanks.html" method="POST">
      <input type="text" name="email">
      <input type="submit">
    </form>
  </body>
</html>
```

* The user fills in their email address and clicks the submit button.

* The user is sent to the `thanks.html` page and is shown this HTML:

```
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Thanks page</title>
  </head>
  <body>
    <h1>Thanks!</h1>
  </body>
</html>
```

## Resources

* [Example HTTP GET request and response](https://www.jmarshall.com/easy/http/#sample)

* [Example HTTP POST request](https://www.jmarshall.com/easy/http/#postmethod)
