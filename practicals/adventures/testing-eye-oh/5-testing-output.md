
## 5. Testing Output

### Learning Objectives
- [ ] Test output by using a replacement I/O object to capture output

### Intro

You should have seen that nothing was outputting to `STDOUT`, and therefore nothing showed in the terminal. Instead it's been written to our replacement IO object and stored there.

Using `StringIO#string` we can see what's been stored:

```ruby
# in pry
> replacement_output = StringIO.new
> $stdout = replacement_output

> puts 'Hi, Pair Partner!'
> replacement_output.string
# => 'Hi, Pair Partner!\n'
```
### Voila, we've captured the output. Now we can test it more easily!

_**Discuss:** Where does the new line character come from?_

### Example
Let's test the `Person#greet` method:

```ruby
class Person
  def greet(name)
    puts "Hi, #{name}!"
  end
end
```

So let's write a method to help compare two objects and outputs the result to STDOUT:

```ruby
# method to help assert whether an expected outcome is returned

def assert_equals(obj1, obj2)
  if obj1 == obj2
    result = "PASSED"
  else
    result = "FAILED"
  end

  puts "TEST #{result}"
  puts "Expected: #{obj2.inspect}"
  puts "Got: #{obj1.inspect}"
end
```

Then let's write a test, according to the first 3 of 4 stages of testing: (See resources below)

```ruby
#1. Set up
person = Person.new

#2. Execute
result = person.greet('Edward')

#3. Verify
assert_equals(result, "Hi, Edward!\n")

# TEST FAILED
# Expected: "Hi, Edward!\n"
# Got: nil
# => nil
```

If we run it now, we haven't captured the output so `person.greet('Edward')` outputs to STDOUT, returns `nil`, which then is compared with the expectation and fails the test.

Run it and see.

---

Now, let's capture the output.

The `#greet` method is using `#puts`, so we need to replace the default IO object that is stored in the global variable `$stdout` with our own:

```ruby
#1. Set up
person = Person.new
output = StringIO.new
$stdout = output

#2. Execute
person.greet('Edward')

#3. Verify
assert_equals(output.string, "Hi, Edward!\n")

#  => nil
```
What happens when we run it? Nothing gets output? It all just returns `nil?`

**Instruction:** Have a look at the output variable and see what strings have been appended to it. What does this mean?

Let's be precise and only replace the default value for `#puts` when our application code is being run, and revert back to the default for out test helper method.

```ruby
#1. Set up
person = Person.new
output = StringIO.new #(intending to replace output)
$stdout = output

#2. Execute
person.greet('Edward')

#3. Verify
$stdout = STDOUT
assert_equals(output.string, "Hi, Edward!\n")

# TEST PASSED
# Expected: "Hi, Edward!\n"
# Got: "Hi, Edward!\n"
# => nil
```

:smiley:

### To complete this challenge, you will need to:
- [ ] Repeat the above exercises from scratch
- [ ] Refactor your code, so you don't have to manually set and reset `$stdout`
- [ ] With your pair partner, create some new, similar little methods for `Person` that use #puts and #print and test them

### Resources

- [thoughtbot - four phase testing](https://robots.thoughtbot.com/four-phase-test)

[Back to project map](./README.md#project-map)
