## 2. What does #puts do - continued

### Learning Objectives
- explain what happens when you call `#puts`

### Intro
You maybe tried something along the lines of:

```ruby
class Cat

end

# in pry
> Cat.new.to_s
# => "#<Cat:0x00007f8d458e1988>"

> puts Cat.new
# <Cat:0x00007fe42a9676f0>
# => nil
```

```ruby
class Iguana
  def to_s
    "Roar, I'm a tiny dragon!"
  end
end

# in pry
> Iguana.new.to_s
# => "Roar, I'm a tiny dragon!"

> puts Iguana.new
# Roar, I'm a tiny dragon!
# => nil
```

It uses the [hierarchy of method lookups](https://gist.github.com/damien-roche/351bf4e7991449714533) to find a `#to_s` method
, calls it, and then somehow it pops up in the terminal.

So before `#puts` sends data to your terminal it tries to find a string respresentation of its argument(s). Easy enough when you're calling `#puts` with strings - but you can pass it any type, and it will try and convert it to a String.

But then how does this data appear in your terminal?

### To complete this challenge, you will need to:
 - [ ] Explain in simple terms
    - what connects `#puts` with the terminal
    - what Input and Output are in ruby

### Resources

- [thoughtbot - I/O in ruby](https://robots.thoughtbot.com/io-in-ruby)
- [ruby docs - IO](http://ruby-doc.org/core-2.2.2/IO.html)

[Back to project map](./README.md#project-map)
