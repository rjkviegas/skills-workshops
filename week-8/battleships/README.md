# Battleships

This week, in the mornings, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time. For this one, there will be a light time pressure. See what you can get done in the mornings this week.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

Note: There are lots of stories. Focus on your software crafting process.

# Schedule

## Tuesday
```
10:00 - 11:30 Work solo to implement the Battleship user stories in Ruby. Have breaks whenever you like.
```
## Wednesday
```
10:00 - 10:15 Review your own code and process.
10:15 - 10:45 Refactor your code.
10:45 - 11:30 Work solo to implement the Battleship user stories in Ruby. Have breaks whenever you like.
```
## Thursday
```
10:00 - 10:15 Review your own code and process.
10:15 - 10:45 Refactor your code.
10:45 - 11:30 Work solo to implement the Battleship user stories in Ruby. Have breaks whenever you like.
```
## Friday
```
10:00 - 10:30 Work solo to implement the Battleship user stories in Ruby. Have breaks whenever you like.
10:30 - 11:30 Group code review on the projector.
```

# User stories
# Part 1
_Place a ship and sink it._
```
As a player
So that I can amuse myself
I would like to start a 10x10 game of battleships.

As a player
So that I can understand what's going on
I would like to be able to see the current state of the game.

As a player
So that I can prepare for the game
I would like to be able to place a ship of size: [3] in my game.

As a player
So that I can lay my ship out properly
I would like to place a ship either horizontally or vertically.

As a player
So that I can have a coherent game
I would like my ship to be constrained to be on the board

As a player
So that I can play the game
I would like to be able to fire at the board and know whether it's a hit or a miss.

As a player
So that I can refine my strategy
I would like to know when I have sunk a ship.
```

# Part 2
_Place many ships and sink them all._
```
As a player
So that I can prepare even better for the game
I have to place ships of sizes: [2, 3, 3, 4, 5] before attacking.

As a player
So that I can have a coherent game
I would like my ship to be constrained to not overlap

As a player
So that I can refine my strategy
I would like to know when I have sunk each ship
```

# Part 3
_Two can play at this game._
```
As a player
So that I can play against a human opponent
I would like to play a two-player game where we alternate shots at each other's ships

As a player
So that I can consider my next shot
I would like to be able to see my hits and misses so far

As a player
So that I know when to finish playing
I would like to know when the game is over and who won
```

# Part 4
_Can you see a lie?_
```
As a player
So the game is more fun to play
I would like a nice command line interface that lets me enter ship positions and shots using commands (rather than using IRB to interact with objects)
```
