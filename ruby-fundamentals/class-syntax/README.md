# State and behaviour

Imagine we had these user stories

 - As a user I would like to be able to deposit money to my bank account
 - As a user I would like to be able to withdraw money from my bank account
 - As a user I would like to be able to view my balance

```$xslt
    balance = 0
    
    def deposit(money)
       balance = balance + money
    end
    
    def withdraw(money)
        balance = balance - money
    end    

```

But what if we wanted our program to keep track of multiple bank accounts?


```$xslt

    alices_balance = 0
    
    bobs_balance = 0
    
    def alice_deposit(money)
       alices_balance = alices_balance + money
    end
    
    def alice_withdraw(money)
        alices_balance = alices_balance - money
    end  
    
    
    def bobs_deposit(money)
       bobs_balance = bobs_balance + money
    end

    def bobs_withdraw(money)
       bobs_balance = bobs_balance + money
    end
```

It becomes a bit unmanageable. What we can do is make use of class/objects to avoid so much repitition.


### What is a class and an object?

The simplest type of class we could have in ruby is:


```$xslt

    class Example
    end

```
And we can make an object from a class as so

```$xslt

 example = Example.new
```

But this doesn't do very much! 


What other things can a class have?

 - (Instance) Variables
 - Methods
 
Imagine we had these user stories

- As a user I would like to be able to deposit money to my bank account
- As a user I would like to be able to withdraw money from my bank account
- As a user I would like to be able to view my balance

Let's parse these user stories for the nouns and verbs.

Nouns

Verbs


Object ~
Methods ~
Variables ~




```$xslt

    class BankAccount
    
        def initialize
           @balance = 0
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

As a car owner I want my car to tell me its current speed
As a car owner I want to be able to accelerate the car
As a car owner I want to be able to decelerate the a car

Draw a domain diagram to find the object, instance variables, and methods


### Exercise One - Part 2

Try translating your domain model into code.

`bundle install`

For each of the exercises the aim is to write some code so that the tests pass.

You can run the tests by:
`cd exercise1`
`rspec`


### Exercise Two

As a garage owner I want to be able to add a car to the garage
As a garage owner I want to be able to find a car by registration plate
As a garage owner I want to be able to remove a car
As a garage owner I want to see all the cars by a particular make

It should:
* Have one class:
  * `Garage`
    * Has one instance variable:
      `cars`. This is an array of hashmaps. Each hashmap relates to a car and
      contains the keys `registration_plate` and `make`.
    * Has 5 methods:
      * `initialize` This is provided for you.
      * `add`. Takes a hashmap (corresponding to a car) as a parameter. Appends to the list of cars variable in the class
      * `find_car`. Takes a string as a parameter. Returns a car (if found) with a matching registration plate.
      * `remove_car`. Takes a string as a parameter. Deletes a car (if found) with
      a matching registration plate from the list of cars variable.
      * `all_cars_by_make`. Takes a string as a parameter. Returns all cars (if found) with a matching make.


### Exercise Three

Write a program that keeps a list of todos. It should:
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
     * `add`: Takes a todo object as a parameter.  Stores it on the
       todo list object.
     * `print`: Takes no parameters.  Creates a string of all the
       stored todos, one per line.  Each line should start with a
       `* `.  `puts`es the string.
       * e.g.
         ```
         * get milk
         * get the papers
         ```
