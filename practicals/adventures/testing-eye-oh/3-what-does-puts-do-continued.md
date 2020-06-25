## 3. What does #puts do - continued

### Learning Objectives
- [ ] Explain that a ruby object connects to the STDOUT stream

### Intro

So what is the object being written to with the `#puts` method? What connects the `#puts` with the terminal where the result is shown? How does this help us test when using `#puts` ?

Have a look at the following. Run them in `pry`:

```ruby
$stdout.puts('hello')
```
or

```ruby
STDOUT.puts('hello')
```

What is stored in both the variable and constant?

Explore what they return:

```sh
> $stdout
=> #<IO:<STDOUT>>
> STDOUT
=> #<IO:<STDOUT>>
```

### The IO class
Ruby IO objects wrap Input/Output streams.

The constants `STDIN`, `STDOUT`, and `STDERR` point to IO objects wrapping the standard streams, which themselves are files on your machine. By default the global variables `$stdin`, `$stdout`, and `$stderr` point to their respective constants. While the constants should always point to the default streams, **the globals can be overwritten to point to another I/O stream such as a file, socket, or any oject that implements the same read/write interface. IO objects can be written to via puts and print**.


Essentially it is the stream that connects to the terminal. By using `#puts` we can send data there.

#### If we can replace the IO object stored in `$stdout` with an object that can be written to (so it stores the strings) and we can read that data back, we can test that the strings are the correct ones!
#### This is an approach to mocking `$stdout` - Yay!

### _ Enter Ruby stage left._

Ruby has an object that's great for substituting IO objects, because it does exactly what we need: it can be written to and read from.

### To complete this challenge, you will need to:
 - [ ] Find a replacement I/O object in ruby's standard library
 - [ ] Discuss with your pair a way to use it
 - [ ] Play around with how it works!

### Further Challenge
 - [ ] Where is #puts defined? Another way to phrase this: which object owns the `#puts` method?

### Resources
 - [Ruby's IO](https://www.rubyguides.com/2019/02/ruby-io/)
 - [Ruby's StringIO](https://www.rubyguides.com/2017/05/stringio-objects/)
 - [Ruby's Method class](https://ruby-doc.org/core-2.5.3/Method.html)

[Back to project map](./README.md#project-map)
