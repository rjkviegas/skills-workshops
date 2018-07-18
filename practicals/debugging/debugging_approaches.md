Debugging Approaches
====================

## Learn to

* Debug simple and complex programs

## Introduction

Debugging literally means 'removing bugs'. The name comes from a story about the computing pioneer Grace Hopper, who once tracked down a problem to a literal bug, taping it to her report for good measure:

![Image of a moth attached to a bug log](https://i.imgur.com/bs71qW0.png)

You can see from the above page that Hopper was following a methodical process.

## Exercise 1

Debug this:

```ruby
def say_hello(name)
  "hello #(name)"
end
```

## Exercise 2

Debug this:

```ruby
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
```


## Interlude: Debugging mindsets

Exercise 1 probably felt easier than exercise 2. Many bugs will be so easy you don't even notice yourself fixing them. But most of the *time* you spend debugging will be on the hard bugs.

As such, it makes a lot of sense to develop your debugging skill. The more you improve that skill, the faster you are to extract the learning from the experience and move on to the next.

Let's consider two mindsets, 'brain modes', we might use to find bugs:

1. Find the fix
2. Find the problem

When **finding the fix** we're solution-oriented. We're driven to try the first thing we see in hope it works.

When **finding the problem** we're learning-oriented. We're driven to understand the code we look at before we make changes.

Most people instinctively jump to the fixing mindset, because in the real world we can often merely 'look for something out of place' in order to fix problems.

It's actually a pretty good strategy in most situations — but not for the hard bugs.

## Interlude: Getting visibility

The biggest tool in our armoury is **getting visibility**.

You'll hear this term a lot. It refers to a variety of techniques to 'see into' your program as it runs. This helps us understand the code.

Consider this buggy example:

```ruby
def factorial(n)
  product = 1
  while n > 0
    n -= 1
    product *= n
  end
  product
end

# Intended output:
#
# > factorial(5)
# => 120
```

We could comb through the code and figure out what is wrong with it, or we could **get visibility** using the `p` command, like so:

```ruby
def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end
```

Try running that and fixing the bug.


## Exercise 4

```ruby
def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[65 - char.ord]
  end
  plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
```

Your task is **not** to fix this code. Let go of that idea.

Imagine your friend wrote this code and doesn't know where he went wrong. He doesn't need your fix — he needs to understand the problem so he can write better code.

To do this you need to **find the problem**. Locate the problems in this code and make notes you can use to explain the problem.
