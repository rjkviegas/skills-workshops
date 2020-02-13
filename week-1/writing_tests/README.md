# Unit Testing

## Learning Objectives
- Define unit testing as the process of testing the smallest possible 'unit' of a programme.
- Understand each of the "3 As" of a unit test.
- Write some simple unit tests.

## Introduction
Unit tests are the code you write to test your code. They provide you with reassuarance that everything works as it should, and help to guard against introducing future errors. Just as a chef needs to test the food they make to be sure it's good enough to serve to their guests, you **need** to write unit tests in order to ensure that your code is of high quality.

At a high level, unit testing is about testing individual methods or areas (units) of your code to ensure that they do what you expect them to do. For any given unit of code, your unit tests allow you to ensure that, given a certain set of inputs, the output is as you expect.

Let's think about an example. Take a look at the following code snippet, and take a moment to understand what it does:

```ruby
class BankAccount
  def initialize
    @balance = 0
  end

  def print_balance
    "£#{@balance}"
  end

  def deposit(money)
    @balance += money
  end
end
```

We have a class, `BankAccount`, with an instance variable, `@balance` , which initially is zero. The `deposit` method takes an argument (an integer) and adds it to the balance.

Let's try writing a unit test to cover the `deposit` method. The first step is to determine **what exactly we want to test**. Think about what the method does - given an input (a number) how does the method change the state of our programme? Take a moment to consider this.

It looks like after the method is called, whatever is passed in as an argument should be present in the storage array. This can form the basis of our unit test - our **assertion**.

```ruby
describe BankAccount do
  it 'can deposit some money' do
    bank_account = BankAccount.new

    bank_account.deposit(10)

    expect(bank_account.print_balance).to eq("£10")
  end
end
```

Notice how our assertion forms the last line of our unit test.

## Exercise 1
Let's think about assertions in a little more detail.

Look at the code below. For the four methods `find_book` `add_book`, `remove_book`, and `all_books_by_subject` ask yourself the question 'what is the purpose of this unit of code'? Given some input, what output or change in state would you expect to see? Can you see the desired change of state by calling `list_books`?

Based on your answers to this question, imagine you were to write unit tests to cover each of the five methods - what would your assertions be? For now don't worry about RSpec syntax or how this assertion could actually be written - that will come later - just think about what it would be.

```ruby
class Library
  def initialize
    @books = [
      {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
    ]
  end

  def find_book(title)
    @books.find { |book| book[:title] == title }
  end

  def add_book(book)
    @books.push(book)
  end

  def remove_book(title)
    @books.delete_if { |book| book[:title] == title }
  end

  def all_books_by_subject(subject)
    @books.select { |book| book[:subject] == subject }
  end
  
  def list_books
    @books
  end
end
```

## Arrange, Act, Assert

Let's return to our initial example. Notice that the unit test is split into three distinct sections


```ruby
describe BankAccount do
  it 'can add money to the balance' do
    # Arrange
    bank_account = BankAccount.new

    # Act
    bank_account.deposit(10)

    # Assert
    expect(bank_account.print_balance).to eq("£10")
  end
end
```

This is a common pattern which many of your unit tests will follow.

1. First you **arrange** all the preconditions required for your code to run - creating any objects and assigning any variables that you're going to need.
1. Next, you **act**, or execute the code which needs to be run in order for your assertion to be true.
1. Finally, you **assert** that your action has had an effect, or that it returned the expected value.

## Exercise 2

Look back to the code example from exercise 1. You already have a set of assertions for the suite of unit tests to cover this code. Now consider what would be needed to fulfil the arrange and assert steps of these tests.

To help, ask yourself the following questions:
- What needs to be arranged in order for my code to run? What objects will I need instances of?
- What code will need to be executed in order to set up my expectation to be fulfilled?

## Exercise 3

At this stage, you have a clear idea of the tests you would need to write in order to cover the functionality in our Library class - now lets actually go ahead and write them.

If you haven't done so already, clone this `skills-workshops` repo then navigate to the folder containing the files for this session. Run `bundle`, then open the project in your text editor. You will find the code for the library class as well as the skeleton of an RSpec test suite. Based on your thoughts from exercises one and two try to write these tests and get them to pass. You can run the tests by using the `rspec` command from your terminal.
