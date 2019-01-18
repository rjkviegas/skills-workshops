# Language into code

## Learning Objectives

- Understand code is a set of instructions
- Understand  pseudo code as a method for taking a problem and writing a high description of the program
- Understand how to take a problem and develop pseudocode and put into code

## Starter (5 minutes)

- Think of a physical procedure to demonstrate idea to specific instructions eg [make a sandwich](https://www.youtube.com/watch?v=euFj8D1A1Kw)


## Exercise 1 -> Small coding challenge

### 1.1 Idea to pseudocode (as the whole group)

Give the students an example problem and discuss as a group the procedures to solve it.

Write a program that:
 * Says, “Give me a name”. The user enters a name.
 * Says, “Give me a name” again.  The user enters another name.
 * Continues asking for name until the user types “stop” instead
   of a number.
 * `puts`es the all the names on the terminal separated by a space.
 * e.g.

```   Give me a name
   Jane
   Give me a name
   Alex
   Give me a number
   Olivia
   Give me a number
   Jacob
   Give me a number
   stop
   Jane Alex Olivia Jacob
```

 * Note: When you run the automated tests, the tests will simulate
   the user input.  You shouldn’t need to enter any input manually.
   If the tests hang when you run them, it probably means your code
   doesn’t work correctly, yet.

 * Note: You can assume that the user will always enter either an
   integer or `stop`.

### 1.2 Pseudocode to code (live coach to demonstrate)

```
names = []
puts “Give me a name”

while true do
 name = gets.chomp.capitalize
 if name != “Stop”
   names.push(name)
   puts “Give me a name”
 else
   p names.join(' ’)
   break
 end
end
```

### 2.1 Idea to pseudocode (in groups of 3)

Describe the behaviour of the computer program:

Write a program to control a lift which accepts commands to go up and down floors. 
It should accept a command which will stop the lift and print out the floor
that it is on.

Get the devs to come up with a list of procedures to describe the program. Feedback to the whole group each subgroups
list of procedure and discuss similarities and differences.


### 2.2 Pseudocode to code (in pairs)

Get the devs to write the program from pseudocode to code. Get a dev to discuss solution to the whole group.

```
current_floor = 0
puts "Currently at floor #{current_floor}"
puts "How many floors would you like to go up/down by?"
while true do
 change = gets.chomp.capitalize
 if change != "Get off the lift!"
   current_floor += change.to_i
   puts "How many floors would you like to go up/down by?"
 else
   p current_floor
   break
 end
end
```