# OOP 1: Introducing Encapsulation (1h)

A video of this workshop is available [here](https://www.youtube.com/watch?v=PuydUGyM9AQ&list=PLc4BYny7PXeR5ZLHCY_oPU2I97aPtS8jm&index=1).

## Learning Objectives:

- Define 'behaviour' as 'the things a program does'
- Define 'class' as a 'convenient encapsulation of behaviour'
- Encapsulate behaviour into classes

## Starter (15 minutes)

### Why OO + TDD?

Let's you build large systems by moving in tiny, obvious steps.

### Build a calculator without classes

Create a public repo and initialize RSpec within. Build out a rudimentary calculator _without using classes_. An example is available on the master branch for this directory.

While building, you should define (and elicit definitions for):

- **Behaviour:** things a program does, largely synonymous with methods in a program.
- **Encapsulation:** a way to wrap and group commonly used behaviour so your program is more modular.
- **Class:** The Object-Oriented way to wrap commonly used behaviour.

###### User Stories

```
As a mathematician
So I can add numbers
I want to add two numbers on my calc
```

```
As a mathematician
So I can subtract
I want to subtract two numbers on my calc
```

```
As mathematician
So I can enjoy the output of the calculator
I want a pretty output
```

## Main (30 minutes)

Students should wrap the bare methods you wrote into a class structure. They can start by cloning this repository.

## Plenary (15 minutes)

Choose two students' examples to share, and critique them. Then either demonstrate your solution, or use the [`plenary`](https://github.com/makersacademy/skills-workshops/tree/plenary) branch for this directory.

### Possible reasonable solutions

* Arithmetic class and Printer class.
* monkey-patching Fixnum.

### Extension

Encourage students to add a comment at the top of a class definition file saying what the responsibility of the class is. Stick to the following rules: the comment must start with 'understands', it must not reference itself (i.e. a calculator could not 'understands doing calculations' or 'understands being a calculator'), and it should reference the _behaviour_ of the object, not its state.
