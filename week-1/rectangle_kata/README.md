# Rectangle kata

* Get into pairs and spend an hour writing Ruby code that fulfils the specification below.
* Don't forget to write tests!
* If you have time, refactor your code.
* After an hour, volunteer pairs will put their code on the projector and we'll code review it as a group.

## Specification

* A Ruby method that returns a string that depicts a 20 by 10 rectangle.

## The rectangle

```
|------------------|
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
|------------------|
```

## `rectangle` function

There's a file at `lib/rectangle.rb`.  It contains a function called `rectangle`.  The function currently returns `THIS SHOULD BE A RECTANGLE!`.  Change it so it returns a string that represents a 20x10 rectangle as above.

### If you finish

Refactor your code to make it as easy to understand as possible.

## Setup

Get this repo:

    $ git clone git@github.com:makersacademy/skills-workshops.git

Go into the directory for this workshop:

    $ cd week-1/rectangle_kata

Install `bundler`, if you haven't already:

    $ gem install bundler

Install the gems:

    $ bundle install

## Tests

Run the tests:

    $ cd path/to/rectangle_kata/
    $ rspec

There is one test that checks that the `rectangle` function returns the expected rectangle.  It's failing at the moment.

When you write your code add your own tests into `spec/rectangle_spec.rb`.
