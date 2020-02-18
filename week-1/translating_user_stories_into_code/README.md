### Learning objectives
 - Understand how to manually test a user story
 - Understand the role of syntax in a class
 - Translate a user story into code and (manually) test it

### Introduction

Getting started with a new problem can be one of the hardest
part of the development process. Having a process which helps us take a brand new problem into code can help us overcome a mental block

One thing we can do is analyse user stories and tease out the key ideas from this.

### Checking code manually
Here is a user story
##### As a bank account user, so that I can save my money, I would like to be able to deposit money into my bank account

Our user story breaks down into 3 main parts
- Who wants the feature
- What the feature would enable them to do
- What the feature should do

A working example might look like:

`class BankAccount
  def initialize
    @balance = 0
  end
  def deposit(money)
    @balance = @balance + money
    return
  end
  def balance
    @balance
  end
end`

How would we expect to happen for this feature to work?


### Exercise 1

Looking at the user stories and the code below, how would you verify that the user story has been implemented?

##### As a book reader, so that I can read my book, I want to be able to turn a page
```class Book
  def initialize
    @page = 1
  end
  def read_page
    @page = @page + 1
    return
  end
  def page
    @page
  end
end
```

##### As a busy person, so that I can keep track of my business, I want to be able to add an item to a list
```class TodoList
  def initialize
    @todos = []
  end
  def add_item(todo)
    @todos.push(todo)
    return
  end
  def list
    @todos
  end
end
```

### Mapping a user story to the code
In each of the three examples, can you see how parts of the user stories map to the code?

##### As a bank account user, so that I can save my money, I would like to be able to deposit money into my bank account

### Analysing user stories

##### As a bank account user, so that I can save my money, I would like to be able to deposit money into my bank account

##### As a bank account user, so that I can access my money, I would like to be able to withdraw money from my bank account



To help us understand the code we need to write we only need to consider the third part of the statement.

Looking at the last statement in the 2 user stories we can find nouns and verbs

| Nouns             | Verbs       |
| bank account      |  deposit    |
| money             |  withdraw   |

There are 3 main types of syntax in object orientated programming

bank_account ~ class
money        ~ instance variable
deposit      ~ method
withdraw     ~ method

### Exercise 1

Have a look at the user stories below. What would you choose to be your class, instance variables and methods?

##### As a book reader, so that I can read my book, I want to be able to turn a page

##### As a book reader, in case I forget what happens in the book, I want to be able to restart the book from page zero.

Translating into TDD
Want to test the deposit method.
bank_account = BankAccount.new
bank_account.deposit(10)
bank_account.balance

//Look at the user story -> pull nouns, verbs.
//show the working code

//show a user story
//demo using a class to convince ourselves the user story is implemented ok
//activity - given a user story how would you decide whether it's working?


//Compare working code examples.
//Ask what is common between all the code examples.
//What do we think the initalize method does? When does it run?
//Why do we use an @ symbol?

//Half written class. Can you fill in the blanks to fulfill a user story?
