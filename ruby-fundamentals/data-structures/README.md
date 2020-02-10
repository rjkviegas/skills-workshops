## Data structures

### Learning outcomes
* Understand how that arrays and hashmaps
are used to store information
* Understand how to retrieve information from an array or a hashmap
* Solve problems using arrays and hashmaps

### Introduction

Imagine you're designing a menu system for a restaurant.  Somewhere, somehow, there _has_ to be stored a collection of items that are available for purchase.

One approach would be to store the items in an `array`.
```
  menu = ["pizza", "burger", "chicken"]
```
It we wanted to find the item called burger how would we do that?

##### Option 1
```
  menu["burger"]
```
##### Option 2
```
  menu[2]
```
##### Option 3
```
  menu[1]
```
##### Option 4
```
  menu(1)
```
Now imagine we wanted to know how much each of the items cost. How could we store this?

We want to associate two variables together,
so a key, value store like a `hash` could be useful to us.

Our menu could become:
```
  menu = {
    "pizza" => 8,
    "burger" => 9,
    "chicken" => 6
  }
```

If we wanted to find the price of burger how could we do that?

##### Option 1
```
  menu["burger"]
```
##### Option 2
```
  menu[2]
```
##### Option 3
```
  menu[1]
```
##### Option 4
```
  menu("burger")
```

### Exercise 1

You'll be given some problems and possible solutions in cards. Take a look at each card and decide which are valid solutions to the problem and which are not.

### Exercise 2

Have a go at writing these solutions in code in the ruby scripts in this project.
