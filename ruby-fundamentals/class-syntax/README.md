# Classes: state and behaviour

## Learn to

- Understand classes and objects
- Create a class with state and behaviour in Ruby

## Introduction

Imagine we had these user stories for a bank:

- As a customer I would like to deposit money in my account
- As a customer I would like to withdraw money from my bank account
- As a customer I would like to view my balance

```ruby
$balance = 0

def deposit(money)
  $balance += money
end

def withdraw(money)
  $balance -= money
end
```

But what if we wanted our program to keep track of multiple bank accounts?

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

It quickly becomes unmanageable. We want to repeat a balance, deposit and withdraw
for every customer. Let's see how we could use classes to remove the repetition.

### What is a class?

The simplest class we could have in Ruby has a name:

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

Classes are like a cookie cutter! Each bank account comes from the same cutter.
They are called instances of the class, and they know their class:

```ruby
bank_account = BankAccount.new
bank_account.class  #=> BankAccount
```

But so far our bank accounts don't do very much. Instances of a class are objects.
What makes an object? State + behaviour.

Let's see how we can give instances of a class state and behaviour.

### State

We could give every bank account a balance:

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

Let's return to our bank account. Imagine we had these user stories:

- As a customer I would like to deposit money in my account
- As a customer I would like to withdraw money from my bank account
- As a customer I would like to view my balance

Let's parse these user stories for the nouns and verbs.

Nouns

Verbs

Object ~
Methods ~
Variables ~

```ruby
class BankAccount
  def initialize(opening_balance)
     @balance = opening_balance
  end

  def balance
    @balance
  end

  def deposit(money)
      @balance += money
  end

  def withdraw(money)
      @balance -= money
  end
end
```

## Exercise One - Part 1

Have a look through these user stories and find the nouns and the verbs.

- As a car driver I want to know the car's speed
- As a car driver I want the car to accelerate
- As a car driver I want the car to slow down

Draw a domain diagram to find the object, instance variables, and methods

## Exercise One - Part 2

Try translating your domain model into code.

`bundle install`

For each of the exercises the aim is to write some code so that the tests pass.

You can run the tests by:
```shell
> cd exercise1
> rspec
```

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

## Exercise Three

Write a program that keeps a list of todos.

- As a user I want to add a todo to the list
- As a user I want to print my todo list

It should:
* Have two classes:
 * `Todo`
   * Has two methods:
     * `initialize`: Creates a new todo object. Takes a description as a
       parameter and stores it on the todo object.
     * `description`: Takes no parameters. Returns the description that was
       stored when the todo was created.
 * `TodoList`
   * Has three methods:
     * `initialize`: Creates a new todo list object. Takes no parameters.
     * `add`: Takes a todo object as a parameter. Stores it on the
       todo list object.
     * `print`: Takes no parameters. Creates a string of all the
       stored todos, one per line. Each line should start with a bullet `* `.
       * e.g.
         ```
         * get milk
         * get the papers
         ```
