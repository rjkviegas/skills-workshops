## Data structures

### Learning objectives
* Understand that arrays and hashmaps can be used
to store and retrieve information in a program
* Understand how an array is different from a hashmap
* Understand how to use an array and a hashmap in your programs

A solution to this could be to store these items together in an `array`.
```
  menu = ["pizza", "burger", "chicken"]
```

Now imagine we want to keep track of the price of each item. A reasonable question
we might have is how much is a pizza?

We could come up with another list like so.
```
  menu = ["pizza", "burger", "chicken"]
  prices = [8, 9, 6]
```

Again this is vulnerable to getting out of sync if we want to update our menu.
We'd have to be careful to update our prices array. To answer our question of
"how much is a pizza?" we would first need to find the position of "pizza" in
our menu array and then find the corresponding element in the `prices` array.


An alternative is we could make each element in our menu array an array itself.

```
  menu = [["pizza",8],["burger",9],["chicken",6]]
```
This is an improvement because now the price and the dish are stored together.
Back to our question. How much is a pizza?

```
    price = 0
    menu.each { |item|
      if item[0] == "pizza"
        price = item[1]
      end
    }
```
An improvement, but definitely feels a bit clunky. We are assuming that the
dish is at position 0 in the array and that the price is at position 1 in the array.
It would be easy for a the program to the modified and this relationship would break.

What we could do is make use of a `hashmap`. A `hashmap` associates a key with a value.
```
  menu = {
    "pizza" => 8,
    "burger" => 9,
    "chicken" => 6
  }
```

Now to find the price of a pizza all I need to do is say

menu["pizza"]

```  
  menu = {
    "pizza" => {
      "price" => 8,
      "vegetarian" => true
    },
    "burger" => {
      "price" => 9,
      "vegetarian" => false
    },
    "chicken" => {
      "price" => 6,
      "vegetarian" => false
    }
  }
```
