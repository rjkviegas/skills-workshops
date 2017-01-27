# Scope of a variable (Ruby practice)

## The scope of a variable

The scope of a variable is the areas of the code where you can use it.

### Examples

#### Name

```ruby
# Can name be used in the place it's printed?

def print_name
  name = "Isla"
  puts name
end

print_name

# Yes.
```

#### Favourite food

```ruby
# Can favourite_food be used in the places it's printed?

favourite_food = "daddy's apple pie"

def print_favourite_food
  puts favourite_food # 2
end

puts favourite_food # 1

print_favourite_food

# It can be used at position 1.
# It can't be used at position 2 because of method scope.
```

#### Favourite drink

```ruby
# Can favourite_drink be used in the place it's printed?
# Can drink be used in the place it's printed?

favourite_drink = "Ribena"

def print_drink(drink)
  puts drink
end

print_drink(favourite_drink)

# Yes.
# We talk about the scope of a variable, not the scope of a value (piece of data).
# The `favourite_drink` and `drink` variables point at the same value.
# But these variables have different scopes.
```

#### Magic word

```ruby
# Can magic_word be used in the place it's printed?

magic_word = "please"

5.times do
  puts magic_word
end

puts magic_word

# Yes.  Read about block scope.
```

## Processes for finding out the scope of a variable

* `p` everywhere.  This should be your first instinct when you're trying to understand code.  Don't know where a variable is available? `p` it.

* Google articles about the rules governing Ruby variable scope.

* Dive into IRB.  Write a tiny example and test out hypotheses about what controls the scope of the variable.

## Instructions

1. Get a printout of the code in the files in the `lib` folder.

2. Look at the `exercise_1/exercise_1.rb` file.

3. Go through your printout.  Find all the variables that are printed (eg `puts @c`).  Predict what will be printed.

4. Run the code to see if you were right.  If you weren't, experiment by changing and running code to understand the scope of the variables. Update your prediction.

4. Now do steps 3 to 4 with the other exercises.
