Testing your Tests with Mutation Testing
========================================

## Learn to

* Test your tests with mutation testing

## Introduction

Test coverage shows you which lines of your code have and haven't run in the course of your test suite.

But running code doesn't necessarily mean you've tested it effectively!

Today we're going to learn a technique called mutation testing. If you're writing code that counts — maybe it's controlling a nuclear reactor, or maybe it's just a tech test to get you a job — it's a technique you can use to prove to yourself that your tests really test.

### Example

Consider this code:

```ruby=
class Basket
  def initialize
    @items = []
  end

  def add_item(name, price)
    @items << { name: name, price: price}
    nil
  end

  def total
    prices = @items.map { |item| item[:price] }
    prices.reduce(:+)
  end
end

RSpec.describe Basket do
  describe "#total" do
    it "totals up the prices" do
      basket = Basket.new
      basket.add_item("fruit", 5)
      expect(basket.total).to eq 5
    end
  end
end

```

This test passes — however, it isn't comprehensive. If we change line 13:

```ruby=13
prices.reduce(:+)
```

To:

```ruby=13
prices.reduce(:-)
```

The test still passes!

This is obviously bad — the basket now subtracts all the prices to get the total. Not what we were intending. This means the test isn't doing its job.

### The process

```flow
start=>start: Begin
change=>operation: Change the implementation
test=>operation: Run the tests
pass=>condition: Do they pass?
revert=>operation: Revert the change
end=>end: You found untested behaviour!

start->change->test->pass
pass(no)->revert->change
pass(yes,left)->end
```

### Things you might change

* Comment out lines
* `if` to `unless`
* `+` to `-` or `*` or `/` (and vice versa)
* Add `1` to numbers
* Change strings / add typos
* `>` to `>=` (and vice vera)
* Add any other subtle bugs that come to mind

## Exercise 1

Clone the [takeaway challenge](https://github.com/makersacademy/takeaway-challenge) repository and check out the branch `example_1`.

Use mutation testing to find all the untested behaviour in the project.

Keep a note of every untested line, method, or behaviour that you find.

## Exercise 2

Pick one of yours or your pair partner's takeaway challenge repositories.

Use mutation testing to find all the untested behaviour.

Then swap to the other person's repository.
