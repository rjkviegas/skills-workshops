# Test-drive a class

## Learning objectives
* Explain why we do TDD
* Describe the steps of the test-driven development process
* Apply the test-driven development process to a simple program

## 0. Intro - Why do we TDD (10min)

* Why are tests useful?
* Why would we write tests before writing code?

## 1. The steps of TDD (10min + 5min)

In teams, describe or diagram the process of TDD. Your diagram might include: `Red`, `Writing a test`, `Green`, `User story`, `Refactor`, `Write the simplest possible code`, `Feature test`

## 2. Apply the process (10min + 30min)

In pairs, follow the TDD process you have created to test-drive the following program.

### Setup a `piggy_bank` folder with rspec:

```
mkdir piggy_bank
cd piggy_bank/
rspec —-init
```

### User stories
```
As a user,
So that I can save money
I can put coins in my piggy bank
```
```
As a user,
So that I know whether there are coins in my piggy bank
I can shake it, and it will “cling” if there is money in it
```
```
As a user,
So I can enjoy my hard earned savings
I can break my piggy bank and get back the number or coins that I had put in
```
## Resources
* 💊 [Behaviour Driven Development with RSpec](https://github.com/makersacademy/course/blob/master/pills/rspec.md)
* 💊 [Test Driven Development](https://github.com/makersacademy/course/blob/master/pills/tdd.md)
