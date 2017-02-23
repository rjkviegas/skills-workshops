# Making code simpler through polymorphism

This workshop is about using polymorphism to build simpler code.

## Learning objectives

1. Describe polymorphism as "being able to use different things in the same way".

2. Explain how polymorphism can be used to build simpler code.

3. Refactor some code to use polymorphism to make it simpler.

## Introduction

### Polymorphism

Here's some code that moves planes and cars:

```ruby
def move_200(thing)
  if thing.is_a?(Car)
    thing.drive(200)
  elsif thing.is_a?(Plane)
    thing.fly(200)
  end
end
```

This code isn't polymorphic.  It treats different things differently.

How would you add a `Skateboard` class?

You might do this:

```ruby
def move_200(thing)
  if thing.is_a?(Car)
    thing.drive(200)
  elsif thing.is_a?(Plane)
    thing.fly(200)
  elsif thing.is_a?(Skateboard)
    thing.skate(200)
  end
end
```

But imagine if you refactored the `Car`, `Plane` and `Skateboard` to all have a `move` method.  You could rewrite `move_200` as:

```ruby
def move_200(vehicle)
  vehicle.move(200)
end
```

The `Car`, `Plane` and `Skateboard` are now treated polymorphicly as just "vehicles".

### Duck typing

How does the code above relate to duck typing?

### Simplicity

How is the polymorphic code simpler?

## Instructions

There's a project inside this directory.  It's a very simple test assertion library.  It lets you create a list of assertions and then check them.  For example:

```ruby
assertion_list = AssertionList.new
assertion_list.add(TruthyAssertion.new(""))
assertion_list.add(EqualAssertion.new(1, 1))

assertion_list.run_all_assertions
```

You job is to simplify the code by making it polymorphic.

There are two feature tests to help you refactor the code.  To make the refactoring easier, there are no unit tests.  Depending on the changes you make, you may be able to leave the feature tests unchanged, or you may need to change them slightly.

## Setup

### Install the dependencies

```
cd to/this/directory
bundle install
```

### Run the tests

```
rspec
```
