# Language into code

## Learning Objectives

- Understand code is a set of instructions
- Understand  pseudo code as a method for taking a problem and writing a high description of the program
- Understand how to take a problem and develop pseudocode and put into code

## Introduction

A big part of your job as a developer is figuring out how to translate (often somewhat poorly defined) requirements into working software.

The problem is that humans and computers process information in fundamentally different ways. While you are capable of dealing with abstract, fuzzy ideas, your computer is not. You need a means of translating requirements into the kind of simple step-by-step processes that a machine can deal with.

## Pseudocode

Pseudocode is a step-by-step, written outline of code that you would like to write. It can be an invaluable tool for thinking through problems and a useful step in the process of going from human readable instructions to code.

Let's look at an example. Here is the specification for a simple program we might be asked to write:

```
Write a program that:
 * Says, “Give me a name”. The user enters a name.
 * Says, “Give me a name” again.  The user enters another name.
 * Continues asking for name until the user types “stop” instead
   of a number.
 * `puts`es the all the names on the terminal separated by a space.
```

Looking at each requirement one at a time, we can begin to imagine the steps that our programme will need to perform in order to complete the task it is intended for.

The first requirement tells us to print a message, then get some input from the user. Without using any programming language specific syntax, the first iteration of our pseudocode might look something like this.

```
print 'Give me a name'
get user input
```

The next instruction tells us to continually repeat these steps:

```
keep repeating
  print 'Give me a name'
  get user input
```

Next, we're told to stop this process if the user inputs the word stop:

```
keep repeating
  print 'Give me a name'
  get user input
  IF user input == 'stop'
    stop repeating
```

Finally, we want to print out all of the provided names to the console.

```
keep repeating
  print 'Give me a name'
  get user input
  IF user input != 'stop'  
    store user input
  If user input == 'stop'
    print out all names
    stop repeating
```

We now have a much clearer representation of the steps that our programme will need to complete.  

## Task

Translate the following requirements into pseudocode;

```
- Write a program to control a lift which accepts commands to go up and down floors.
- If the user provides a positive number, the lift should go up by that number of floors.
- If the user provides a negative number, the lift should go down by that number of floors.
- The lift starts at floor 0.
- The building has a basement, so the lift *can* go to floors below 0.
- The program should continue to ask for input until the user enter 'stop'
- Once the user chooses to stop, the program should `puts` the number of the floor where the lift is currently located.
```

Once you feel confident that your pseudocode is an accurate representation of the steps your programme needs to follow, try translating it into working code.
