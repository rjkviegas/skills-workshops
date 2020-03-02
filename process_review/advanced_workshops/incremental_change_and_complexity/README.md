# Balancing incremental change with increasing complexity

These are instructions for a coach-led workshop, looking at how to avoid the following when writing code using TDD:

1. Avoiding adding logic by extending hard-coded solutions like if/else statements, each time a new test is added.

2. Adding logic without having a failing test.

Suggest using [Scrabble Solver](../../exercises/scrabble_solver) as an example.

This workshop involves some live coding!

## Introduction

Ask the group whether they have found themselves either:

1. Not sure when to move away from hard-coded solutions into writing an algorithm.

2. Find themselves 'refactoring' to build an algorithm, rather than letting tests drive the development of an algorithm.

Introduce the problem you are going to use to walk through this process.

## Main

### Step 1: Inputs and outputs

Ask the group for a number of inputs and outputs, until you have enough to cover the first few tests.

### Step 2: Select first test

Work with the group to select a first test, make sure you discuss different options here and the code that each option would drive us to write.

Write the test with input from the group - make the smallest possible change to get the test passing.


### Step 3: Select the second test

This is a very important step, as there is more than one option!

Source options from the group, then choose one.

Get the test passing with the smallest possible change, then comment out the test and the code added.

Next, choose the other option that will generate a fail, and talk about what code this would drive. Go through the TDD process and compare outputs.

#### Example

The ideal first test for Scrabble Solver is:

```ruby
expect(scrabble.score('a')).to eq 1
```

There are then two options for the next test, and each would drive different code:

##### Option 1
**test:**
```ruby
expect(scrabble.score('d')).to eq 2
```
**code:**
```ruby
def score(word)
  if word == 'd'
    return 2
  end
  return 1
end
```

##### Option 2
**test:**
```ruby
expect(scrabble.score('to')).to eq 2
```
**code:**
```ruby
def score(word)
  return word.length
end
```

It's important to pull out the following points:

- The next test should generate a fail, so checking for another single point letter isn't a valid next test.

- The choice of third test will depend on what you choose for your second test!!

- There is no 'right' choice here, both are good tests

Encourage them to practice spotting the different options for a new failing test, and trying out different approaches.

### Step 4: Identify third test

First, ask the group which of the second tests they want to proceed with.

Once they have decided, reset the code, and ask them to choose the third failing test.

Of course, there will again be many options, and it will depend on the code you currently have.

Help them to find a next step which is a small increment, but would generate a test fail.

**At this stage, emphasise the importance of:**
- keeping the overall goal in mind. We can't test for every possible scrabble score, so we need to remember that the goal is to write an algorithm not hard code solutions.

- finding a failing test - think about what the code doesn't currently do.

- using real world examples. I discourage them from passing in random strings - the code is the documentation.

- Ensuring that refactoring reduces complexity and code, it doesn't add it.

- Letting a pattern emerge before refactoring, even if you have a solution in mind. (Try not to have solutions in mind!!)

Continue the TDD process with the group, talking about the decision points and code each next test will drive, for as long as you can.

Take opportunities to demonstrate refactoring, try to extract a pattern only when one emerges.
