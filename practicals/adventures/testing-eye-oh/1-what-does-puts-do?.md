## 1. What does #puts do?

```
"The most effective debugging tool is still careful thought, coupled with judiciously placed print statements."

— Brian Kernighan, "Unix for Beginners" (1979)
```

### Learning Objectives
- explain what happens when you call `#puts`
- use `pry` to explore and gain visibility

### Intro

Start a `pry` session and load this code snippet (require a file which has this contents, or copy the code straight into `pry`)

```ruby
QUESTIONS = [
  'What is the capital of France?',
  'What is the capital of Italy?'
]

def run
  QUESTIONS.each do |question|
    puts question
  end
end
```

Make a hypothesis what will happen when you call the `#run` method.

- What's the output?
- What's returned?

<br/>
<br/>
<br/>
<br/>

Scroll down!

<br/>
<br/>
<br/>
<br/>

Now call `#run` in `pry`.

**Discuss:** What happened - did it meet your hypothesis?

<br/>

You may have got something like:

```sh
# in pry
> run # call the method #run
What is the capital of France?
What is the capital of Italy?
=> ["What is the capital of France?", "What is the capital of Italy?"]
```

<br/>

Using the above example, in **pseudocode** perhaps a test that codifies the expected behaviour could look something like:

`when I call #run, it outputs 'What is the capital of France? What is the capital of Italy?'`

Which perhaps could be transliterated like this in ruby:

```ruby
run == 'What is the capital of France?What is the capital of Italy?'
# we expect that this evaluates to true if the #run method is written correctly
```

Try this in your `pry` session. What happens?

Probably something like this:

```sh
> run == 'What is the capital of France?What is the capital of Italy?'
What is the capital of France?
What is the capital of Italy?
 => false

```

It's not doing what you want because `#puts` returns `nil`:

```sh
> puts "a string"
a string # output
=> nil # return value

# so clearly this won't work because nil != "a string"
> puts "a string"  == "a string"
a string # output
=> false # return value
```

Every time we call the method `#puts` in our application code we're sending data to the terminal (this is [helpful](https://stackoverflow.com/questions/189562/what-is-the-proper-name-for-doing-debugging-by-adding-print-statements)) and then it returns `nil`.

If we can understand more about how `#puts` works, then we can find a way to capture the strings passed to it so we can test that they are correct.

### To complete this challenge, play around with the following:
 - [ ] Open up  `pry`
 - [ ] Create an empty `Cat` class.
 - [ ] Create a `Cat` instance and call `#to_s` on it.
    - Then `puts(cat)`, where cat is your instance.
 - [ ] Create an `Iguana` class and define your own `#to_s` instance method that returns a string.
 - [ ] Create an `Iguana`instance and call `#to_s` on it.
    - Then `puts(iguana)` where iguana is your instance.
 - [ ] **Discuss** what you observe

### Further inquiry
 - [ ] Explain the difference between `#print`, `#puts`, `#p`
 - [ ] Explore using ruby's docs how one of the above methods works.

### Resources

 - [Rubyguides - difference in print, puts, p](https://www.rubyguides.com/2018/10/puts-vs-print/)

[Back to project map](./README.md#project-map)
