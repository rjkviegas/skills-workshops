## 6. Refactoring Step


### Learning Objectives
- [ ] Use blocks and yield

### Intro

Let's refactor the way we are testing so we don't have to manually set and reset `$stdout` for each output test. All methods can be optionally passed a block of code in ruby and we can use the keyword `yield` or optionally `block.call` to run the block of code when we want to. It's worth playing around in pry.

```ruby
def replace_stdout_with(replacement, &block)
  $stdout = replacement

  yield

  $stdout = STDOUT
end
```

```ruby
#1. Setup
person = Person.new
output = StringIO.new

#2. Execute
replace_stdout_with(output) do
  person.greet('Edward')
end

#3. Verify
assert_equals(output.string, "Hi, Edward!\n")

# TEST PASSED
# Expected: "Hi, Edward!\n"
# Got: "Hi, Edward!\n"
```

Nice. You've successfully isolated your dependency and found a way to inject it, allowing you to test your code more easily using a mock. :boom:

### To complete this challenge, you will need to:
- [ ] Repeat the above exercises from scratch
- [ ] Reflect with your pair partner what you've learned
- [ ] How [can you test](https://www.researchgate.net/publication/220807320_Student_self-assessment_in_a_programming_course_using_bloom's_revised_taxonomy) that you've learned it?

### Further work
- [ ] Using `StringIO` to figure out a way to test `#gets`
- [ ] Instead of using `StringIO`, write your own class that implements the same interface - you'll know it works when you can use it instead of StringIO in the above example

[Back to project map](./README.md#project-map)
