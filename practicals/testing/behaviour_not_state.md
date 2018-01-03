# Testing behaviour rather than state, and why you should care

## How does testing state happen?

Consider the following code:

```ruby
class Diary
  def initialize
    @entries = []
  end

  def add_entry(title, body)
    @entries << { title: title, body: body }
    :ok
  end
end
```

How do we test this class? We might try something like this:

```ruby
RSpec.describe Diary do
  describe "#initialize" do
    it "initialises with zero entries" do
      diary = Diary.new
      expect(diary.entries).to eq []
    end
  end

  describe "#add_entry" do
    it "adds an entry to the list" do
      diary = Diary.new
      diary.add_entry("hello", "world")
      first_entry = diary.entries.first
      expect(first_entry[:title]).to eq "hello"
      expect(first_entry[:body]).to eq "world"
    end
  end
end
```

Unfortunately, this won't work as we don't have access to `@entries` in Diary.
But we can add an `attr_reader` to expose that so our tests work:

```ruby
class Diary
  attr_reader :entries

  def initialize
    @entries = []
  end

  def add_entry(title, body)
    @entries << { title: title, body: body }
    :ok
  end
end
```

Now everything works! Great!

Sadly, we've slipped into a common problem: **testing state rather than behaviour**.

This is more or less how it happens:

1. You're halfway through solving a problem and you realise you need to test
2. So you take what you've just made and write a test for what your method does
3. You fiddle with your class so it exposes the effect your method has on the object's state.
4. Hey presto — you're testing the state.

## Why do I care?

You care because now your class exposes its implementation (how it does its job) and your tests are relying on it too.

That means that if you want to refactor Diary, extract a class from it, or change the way it stores its state — you have to change your tests.

Nightmare! This is tonnes of additional work that we don't want to do! It makes our code less maintainable, and also makes other developers sad because they will have to change the tests all the time.

## How do I test behaviour?

There's a really great software engineering practice we can use here, but it does require a bit of thinking. You might have heard things like:

* Test methods, not instance variables
* Use getters/setters rather than working on instance variables
* Ensure you encapsulate state within the class

These are all true in their own way, but they don't get to the heart of the problem. To test behaviour, you need to think at the design level.

Follow this process:

1. Who or what is the user of this code? It might be the end user (a real person), or it might be another class
2. What job is this code doing for that user?

For example:

> **Question:** Who, or what, is the user of this code?
> **Answer:** The user of my Diary class is a person who is keeping their diary
>
> **Question:** What job is this code doing for that user?
> **Answer:** They add an entry so they can read it later

That second answer is the job or **behaviour** of the Diary class.

So now we know that, we start testing it:

```ruby
RSpec.describe Diary do
  describe "#add_entry" do
    it "adds an entry that can be read later" do
      diary = Diary.new
      diary.add_entry("hello", "world")
      expect(diary.print_entries).to eq "Title: hello, Body: world"
    end
  end
end
```

(This `print_entries` method doesn't exist yet — because we're doing TDD again!)

Now we're testing behaviour. So:

1. We can TDD this without having to think much about how we will implement it (hashes, arrays, etc)
2. We can refactor our class internals without this test failing
3. We're testing that the class does its job, not how it does it. Encapsulation!

## How can I integrate this into my process?

You can practice it now, and then try it on your own project.

If you follow these steps, even if they're hard, you will be well on your way to testing behaviour.

### Exercise 1

Start writing a tic-tac-toe implementation, but only the first user stories:

1. I can see the board on the screen
2. I can put an X on the board

You might need more than one class for this, but you don't need to create them all up front if you don't want to.

Remember, **test behaviour, not state**. Go through the example again if you're not sure.

### Exercise 2

Find a project recently where you've tested state rather than behaviour.

Refactor it to test behaviour instead.

### Exercise 3

What were you going to do after you read this?

Do that, but focus on testing behaviour, not state.
