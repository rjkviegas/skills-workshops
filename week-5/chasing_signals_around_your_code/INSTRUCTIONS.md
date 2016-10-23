# Chasing signals around your code: Instructions

This workshop introduces you to more advanced computational thinking. Before this, you should have done:

- Some basic 'following the flow of information', e.g. understanding how a basic Ruby method takes an input and generates an output;
- Some intermediate 'following the flow' **across more than one technology**, e.g. understanding how a basic server takes an HTTP request and generates a response.

The high-level goal of this workshop is:

- Some advanced 'following the flow', e.g. understanding how:
  - a browser generates an AJAX request, 
  - passes it to a server as an HTTP request,
  - the server generates an HTTP response, and
  - the browser handles the HTTP response via JavaScript.

This workshop is 'more advanced' because we will need to track the flow of information across multiple technologies (HTML, JavaScript, Ruby) and platforms (Chrome, Request - Response, Sinatra).

## Learning Objectives

- Describe a non-AJAX HTTP request-response cycle;
- Explain differences between an AJAX HTTP request-response cycle and a regular one;
- Build a simple single-page application using AJAX.

## Setup

1. Clone this repo.
2. `cd` into `/api` and run `bundle`, followed by `rake db:migrate` and then `rake db:seed`.

## Starter

In the starter, the coach will demonstrate:

- a non-AJAX HTTP request-response cycle, and
- an AJAX HTTP request-response cycle.

During the demonstration, the coach should be eliciting definitions from students for:
- Request
- Response
- HTTP
- Browser
- Browser history

###### Guidance: physical demonstration

1. Ask for a two student volunteers: a client and a server. Have them stood (or seated) at opposite ends of the room.
2. Announce that you are going to demonstrate a **non-AJAX** request-response cycle.
3. Give the client several sheets of paper. Explain this is the 'browsing history'. Ask the client to hit the 'back' and 'forward' buttons on the browser a few times to demonstrate the 'browsing history' being moved through.
4. Ask the client to send a request to the server, and the server to issue a response.

> For simplicity, keep it simple: say "Get the root route from the server"
> As this is happening, as the rest of the students to define elements in the demonstration. You can use the definition list above for guidance if you like.

5. Make sure the client, upon receiving the response, shuffles the response to the front of the browsing history. You can click 'back' and 'forward' a few more times to make the point.
6. Announce that you are going to demonstrate an **AJAX** request-response cycle.
7. Insert yourself into the process as 'JavaScript'. Have a pen!
8. Run the request-response cycle again, but make sure 'JavaScript' is creating the request and writing the result of the response directly onto the 'client's' current page.

> In this way, you are demonstrating how a Single-Page Application works.

9. Ask students to pick out three differences between the **non-AJAX** request-response cycle and the **AJAX** one.

> Give students two minutes to jot down three differences so they have adequate time to reflect. **Differentiation: If advanced students are looking listless, ask them to come up with two perceived limitations of the physical demonstration.**

10. Discuss the differences between the two.
11. Load `src/index.html`. Demonstrate using the network tab in the Chrome Developer tools to trace the request-response cycle being sent as HTTP.

## Main

Students are challenged to come up with some way to demonstrate that they have internalised what AJAX is and how to follow it around the system. Some examples they could use:

- Build a basic Single Page App (SPA)
- TDD a simple AJAX page like the one in `src`
- Make a short video showing how an AJAX request-response cycle is handled at each stage of the cycle

## Plenary

Pick three groups' demonstrations to show and discuss.