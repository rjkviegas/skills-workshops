Code Quality 1, Testing & Linting
=================================

## Learn to

* Assess and improve the quality of your code using:
  * Test coverage tools
  * Code linting tools

## Introduction

The quality of a piece of software encompasses many things, but we'll start off with some very simple and clear guidelines.

If you can answer each of these questions with a yes, you will already be better than a significant fraction of the tech tests that get submitted:

1. Do the tests pass?
2. Does the linting pass? (e.g. Rubocop)
3. Is the test coverage at or above 95%?

These things, for you as junior developers, are non negotiable markers of quality. If you cannot answer yes to these questions then you have not finished your work.

:::success
If you are unable to make them true despite your best efforts, this is a very good piece of feedback on your learning — focus your efforts here.
:::

## Exercise 1

Run these commands to clone the Makers airport challenge repository (not your own one):

```bash
$ git clone git@github.com:makersacademy/airport_challenge.git
$ cd airport_challenge
```

Each of these commands will check out a different weekend challenge submission from previous students. Please sort them into 'high quality' and 'low quality' based on the criteria above, making a note of your answers.

```
$ git checkout example_1
$ git checkout example_2
$ git checkout example_3
$ git checkout example_4
$ git checkout example_5
$ git checkout example_6
```

### Answers

#### High Quality

* example_1
* example_3
* example_6

#### Low Quality

* example_2
* example_4
* example_5

## Exercise 2

Go through each of the 'low quality' examples above and fix them.

:::info
If there are very many stylistic Rubocop offences, use `rubocop --auto-correct` to thin them out. If there are just one or two — fix them manually.
:::

## Exercise 3

Examine yours and your pair partner's weekend challenges in turn to see whether they conform to the criteria above.

If, after examining both, you find one or more of them don't conform — make them conform.

## Exercise 4

Conforming to these standards is second nature after a while, but the adaption period can be frustrating. List some challenges, and some strategies to help:

### Challenges

*
*


### Strategies

*
*
