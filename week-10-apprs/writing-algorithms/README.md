# How to write algorithms, an intuitive approach

Algorithms are a sequence of instructions that solve a given problem.
But how do you come up with the instructions? In this workshop, we'll explore the process of writing algorithms.

## Learning objectives

*  Explain the process of creating algorithms
*  Use the process to create simple algorithms

## Creating Algorithms

### Proposed process

*1. Clarify the problem*

You want to have enough information to be able to **create a table which details inputs and expected outputs** for the function. Make sure to think about edge cases.
Here's an example for a _sorting function_:

| input | expected output |
|-----|-------|
| `[]` | `[]` |
| `[2,1,4]` | `[1,2,4]` |


- Each line in your table should *naturally turn into a test*.
- Write down the *function signature* inferred from the table

*2. Think about how you would do this, given this task in real life.*

Using physical object sometimes help here. Pieces of paper, cards, etc.

*3. Write down each step in plain english*

*4. If it is possible directly:*
  - translate each of the steps into code
  otherwise:
  - think about each step separately, and break them down further following steps 2 to 4.

*5. Once everything is translated to code, run your testcases*

If some tests fail, debug your code. One things that really help here is to get visibility on the value of each variable line by line.

Bonus:

- How efficient is your algorithm? Run it through your timing framework.
- Could it be simpler? more efficient? more readable? Refactor.

### Instructions

For each of the following problems, follow the process to come up with a solution.

#### Assigning Students into groups

Given a list of students, and a target number of groups, create an algorithm to assign students into the right number of groups, of equivalent sizes (groups cannot have more than one person difference).

#### Finding duplicates

Given a list of things (numbers or words), return all the elements that are duplicated in the list.
