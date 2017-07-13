# OOP 1: Introducing Encapsulation (1h)

A video of this workshop is available [here](https://www.youtube.com/watch?v=PuydUGyM9AQ&list=PLc4BYny7PXeR5ZLHCY_oPU2I97aPtS8jm&index=1).

## Main Point

Encapsulate code well.

## Learning Objectives:

- Define 'behaviour' as 'the things a program does'
- Define 'class' as a 'convenient encapsulation of behaviour'
- Encapsulate behaviour into classes

## Starter (15 minutes)

### Why OO + TDD?

Let's you build large systems by moving in tiny, obvious steps.

### Build a calculator without classes

Create a public repo and initialize RSpec within. Build out a rudimentary calculator _without using classes_. An example is available on the master branch for this directory.

While building, you should elicit definitions for:

- **Behaviour:** things a program does, largely synonymous with methods in a program.
- **Single Responsibility Principle:** a unit in the program should have only one reason to change.
- **Encapsulation:** wraps and groups related and commonly used behaviour so your program is more modular.
- **Class:** The Object-Oriented way to wrap commonly used behaviour.

#### Calculator user stories

See main README.

## Main (30 minutes)

Students should wrap the bare methods you wrote into a class structure. They can start by cloning this repository.

### Differentiation

##### Support

- [ ] Between them, the three methods can be grouped into two _sorts of behaviour_. Write down a word that summarises each _sort of behaviour_.
- [ ] Test-Drive two classes: one for each word.
- [ ] Move each method ('the behaviour') in `calculator.rb` into the correct class for that method. Move the tests into the tests for those classes as well.
- [ ] Repeat from scratch, without this scaffold.

##### Extension

Once you have completed this task, repeat it from scratch in either Java or C# (your choice).

## Plenary (15 minutes)

Choose two students' examples to share, and critique them. Then either demonstrate your solution, or use the [`plenary`](https://github.com/makersacademy/skills-workshops/tree/plenary) branch for this directory.

### Possible reasonable solutions (students, don't look at this until the workshop is over!)

* Arithmetic class and Printer class.
* monkey-patching Fixnum.
