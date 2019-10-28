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

* Open `index.html` in your browser and use the developer tools to see the console output.

1. Explore the code in `interrobangSmiley`, using `console.log` to get visibility. Make a note of any questions.

2. Create an `interrobang` module, using TDD. The new module should add `??!` to any given text. Once you've extracted this module, update the code in `interrobangSmiley` to use the module.

3. Create a `question` module, using TDD. The new module should add `??` to any given text. Once you've extracted this module, update the code in `interrobang` to use it. *Make sure to keep QUESTION_MARK_COUNT private in the new module*

4. Create an `exclaim` module, using TDD. The new module should add `!` to any given text. Once you've extracted this module, update the code in `interrobang` to use it.

5. Create a `smiley` module, using TDD. The new module should add ` :)` to any given text. Once you've extracted this module, update the code in `interrobangSmiley` to use it.

### Plenary (15 mins)

We'll come back together for a short plenary.  We'll discuss problems we had writing code that uses the module pattern. And we'll answer the questions below.

#### Questions

1. How is `QUESTION_MARK_COUNT` kept private? Why is this useful?

2. What is the `exports` argument set to in each module?

3. Can you predict and confirm the value of `this` in all the parts of each module?

4. What order are the functions `exclaim`, `interrobang`, `interrobangSmiley`, `question` and `smiley` called?

5. How could the tests be improved to remove the hard dependencies between modules?

## Resources

* [Immediately Invoked Function Expression (IIFE)](http://stackoverflow.com/questions/8228281/what-is-the-function-construct-in-javascript)
* :pill: [JavaScript module pattern](https://github.com/makersacademy/course/blob/master/pills/javascript_module_pattern.md)
