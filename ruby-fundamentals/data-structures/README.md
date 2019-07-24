## Data structures

Data structures are a way of our programs to organise, store and retrieve information.

## Example
Imagine creating a menu. We could create a variable for each item as so.
```
  pizza = "pizza"
  burger = "burger"
  chicken = "chicken"
```
One reasonable question we might have is how many items do we have in our menu?
We can kind of infer this by looking at how many variables we typed, but it
would be easy to lose track of this, especially if we decided to add or remove
items at various points in the program.

A solution to this could be to store these items together in an `array`.
```
  menu = ["pizza", "burger", "chicken"]
```
We can now use the method `menu.length` to find out how many items there are.
This is guaranteed to give us the correct answer even if items are added/removed
from the array.

### Task 1
Given a menu, are there any other operations or procedures we might want to do?

Print out all elements of the array.
```
    i = 0
    while i < menu.length
      puts menu[i]
      i += i + 1
    end
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
This feels like a bit of a faff!

An alternative is we could make each element in our menu array an array itself.

```
  menu = [["pizza",8],["burger",9],["chicken",6]]
```
This is an improvement because now the price and the dish are stored together.
Back to our question. How much is a pizza?

```
    i = 0
    while i < menu.length
      item = menu[i]
      if item[0] == "pizza"
        price = item[1]
      end
      i += 1
    end
```
An improvement, but definitely feels a bit clunky. We are assuming that the
dish is at position 0 in the array and that the price is at position 1 in the array.
It would be easy for a the program to the modified and this relationship would break.

What we could do is make use of a `hashmap`. A `hashmap` associates a key with a value.
```
  item = {"dish": "pizza", "price":8}
  item["dish"] --> returns "pizza"
  item["price"] --> returns 8
```


```  
  menu = [
          {"dish" => "pizza", "price" => 8},
          {"dish" => "burger", "price" => 9},
          {"dish" => "chicken", "price" => 6}
         ]
```
Now our solution to how much is a pizza can be:
```
i = 0
while i < menu.length
  item = menu[i]
  if item["dish"] == "pizza"
    price = item["price"]
  end
  i += 1
end
```

###Task
How much is the total cost of all the items?
