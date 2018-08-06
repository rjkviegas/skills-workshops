# The TDD Process

## Learning objectives
- Explain why we do TDD
- Understand what is meant by Red, Green, Refactor
- Follow the Red, Green, Refactor process to TDD a simple domain

## Why do we TDD

There are good reasons to write tests, but why write tests first?

Over the coming weeks, the reasons for test driving your code will become increasingly obvious to you.  For now, understand that it comes with a range of benefits:

- It helps us to focus on what we want the code to do.
- I helps us to know exactly what code to write next
- It helps guard against breaking changes.

## The steps of TDD

It's important to understand TDD as a process distinct from any one particular tool.  

For the first few weeks at Makers, you'll probably focus mostly on using RSpec.  RSpec is a great tool to help us with testing Ruby programmes, but it is _*by no means*_ the only tool out there.  Over the course of your career as a software developer, you'll likely encounter many different testing frameworks, each with slightly different syntactic conventions, and slightly different expectations about how you will organise and execute your tests.

_*Try not to focus on the tool, but rather the process it allows you to engage with.*_

The process of TDD is often described as breaking down into three distinct phases - Red, Green and Refactor.

### Red

TDD always starts with us writing a failing test, but how do we know what test to write?

When writing software, we often make use of user stories - short descriptions of features that our application should include.  For example:

```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```

Reading this user story tells us two thing about the domain we're trying to build:
1) There should be a Dice object.
2) We should be able to roll the Dice.

Having established these requirements, our first step is to write a feature test.  This effectively means that we write and run the code that we'd like to have.  If we're writing in Ruby, we can use a REPL like irb.

Remember, at the moment, the feature we're trying to write involves creating, then being able to roll a Dice object.  Our feature test might look something like this:

```bash
$ irb
2.5.0 :001 > dice = Dice.new
Traceback (most recent call last):
        2: from /Users/sam/.rvm/rubies/ruby-2.5.0/bin/irb:11:in `<main>'
        1: from (irb):1
NameError (uninitialized constant Dice)
```
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
As a dice app developper,
So that I give players a good game experience
I want the dice roll to be randomly picked
```

```
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time
```

```
As a board game player,
So that I know what my score was when I rolled several dice
I want to get the result of each dice roll
```
