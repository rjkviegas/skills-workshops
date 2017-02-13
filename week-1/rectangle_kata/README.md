# Rectangle kata

* You'll work in a pair with the person next to you.

* You'll spend an hour writing Ruby code that fulfils the specification below.

* You'll use the driver/navigator pairing approach (see below).

* You'll swap driver/navigator every 10 minutes.  You'll also reflect and adjust for two minutes (see below).

* After the hour, volunteer pairs will put their code on the projector and we'll code review it as a group.

## Do some work, reflect, adjust

In order to improve your processes, you can use a simple cycle:

1. Do some work. (In this case, develop code.)

2. Reflect.  (Pause and and think about what could be improved.)

3. Adjust.  (Change a part of your process that could be improved.)

4. Return to 1.

We'll practice this approach in this session.  Every 10 minutes, you'll reflect and adjust your process.

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

## Driver/navigator pairing

* The driver has the keyboard and mouse.  Their job is to type.  They deal with the details of the programming, line by line.

* The navigator pays attention to the code the driver is writing.  But they also pay attention to the larger picture of the problem.

* For example, the navigator might suggest that an `each` block would be a good way to iterate through an array.  The driver would then type in the `each` block and get it working.  If they get stuck, the driver and navigator discuss the problem.

* The two people in the pair swap driver and navigator roles very frequently.

* The two people in the pair communicate and discuss constantly.

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
