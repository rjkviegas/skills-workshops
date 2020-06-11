# Mocking

An exercise to help with understanding and practicing mocking by writing "useful" tests (tests that verify functionality).

### Learning Objectives

* I understand that test doubles are objects that mimic behaviour of real objects in your program in a way that you dictate and therefore have full control over.

* I understand how to use test doubles to isolate my tests and check the interaction between 2 objects.

* I understand how to use mocking to test randomness.

### Setup

* If you don't already have it, clone the skills workshop repo.

* `cd` into the `student-mocking-workshop` directory.

* Run `bundle install`.

* Run the tests with `rspec`.


### Some questions to ponder...

* What are some problems with the current implementation of this code?

* How flexible or extendable is this code right now?


### Instructions

Start with filling in the tests in the Airport Spec. The Airport class is tightly coupled to Weather class.

1. **Remove this tight coupling.**

2. **Once this has been done, write the missing tests. The tests should be isolated using doubles.**

3. **Make sure the tests are actually verifying your Airport class is handling what is returned from the weather object's method in the way you expect.**

4. **Once you have finished with the Airport Spec move onto the Weather Spec and fill in the tests for that too.**

