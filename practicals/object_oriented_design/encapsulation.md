Object Oriented Code 1, Encapsulation
=====================================

## Learn to

* Encapsulate program behaviour into classes.

## Introduction

### Procedural Architecture

This is a graph of the way lines of code interact in a procedural program.

Each node is a line number. The tendrils are roughly what a developer's brain needs to keep track of when programming. What's in all the variables (red) and where the program is going next (blue).

```graphviz
digraph graphname{
  rels [style=filled, fillcolor=lightblue]

  l01 -> l02 [color=Blue]
  l02 -> l03 [color=Blue]
  l03 -> l04 [color=Blue]
  l04 -> l05 [color=Blue]
  l06 -> l07 [color=Blue]
  l08 -> l09 [color=Blue]
  l10 -> l11 [color=Blue]
  l11 -> l12 [color=Blue]
  l12 -> l13 [color=Blue]
  l12 -> l27 [color=Blue]
  l13 -> l14 [color=Blue]
  l14 -> l15 [color=Blue]
  l15 -> l16 [color=Blue]
  l16 -> l17 [color=Blue]
  l17 -> l18 [color=Blue]
  l18 -> l19 [color=Blue]
  l20 -> l21 [color=Blue]
  l20 -> l23 [color=Blue]
  l21 -> l23 [color=Blue]
  l23 -> l24 [color=Blue]
  l24 -> l11 [color=Blue]
  l27 -> l28 [color=Blue]
  l28 -> l29 [color=Blue]
  l29 -> l30 [color=Blue]
  l30 -> l36 [color=Blue]
  l29 -> l31 [color=Blue]
  l31 -> l32 [color=Blue]
  l32 -> l36 [color=Blue]
  l31 -> l34 [color=Blue]
  l34 -> l36 [color=Blue]
  l36 -> l37 [color=Blue]
  l37 -> l11 [color=Blue]
  l11 -> l40 [color=Blue]
  l40 -> l41 [color=Blue]
  l41 -> l42 [color=Blue]
  l42 -> l43 [color=Blue]
  l43 -> l44 [color=Blue]
  l14 -> rels [color=Blue]
  l15 -> rels [color=Blue]
  l16 -> rels [color=Blue]
  l17 -> rels [color=Blue]
  l18 -> rels [color=Blue]
  l19 -> rels [color=Blue]
  l27 -> rels [color=Blue]
  l28 -> rels [color=Blue]
  rels -> l48 [color=Blue]

  l10 -> l01 [color=Red]
  l10 -> l02 [color=Red]
  l14 -> l03 [color=Red]
  l14 -> rels [color=Red]
  l15 -> l04 [color=Red]
  l15 -> rels [color=Red]
  l16 -> l05 [color=Red]
  l16 -> rels [color=Red]
  l17 -> rels [color=Red]
  l17 -> l06 [color=Red]
  l18 -> rels [color=Red]
  l18 -> l03 [color=Red]
  l19 -> rels [color=Red]
  l19 -> l04 [color=Red]
  l20 -> l09 [color=Red]
  l23 -> l10 [color=Red]
  l23 -> l21 [color=Red]
  l23 -> l14 [color=Red]
  l23 -> l15 [color=Red]
  l23 -> l16 [color=Red]
  l23 -> l17 [color=Red]
  l23 -> l18 [color=Red]
  l23 -> l19 [color=Red]
  l24 -> l08 [color=Red]
  l27 -> rels [color=Red]
  l27 -> l03 [color=Red]
  l28 -> rels [color=Red]
  l28 -> l04 [color=Red]
  l29 -> l09 [color=Red]
  l29 -> l08 [color=Red]
  l31 -> l09 [color=Red]
  l31 -> l08 [color=Red]
  l32 -> l30 [color=Red]
  l34 -> l30 [color=Red]
  l36 -> l10 [color=Red]
  l36 -> l30 [color=Red]
  l36 -> l27 [color=Red]
  l36 -> l28 [color=Red]
  l37 -> l09 [color=Red]
  l37 -> l08 [color=Red]
  l39 -> l11 [color=Red]
  l40 -> l05 [color=Red]
  l41 -> l10 [color=Red]
  l41 -> l40 [color=Red]
  l43 -> l10 [color=Red]
}
// Code is here if you're interested:
// https://gist.github.com/neoeno/68a199005ef189d83a19b862682e68eb
```

This is, fairly obviously, super hard. Even worse — any developer could come in and add a tendril connecting any of the nodes to each other, meaning that bits of the code were dependent on each other.

So when that bit needed to change, many other things would break and programmers would spend ages tracing everything back and fixing the connections.

### Object Oriented Architecture

