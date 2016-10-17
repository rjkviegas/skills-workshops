# Tracing Ruby expression return values (Ruby practice)

## Setup

    $ cd tracing-ruby-expression-return-values/
    $ bundle

## Run the tests

    $ rspec

## Expressions

An expression is a piece of code that returns something.

In some languages, only some things you can type are expressions.  For example, in C, the `if` statement is not an expression because it doesn't return anything.  It just controls which piece of code runs next.

In Ruby, everything you can type is an expression.  Here are some pieces of code.  I've underlined some example expressions using hashes:

```ruby
def count_sheep(sheep_names)
  sheep_names.count
end

sheep_names = [:flossie, :bessie]
count_sheep(sheep_names)
            ###########

# The `sheep_names` expression returns [:flossie, :bessie]
```

```ruby
def count_sheep(sheep_names)
  sheep_names.count
end

sheep_names = [:flossie, :bessie]
count_sheep(sheep_names)
########################

# The `count_sheep(sheep_names)` expression returns 2
```

```ruby
def count_sheep(sheep_names)
  sheep_names.count
  ###########
end

sheep_names = [:flossie, :bessie]
count_sheep(sheep_names)

# The `sheep_names.count` expression returns 2
```

```ruby
################################
# def count_sheep(sheep_names) #
#   sheep_names.count          #
# end                          #
################################

sheep_names = [:flossie, :bessie]
count_sheep(sheep_names)

# A brain bender: what does the definition (not invocation)
# of the `count_sheep` method return?
```

## Processes for tracing Ruby expression return values

* `p` everywhere.  This should be your first instinct when you're trying to understand code.  Don't know what an expression returns? `p` it.

* Look at the tests.  See what they're testing.  See what application they're running to test it.

* Follow the flow.  Start at the beginning of some code and try and figure out which pieces of code run in what order.  Figure out what data is passed along as the code runs.  You can run the code and `p` everywhere to help you figure things out.

## Instructions

1. Get a printout of the code in the files in the `lib` folder.

2. Follow the setup instructions above.

3. Run the tests and check they pass.

4. Look at the `lib/exercise_1.rb` file.

5. Go through your printout.  Circle each expression that runs.  Don't only circle lines that run.  Circle the parts of those lines.

6. Annotate each expression that you circles with the value that expression returns.

7. Now do steps 4 to 7 with the other exercise Ruby files in the `lib` folder.
