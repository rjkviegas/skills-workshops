# Clean code in Ruby, line by line (Ruby practice)

The goal of this workshop is practice writing the cleanest code you can, line by line.  It's harder to maintain high line by line code standards when working on a project.  In this workshop, you won't need to worry much about high level code structure.  You'll be able to focus on making each line and method as clean as possible.

For each exercise, initially focus on getting the tests to pass.  Once they are passing, refactor to make the code as clean as you can.  Even the best programmers write bad code first and refactor it into clean code.

## Clean code, line by line

Here are some guidelines:

* Use proper indentation and idiomatic Ruby style: https://github.com/bbatsov/ruby-style-guide

* Write short methods with one responsibility.

* Give variables and methods descriptive names.

* Avoid duplicated code.

* Don't write your own code if there's already a method in the Ruby standard library that you can use.

## Implement code to solve the exercises (30 mins)

1. Work on your own.

2. Open `spec/exercise_1_spec.rb`.  It contains tests that describe the expected behaviour of your code.  Your job is to write that method.

3. `bundle install`.

4. Run the tests for the first exercise by running `rspec spec/exercise_1_spec.rb`.

5. Write code in `lib/exercise_1.rb` to get these tests to pass.  Focus on getting the code working.  Don't worry about making it clean for now.

6. Refactor your code until it's as clean as you can make it.

7. Move onto exercise 2.

## Plenary (30 mins)

We'll look at your solutions on the projector and find ways they could be made cleaner.
