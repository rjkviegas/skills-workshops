# Objects: state and behaviour

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

It becomes a bit unmanageable. We can use classes to avoid this repetition.

### What is a class and an object?

The simplest class we could have in Ruby has a name:

```ruby
class Cookie
end
```

And now we can make lots of instances of this class, each one is a separate object:

```ruby
cookie1 = Cookie.new
cookie2 = Cookie.new
cookie3 = Cookie.new
```

Classes are like a cookie cutter! But so far our cookies don't do very much.

What other things can an object have?

 - State: instance variables
 - Behaviour: methods

We could give every cookie a name:

```ruby
class Cookie
  def initialize(name)
    @name = name
  end
end
```

Now each instance can have a different name:

```ruby
choc_chip_cookie = Cookie.new("chocolate chip")
macadamia_nut_cookie = Cookie.new("macadamia nut")
```

Imagine we had these user stories:

- As a user I would like to be able to deposit money to my bank account
- As a user I would like to be able to withdraw money from my bank account
- As a user I would like to be able to view my balance

Let's parse these user stories for the nouns and verbs.

Nouns

Verbs

Object ~
Methods ~
Variables ~

```ruby
class BankAccount
  def initialize
     @balance = 0
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

### Exercise One - Part 1

Have a look through these user stories and find the nouns and the verbs.

- As a car driver I want to know the car's speed
- As a car driver I want the car to accelerate
- As a car driver I want the car to slow down

Draw a domain diagram to find the object, instance variables, and methods

### Exercise One - Part 2

Try translating your domain model into code.

`bundle install`

For each of the exercises the aim is to write some code so that the tests pass.

You can run the tests by:
```shell
> cd exercise1
> rspec
```

### Exercise Two

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

### Exercise Three

Write a program that keeps a list of todos.

- As a user I want to add a todo to the list
- As a user I want to print my todo list

It should:
* Have two classes:
 * `Todo`
   * Has two methods:
     * `initialize`: Creates a new todo object. Takes a string as a
       parameter and stores it on the todo object.
     * `text`: Takes no parameters. Returns the string that was
       stored when the todo object was created.
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
