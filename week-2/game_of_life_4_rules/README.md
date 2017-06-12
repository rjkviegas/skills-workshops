# Conway's Game of Life and the 4 rules of simple design

## Overview

You'll TDD Conway's Game of Life in pairs.  You'll use the [4 rules of simple design](#4-rules-of-simple-design) to guide you.

![Game of Life example](game_of_life.gif)

## Session structure

* You'll spend 25 minutes TDDing the Game of Life [stories](#stories) in pairs.

* You'll spend 15 minutes reviewing your own code.  To help you review your code, you'll use Corey Haines's [4 rules of simple design](https://piazza-resources.s3.amazonaws.com/j11t8bsxngk3r3/j2bwfpw8k5a2gx/Corey_HainesThe_Four_Rules_of_Simple_DesignEN.pdf?AWSAccessKeyId=AKIAIEDNRLJ4AZKBW6HA&Expires=1497276329&Signature=LXwB2CvvzzBII%2FdZEHx3grxPZXM%3D) book.

* As a whole group, we'll spend a few minutes discussing what we learned from the session.

* At the end of the session, you'll delete your Game of Life code from your hard drive.

## Overall structure

We'll do this session four times this week.  The goals are:

* Practicing object oriented design and implementation.

* Practicing TDDing in short development loops.

* Practicing using the 4 rules of simple design to write high quality code.

* Iterating on designing a solution to a problem without having to live with past decisions.

* Trying to disassociate our ego from the code we write.

## 4 rules of simple design

* Passes the tests
* Reveals intention
* Avoids duplication (is DRY)
* Fewest elements

These rules are ordered from most important to least.

### Passes the tests

The most important rule is that the software does what it should do.

### Reveals intention

It should be easy to understand what the purpose of the code is.  It should be easy to understand how the code works.

### Don't Repeat Yourself

This is about knowledge, not identical lines of code.  Each idea in the program should be expressed in one place.  For example, in a game, the algorithm for creating a new character should only be expressed in one place in the code.

### Fewest elements

The code should have the fewest possible classes, methods, and lines of code.

Source: https://martinfowler.com/bliki/BeckDesignRules.html

## Stories

```
As a player
So I can see the state of the system
I want to print out the grid of cells

As a player
So I can set up the grid
I want to create a board with specific cells living

As a player
So I can see the system change slowly
I want to step the system forward one step

As a player
So I can see a realistic game of life
I want cells to die if they have fewer than two neighbours

As a player
So I can see a realistic game of life
I want cells to live if they have two or three neighbours

As a player
So I can see a realistic game of life
I want cells to die if they have more than three neighbours

As a player
So I can see a realistic game of life
I want a dead cell to come alive if it has three neighbours
```