```graphviz
digraph objectoriented{
  PoemPrinter [style=filled, fillcolor=lightblue]
  SentencePrinter [style=filled, fillcolor=lightblue]
  SometimesRandomWordPrinter [style=filled, fillcolor=lightblue]
  RandomWordPrinter [style=filled, fillcolor=lightblue]
  PlainWordPrinter [style=filled, fillcolor=lightblue]
  // Control Flow

  // Calling initializers
  l090 -> PoemPrinter  [color=Blue]
  l090 -> SentencePrinter  [color=Blue]
  l090 -> SometimesRandomWordPrinter  [color=Blue]
  l090 -> RandomWordPrinter  [color=Blue]
  l090 -> PlainWordPrinter  [color=Blue]

  // PlainWordPrinter
  PlainWordPrinter -> l004  [color=Blue]
  l004 -> l005  [color=Blue]
  PlainWordPrinter -> l008  [color=Blue]
  l008 -> l009  [color=Blue]

  // RandomWordPrinter
  RandomWordPrinter -> l014  [color=Blue]
  l014 -> l015  [color=Blue]
  RandomWordPrinter -> l018  [color=Blue]
  l018 -> l019  [color=Blue]

  // SometimesRandomWordPrinter
  SometimesRandomWordPrinter -> l024  [color=Blue]
  SometimesRandomWordPrinter -> l028  [color=Blue]
  l024 -> l025  [color=Blue]
  l028 -> l029  [color=Blue]
  l029 -> l030  [color=Blue]
  l029 -> l032  [color=Blue]

  // SentencePrinter
  SentencePrinter -> l038  [color=Blue]
  SentencePrinter -> l042  [color=Blue]
  l038 -> l039  [color=Blue]
  l042 -> l043  [color=Blue]
  l043 -> l044  [color=Blue]
  l044 -> l045  [color=Blue]
  l045 -> l046  [color=Blue]
  l046 -> l047  [color=Blue]
  l046 -> l044  [color=Blue]
  l047 -> l044  [color=Blue]
  l044 -> l050  [color=Blue]

  // PoemPrinter
  PoemPrinter -> l058  [color=Blue]
  PoemPrinter -> l063  [color=Blue]
  l058 -> l055  [color=Blue]
  l058 -> l056  [color=Blue]
  l058 -> l059  [color=Blue]
  l059 -> l060  [color=Blue]
  l063 -> l064  [color=Blue]
  l064 -> l065  [color=Blue]
  l065 -> l066  [color=Blue]
  l066 -> l067  [color=Blue]
  l067 -> l068  [color=Blue]
  l067 -> l069  [color=Blue]
  l069 -> l071  [color=Blue]
  l068 -> l071  [color=Blue]
  l071 -> l072  [color=Blue]
  l072 -> l066  [color=Blue]
  l067 -> l074  [color=Blue]
  l074 -> l075  [color=Blue]
  l075 -> l081  [color=Blue]
  l074 -> l076  [color=Blue]
  l076 -> l077  [color=Blue]
  l077 -> l081  [color=Blue]
  l074 -> l079  [color=Blue]
  l079 -> l081  [color=Blue]
  l081 -> l082  [color=Blue]
  l082 -> l066  [color=Blue]
  l066 -> l086  [color=Blue]

  // Main
  l090 -> l108  [color=Blue]
  l108 -> PoemPrinter  [color=Blue]

  // Variable access

  // PoemPrinter
  l059 -> l058 [color=Red]
  l060 -> l058 [color=Red]
  l068 -> l064 [color=Red]
  l068 -> l056 [color=Red]
  l069 -> l065 [color=Red]
  l071 -> l065 [color=Red]
  l071 -> l060 [color=Red]
  l072 -> l064 [color=Red]
  l074 -> l064 [color=Red]
  l074 -> l055 [color=Red]
  l075 -> l065 [color=Red]
  l076 -> l064 [color=Red]
  l076 -> l055 [color=Red]
  l077 -> l065 [color=Red]
  l079 -> l065 [color=Red]
  l081 -> l065 [color=Red]
  l081 -> l059 [color=Red]
  l082 -> l056 [color=Red]
  l086 -> l065 [color=Red]

  // SentencePrinter
  l039 -> l038 [color=Red]
  l044 -> l039 [color=Red]
  l045 -> l039 [color=Red]
  l047 -> l043 [color=Red]
  l050 -> l043 [color=Red]

  // SometimesRandomWordPrinter
  l025 -> l024 [color=Red]
  l030 -> l025 [color=Red]

  // RandomWordPrinter
  l015 -> l014 [color=Red]
  l019 -> l015 [color=Red]

  // PlainWordPrinter
  l005 -> l004 [color=Red]
  l009 -> l005 [color=Red]

  // Main
  l108 -> l090 [color=Red]

  // The code: https://gist.github.com/neoeno/f7fff1347a8d5031c9e46b62f46af720
}
```

This is the diagram after converting the program to an Object Oriented approach. The classes are highlighted in blue.

Notice the clustering. While there is still a big messy chunk, it is all 'behind' (or 'within') the `PoemPrinter` class.

In fact, many OO (Object Oriented) languages are written so that it is impossible for any of the other nodes to connect with anything *except* by going through `PoemPrinter`. It acts as a **gatekeeper** to all the code and state inside it.

You will discover that this has many benefits.

For now, remember how we've gone from one big messy network to a number of smaller and distinct networks.


### Relatedness of methods

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

Let's imagine we're plotting the 'relatedness' of each of these methods, so the most closely related nodes are closest together.

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

## Exercise 1

Try drawing a **method relatedness graph** for the following examples:

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

Draw a **method relatedness graph** for this example:

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

Re-group the methods in the Calculator example into the appropriate classes.

## Exercise 4

**Test-drive** the secret diary example:

```
SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries
```

**First** organise it into one class only.

**Then**, when all your tests are green, reorganise it.

This will also involve reorganising your tests!
