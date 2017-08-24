Using complexity metrics to guide refactoring
=============================================

## Learn to

* Use complexity ratings to get quality feedback
* Use complexity ratings to drive refactoring

## Introduction

Try this out:

```shell
$ gem install flog
$ cd takeaway_challenge # wherever yours is
$ flog --group --all lib
# ^ or wherever your implementation code lives
#
# Note that we don't usually care so much
# about the complexity of our specs.
```

Complexity is, to put it crudely, a measure of 'how much stuff is going on' in a given unit of code (e.g. a method, a class).

Highly complex methods tend to:

* Be hard to refactor
* Be difficult to read
* Signal poor design

Complexity scores aren't a hard and fast measure of good code vs bad code, but pretending that they are can be very useful for a beginner.

Over time, you will gain a clearer intuition for code that needs to be refactored and code that doesn't. Until then, complexity scores can be your guide.

### Complexity Targets

Use the following levels to guide your refactoring.

Target level 1 first, then 2, then 3. Don't jump all the way to 3.

* **Level 1**: Charmander
  * All methods have complexity under 10
  * All classes have complexity under 30

* **Level 2**: Charmeleon
  * All methods have complexity under 6
  * All classes have complexity under 15

* **Level 3**: Charizard
  * All methods have complexity under 5
  * All classes have complexity under 10

### Difficulty

Expect doing this to be pretty tough — especially at the higher levels.

You may find you're totally stuck as to what to do. This is fine and normal — it is a sign that you still have learning to do.

Treat this like any other learning process — practice, reflection and feedback are your main tools.

## Exercise 1

Consider this code:

```ruby
class Story
  def tell
    puts "Once upon a time there was a good horse."
    puts "Do you like this horse?"
    if gets.downcase.start_with? "y"
      puts "Do you like it a lot?"
      if gets.downcase.start_with? "y"
        puts "It lived happily ever after"
      else
        puts "It lived an okay life"
      end
    else
      puts "It got sad"
      puts "Forever :("
    end
  end
end
```

Use `flog` to assess its complexity.

Take it first to Level 1, then Level 2, then Level 3.

Don't jump levels!

## Exercise 2

Pick yours or your pair partner's weekend challenge codebase.

Run `flog` on it.

Find the most complex methods and the most complex classes and get a feel for what they look like.

Now on the other codebase.

## Exercise 3

Pick one and then refactor it to Level 1. Then swap to the other.

Work up the levels in this way.
