# Debugging in Ruby

There are two exercises in this workshop, each exercise is program that has a number of bugs. You have to find them, and fix them. You have to do this as systematically as possible:

- Tighten the loop (find the exact line the bug is coming from)

- Get visibility (use `p` to inspect everything to help you home in on the exact line)

- Once you know the one thing that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

> You should not change the tests, only the code, in this exercise.

## Setup

Clone this repo, and `cd` into it.

Run `bundle install`.

Use `cd` to navigate into the relevant exercise directory.

Run the tests with `rspec`.

## Instructions

1. Clone this repo

2. Run `bundle install`

3. Start with exercise 1

4. Use `rspec` to run the tests.

5. use the `tighten the loop, get visibility` approach to debug this program.

6. Repeat the above steps for exercise 2.

## Hints

There are two main types of error you will see in these examples:

1. A bug in the code. This type of error means that the code won't run, and the error message will include information about the line of code causing the issue.

2. The code doesn't do what the tests expect it to. This means that the code works, but it doesn't give the output expected by the tests.

You will see both of these errors in this example. Each type of error gives a different kind of error message. Before you start to resolve a bug, try to identify it's type.


<details><summary>Post Challenge</summary>
  <p><a href=https://youtu.be/wGdBqNGvBFY>Click here</a> to see a video of a coach debugging the Cipher exercise.</p>
  <p>Pay particular attention to what they are getting visibility of, and think about why it is useful.</p>
</details>
