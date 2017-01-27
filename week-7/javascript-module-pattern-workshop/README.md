# JavaScript module pattern

## Instructions

### High level goal for the week

At a high level, this week is about learning to write a frontend, single page app using only pure JavaScript.

In this workshop, you'll practice one part of this: encapsulating and sharing your modules in an idiomatic way.

### Learning objectives

1. Describe the module pattern as a way to encapsulate and share code.
2. Explain how the module pattern makes some code available and hides other code.
3. Write code using the module pattern.

### Implement the module pattern (30 mins)

* Pair up.

* Clone this repo.

* Open `SpecRunner.html` in your browser to run the tests.

* TDD a `smiley.js` module.  It should have a function that takes some text and returns the text with a space and a smiley appended.  e.g. `smiley("hello")` should return `"hello :)"`.

* Rename `interrobang.js` to `interrobangsmiley.js`.  Update the code to use your `smiley.js` function to include a smiley in its output.  For example: `hello??! :)`.

* Try and answer the questions below.

#### Questions

1. How does the function that wraps the question module keep `QUESTION_MARK_COUNT` private? Why is this useful?

2. How does the pattern used in the `question` and `exclaim` modules differ from the pattern used in the `interrobang` module? Why are different patterns used?

3. Can you predict and confirm the value of `this` in all the parts of each module?

### Plenary (15 mins)

We'll come back together for a short plenary.  We'll discuss problems we had writing code that uses the module pattern. And we'll answer the questions below.

## Resources

* [Immediately Invoked Function Expression (IIFE)](http://stackoverflow.com/questions/8228281/what-is-the-function-construct-in-javascript)
* :pill: [JavaScript module pattern](https://github.com/makersacademy/course/blob/master/pills/javascript_module_pattern.md)
