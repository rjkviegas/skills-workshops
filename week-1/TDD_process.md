# The TDD Process

## Learning objectives
- Explain why we do TDD
- Describe/diagram TDD as a set of steps
- Apply TDD folowing the diagram

## Why do we TDD

There are good reasons to write tests, but why write tests first?

## The steps of TDD

In teams, describe or diagram the process of TDD.
Your diagram might include: User story, Writing a test, Green, Red, Refactor, Write code, Feature test

## Apply the process

Setup a `dice_app` folder with rspec:

```
mkdir dice_app
cd dice_app
rspec --init
```

Here are some user stories. For each of them:
- Write a feature test (write in irb what you would like to have)
- Write a unit test with the same error
- Run it - it should be red
- Write some code to make it green

```
As a board game player,
So that I can play the game
I can have a dice
```

```
As a board game player,
So that I know how many steps I should move
I can roll a dice and get a number between 1 and 6
```

```
As a dice app developper,
So that I give players a good game experience
I want the dice roll to be randomly picked
```


