# Print rectangle kata

* Get into pairs and spend an hour writing Ruby code that fulfils the specification below.
* Don't forget to write tests!
* If you have time, refactor your code.
* After an hour, volunteer pairs will put their code on the projector and we'll code review it as a group.

## Specification

* A Ruby method that returns a string that depicts a 20 by 10 rectangle.

## The rectangle

```
--------------------
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
|                  |
--------------------
```

## `print_rectangle` function

There's a file at `lib/print_rectangle.rb`.  It contains a function called `print_rectangle`.  The function currently returns `THIS SHOULD BE A RECTANGLE!`.  Change it so it returns a 20x10 rectangle as above.

## Setup

Get this repo:

    $ git clone git@github.com:makersacademy/skills-workshops.git

Go into the directory for this workshop:

    $ cd week-1/print_rectangle_kata

Install the gems:

    $ bundle install

## Tests

Run the tests:

    $ cd path/to/print_rectangle_kata/
    $ rspec

There is one test that checks that the `print_rectangle` function returns the expected rectangle.  It's failing at the moment.

When you write your code add your own tests into `spec/print_rectangle_spec.rb`.
