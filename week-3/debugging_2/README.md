# Debugging 2

Tightening the loop and getting visibility (on the web).

## Instructions

In this program, there are many bugs. You have three objectives:

- Find the bugs and fix them.  You can assume that the tests describe the correct behaviour.
- You need to get all the tests passing.
- You need to run the app and make sure it works.

Last week, you practiced this debugging method:

- Tighten the loop (find the _exact line_ the bug is coming from)
- Get visibility (use `p` to inspect everything to help you home in on the exact line)
- Once you know the _one thing_ that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

This week, you'll build these skills.  You'll practice:

- Tightening the loop across the whole web stack: from the browser, to a template, to a controller, to a Ruby object, to a test.
- Using error messages and `p` to get visibility in templates, controllers, Ruby objects and tests.

## Setup

- Clone the repo.

- Install the gems.

## Run the tests

- Run the tests with `rspec`.

## Run the app

- Run the app with `shotgun`.  This will automatically reload your changes so you don't need to restart your server on each code change.

- Browse the app at the URL in your server logs.

### User Stories

```
As a person
So I can feel more relaxed
I want to state a thing I'm struggling with and see it shouted by the table flip emoji
```

```
As a person
So I can feel more relaxed
I want to see a random happy emoji on the home page
```
