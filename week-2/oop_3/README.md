# Delegation

> Delegate, delegate, delegate
> – Russ Olsen, Design Patterns in Ruby

This is a workshop to introduce you to the idea of Object-Oriented delegation.

## Learning objectives

- Describe 'delegation' as "the delegation of a responsibility to another class".
- Explain what is meant by the advice "delegate, delegate, delegate".
- Implement OOP delegation.

## Instructions

This project contains two implementations of a todo list: `/terrible` and `/great`.

`/terrible` implements the features using a poor understanding of the delegate principle.  `/great` implements the users stories using a good understanding of the delegate principle.  Unfortunately, `/great` is unfinished.

You must finish it.

### Running the tests

    $ cd terrible/   or   cd great/
    $ bundle install
    $ rspec

### What code should you write?

* Modify the code in `/great`.

* Continue using its delegate, delegate, delegate approach.

* Examine the code and tests in `/terrible` to find out what functionality to implement.  Port that functionality over to `/great`.

* There are a few passing unit tests in `/great`.  Add to these.

* There are some feature tests in `great/spec/feature_spec.rb`.  These should pass when you've implemented all the functionality.
