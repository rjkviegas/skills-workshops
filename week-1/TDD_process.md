# The TDD Process

## Learning objectives
- Explain why we do TDD
- Describe/diagram TDD as a set of steps
- Apply TDD following the diagram

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

Here are some user stories. For each of them, follow the TDD process from your diagram.

```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```

```
As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6
```

```
As a dice app developer,
So that I give players a good game experience
If it is not already random, I want the dice roll to be randomly picked
```

```
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time
```

```
As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll
```

```
As a board game player,
So that I know what my score is after I have rolled several dice
I want to be able to get my current score
```
