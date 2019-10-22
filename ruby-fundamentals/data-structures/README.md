## Data structures

### Learning outcomes
* Use arrays and hashmaps to store and retrieve information
* Compare and contrast arrays and hashmaps
* Explain how arrays and hashmaps might be used in a novel context

### Introduction

Imagine you're designing a menu system for a restaurant.  Somewhere, somehow, there _has_ to be stored a collection of items that are available for purchase.

One approach would be to store the items in an `array`.
```
  menu = ["pizza", "burger", "chicken"]
```

But surely we also want to keep track of the price for each item. A customer might, for example, want to know the cost of the pizza they're considering.

We _could_ put the prices in another array, like so.
```
  menu = ["pizza", "burger", "chicken"]
  prices = [8, 9, 6]
```

But, this is a dangerous approach – if someone wants to update the menu, they'd have to be careful to update our prices array as well.

If you remain unconvinced that this is a poor solution, think back to the question "how much is the pizza?".  To answer that we would first need to find the position of "pizza" in our `menu` array and then find the corresponding element in the `prices` array.  **Try implementing that solution.**


Alternatively we could use an array of arrays, like so.

```
  menu = [["pizza",8],["burger",9],["chicken",6]]
```
This _is_ definitely an improvement! Now the price and the dish are stored together.
So... how much is the pizza?

```
    price = 0
    menu.each { |item|
      if item[0] == "pizza"
        price = item[1]
      end
    }
```
An improvement, but definitely feels a bit clunky – we have to search through the entire menu and we are assuming that the array structure will _ALWAYS_ be [dish, price].  If it _ever_ changes, the program will break.

A further improvement would be to use a hashmap. A hashmap associates a key with a value.  In the example below, the key is the dish and the value is the price.
```
  menu = {
    "pizza" => 8,
    "burger" => 9,
    "chicken" => 6
  }
```

The major advantage of using a hashmap here is that we can access values using the keys.  So... how much does the pizza cost?
```
menu["pizza"]
=> 8
```

As the menu evolves we may wish to store more data for each menu item.  So, the hashmap becomes more complex, like so.

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

How would you access the price of the pizza now?
