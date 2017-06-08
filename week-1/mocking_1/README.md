# Mock!

## Learning Objectives:

- Define a unit test as 'a test for code isolated from all other code'
- Explain that doubles can be used to stop objects-under-test from calling other objects in a program
- Refactor a bunch of unisolated unit tests into isolated ones using doubles

## Overview

* The coach will demonstrate the principles of isolating unit tests. You can see the stages in ./images.
* You will isolate some un-isolated unit tests.

## Instructions

1. Clone the starter repository using `git clone <repo url>`.
1. Install any project dependencies using `bundle install`.

> You may have to run `gem install bundler` to install Bundler first.

Your task: isolate the unit tests in `./spec`.

**Make sure to do them in this order**:

1. test.score method.
2. student.happiness method.
3. student.test_scores method.
