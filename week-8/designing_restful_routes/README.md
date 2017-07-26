# Designing RESTful routes

## Instructions

### High level goal for the week

At a high level, this week is about answering yes to the question **"Can you use Rails and its conventions to build a web app?"**

In this workshop, you'll learn to use one of these conventions: RESTful routes.

### Learning objectives

1. Describe REST as a pattern for mapping resources to routes.
2. Explain how to map operations on a resource to a set of RESTful routes.
3. Map the objects in a domain to a set of RESTful routes.

### Read the REST pill (10 mins)

https://github.com/makersacademy/course/blob/master/pills/rest.md

### Very quick Q&A (5 mins)

### Map RESTful routes for the Makersbnb project (30 mins)

* Pair up.

* Devise a set of routes for the Makersbnb project.

#### Route specification

For each route, specify:

* HTTP verb.
* URL.
* Rails controller and action that will handle the route when it's called.

e.g.:

```
GET  /restaurants  restaurants#index
```

#### Actions to create routes for

Design routes for the following actions:

* Create a space.
* Show a space.
* Update a space.
* Delete a space.
* Show all the spaces.
* Show a form to specify the details of a new space.
* Show a form to specify changes to the details of an existing space.

* Create a booking.
* Show a booking.
* Update a booking.
* Delete a booking.
* Show all the bookings for a specific space.
* Show a form to specify the details of a new booking.
* Show a form to specify changes to the details of an existing booking.

### If you finish

Map RESTful routes for this week's project.

### Plenary (15 mins)

We'll come back together for a short plenary.  We'll discuss the routes we designed and how they might be improved.

## Resources

* [REST :pill:](https://github.com/makersacademy/course/blob/master/pills/rest.md)
* [Principles of good RESTful API design](https://codeplanet.io/principles-good-restful-api-design/)
* [Nested routes in Rails](http://stackoverflow.com/questions/18219008/rails-4-nested-resources)
