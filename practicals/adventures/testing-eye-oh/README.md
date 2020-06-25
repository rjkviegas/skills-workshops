# An adventure exploring testing IO with Ruby

## Inquiry Projects

Inquiry Projects, a term borrowed from [M Knowles](https://eric.ed.gov/?id=ED114653), are designed by learners to provide opportunities to dive deeper into knowledge, practice uncovering areas of ignorances, and identify improvements to your approach to learning.

### Project Structure
This is a structured project. Objectives have been set, steps identified, and some resources shared.

Each step of this project has

- a set of learning objectives to measure your progress against
- an intro to give context
- instructions to guide learning
- recommended resources
- a link to jump back to the project map below.

However, I warmly encourage you to push beyond the structure and see where your exploration takes you! Identify and use more resources, add in your own objectives and steps. Learning is most fun and rewarding when it's playtime, fun, and allowed to run free!

Remember: have fun!

### If you get stuck
- Leave a [well-explained](https://stackoverflow.com/help/how-to-ask) comment and someone will respond!
- Find someone to explain your problem to
- Find an expert to help you.
- Take a break, have a nap, muse on life.

### Experiments need feedback

This challenge is borrowed from [Ed](https://github.com/dearshrewdwit/)'s [blog](https://dearshrewdwit.github.io/blog/teaching-programming/experiment-to-learn-about-testing-stdout-in-ruby/) As you progress through this project, whenever you feel like it, leave him a comment [here](https://github.com/dearshrewdwit/dearshrewdwit.github.io/issues/13) or [there](https://github.com/dearshrewdwit/dearshrewdwit.github.io/issues/13) with your thoughts.

#### If you got to the end - nice job!
How'd it go? - everything you share will be read.

- did you achieve the [project goal](#project-goals)?
- the sub goals? Which ones?
- what did you like about this inquiry project?
- what did you find most useful in how you progressed through the project?
- what did you find most difficult?
- any other thoughts you have!


## Inquiry Project: testing #puts (in plain ruby)

<br/>

```ruby
 puts "let's explore!" # whoaah, hold. up. how does #puts actually work
```

<br/>

Let's learn about mocking, by diving into how to test `#puts` in ruby!

### Project Goals

#### Main goal: Explain why replacing dependencies with test objects helps you test code

Subgoals:

- Explain how `#puts` works
- Use plain ruby to test output to STDOUT
- Use `pry` to get visibility on how your code executes
- Use blocks and `yield`

### Prerequisites

- [install pry](https://github.com/pry/pry/#installation)
  - `irb` clumsily sends [_all_ expressions](https://ruby-doc.org/stdlib-2.6.5/libdoc/pry/rdoc/pry/Notifier.html) to STDOUT, whereas `pry` doesn't.
  - It's got nice colours too. And secretly it's far more powerful than you know!

### Project Map
Use these links to jump to different steps:

- [what is puts doing - part1](./1-what-does-puts-do.md)
- [what is puts doing - part2](./2-what-does-puts-do-continued.md)
- [what is puts doing - part3](./3-what-does-puts-do-continued.md)
- [replacing output](./4-replacing-output.md)
- [testing output](./5-testing-output.md)
- [refactoring step](./6-refactoring-step.md)

[Back to map](./README.md#project-map)
