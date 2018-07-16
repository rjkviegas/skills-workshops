Object Oriented Code 1, Encapsulation & Cohesion
================================================

## Learn to

* Encapsulate program behaviour into cohesive classes.

## Introduction

We break our programs up into multiple objects to control complexity. So how do we decide which methods and variables should live in which objects?

As programmers we strive for "low coupling and high cohesion". Today we're going to talk about cohesion. Do some research on the phrase if you wish to know about coupling.

### Cohesion

Each class should have one purpose or job, sometimes referred to as its responsibility.

A class has high cohesion when everything inside of it relates to that purpose, without anything extraneous. Perfection is achieved when there is nothing left to take away.

Take this example:

```ruby
class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def title
    @title
  end

  def body
    @body
  end

  def display
    puts @title
    puts "---"
    puts @body
  end

  def say_hi_to_kay
    puts "Hi Kay!"
  end
end
```

Let's imagine we wanted to group these methods by how related they seemed.

```

    * title
                 * display
      * body





                                         * say_hi_to_kay
```

Clearly `say_hi_to_kay` has nothing to do with any of the other methods.

We would re-group the methods into the following classes:

```ruby
class Note
  def initialize(title, body)
    @title = title
    @body = body
  end

  def title
    @title
  end

  def body
    @body
  end

  def display
    puts @title
    puts "---"
    puts @body
  end
end

class KayGreeter
  def say_hi_to_kay
    puts "Hi Kay!"
  end
end
```

What's the purpose of the `Note` class now? Could it be made even more cohesive?

## Exercise 1

**Use a diagram to group** the methods in these examples:

```
Bank
  - get_balance
  - credit_account(date, amount)
  - debit_account(date, amount)
  - print_statement
```

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries
```

## Exercise 2

**Use a diagram to group** the methods in this example:

```ruby
class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end
```

## Exercise 3

**Refactor** the methods in the Calculator example into two classes as you see fit.

## Exercise 4

**Test-drive** the secret diary example:

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.

When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.

When the user calls `lock` again they throw errors again.
```

**First** organise it into one class only.

**Then**, when all your tests are green, reorganise it into classes with high cohesion.

This will also involve reorganising your tests!
