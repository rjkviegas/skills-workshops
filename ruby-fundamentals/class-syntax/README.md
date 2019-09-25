# Classes: state and behaviour

## Learning objectives

- Understand classes and objects
- Create a class with state and behaviour in Ruby

## Introduction

Imagine we had these user stories for a bank account:

- As a customer I would like to deposit money in my account
- As a customer I would like to withdraw money from my bank account
- As a customer I would like to view my balance

Here's a way we could represent a bank account. With an integer for the balance
and methods to deposit and withdraw money.

```ruby
$balance = 0

def deposit(money)
  $balance += money
end

def withdraw(money)
  $balance -= money
end
```

But what if we wanted to keep track of multiple bank accounts?

```ruby
$alices_balance = 0

def alice_deposit(money)
  $alices_balance += money
end

def alice_withdraw(money)
  $alices_balance -= money
end

$bobs_balance = 0

def bobs_deposit(money)
  $bobs_balance += money
end

def bobs_withdraw(money)
  $bobs_balance -= money
end
```

Repeating this for each customer will quickly become unmanageable. Let's look at
how classes could help us have multiple bank accounts without copying our code.

### What is a class?

A class defines a type of object. The simplest class we can have in Ruby just has
a name:

```ruby
class BankAccount
end
```

And now we can use this class:

```ruby
bank_account1 = BankAccount.new
bank_account2 = BankAccount.new
bank_account3 = BankAccount.new
```

Classes are like a cookie cutter. Each bank account comes from the same cutter.
These are called instances of the class, and they know their class:

```ruby
bank_account1.class  #=> BankAccount
```

But so far our bank accounts don't do very much. Instances of a class are objects.
What makes an object? State + behaviour.

Let's see how we can give instances of a class state and behaviour.

### State

We could give every bank account an opening balance:

```ruby
class BankAccount
  def initialize(opening_balance)
    @balance = opening_balance
  end
end
```

Now each bank account object can have a different opening balance:

```ruby
alices_account = BankAccount.new(101)
bobs_account = BankAccount.new(42)
```

### Behaviour

We can give our bank account behaviour by adding `deposit` and `withdraw` methods.

```ruby
class BankAccount
  def initialize(opening_balance)
    @balance = opening_balance
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end
end
```

Notice that the instance variable `@balance` is available in every method.

## Exercise One

For each of the exercises the aim is to write some code so that the tests pass.

You can run the tests by:
```shell
> bundle install
> cd exercise1
> rspec
```

The first exercise has tests that describe a car:

- As a car driver I want to know the car's speed
- As a car driver I want to accelerate
- As a car driver I want to brake

## Exercise Two

- As a garage owner I want to add a car to the garage
- As a garage owner I want to find a car by its registration plate
- As a garage owner I want to remove a car from the garage
- As a garage owner I want to see all the cars of a particular make

It should:
* Have one class:
  * `Garage`
    * Has one instance variable:
      `cars`. This is a list of cars. Each car has a `registration_plate` and `make`.
    * Has 5 methods:
      * `initialize` This is provided for you.
      * `add`. Takes a hash representing a car as a parameter and appends it to the list of cars.
      * `find_car`. Takes a number plate as a parameter and returns a car with a matching registration plate.
      * `remove_car`. Takes a number plate as a parameter and deletes the car from the list of cars.
      * `all_cars_by_make`. Takes a make as a parameter and returns a list of all the cars of that make.
