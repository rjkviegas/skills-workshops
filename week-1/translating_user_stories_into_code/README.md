### Learning objectives
 - Understand how to manually test a user story
 - Translate a user story into code and (manually) test it
 - Understand the role of syntax in a class

### Introduction

Getting started with a new problem can be one of the hardest
part of the development process. Having a process which helps us take a brand new problem into code can help us overcome a mental block.

One thing we can do is analyse user stories and tease out the key ideas from this.

### Checking code manually
Here is a user story
##### As a bank account user, so that I can save my money, I would like to be able to deposit money into my bank account

Our user story breaks down into 3 main parts
- Who wants the feature
- What the feature would enable them to do
- What the feature should do

To help us understand the code we need to write we only need to consider the third part of the statement.

A working code example might look like:
```
class BankAccount
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
end
```

What would we expect to happen if this feature worked?

### Exercise 1

Looking at the user stories and the code below, can you verify that the user story has been implemented?

##### As a book reader, so that I can read my book, I want to be able to turn a page of my book
```
class Book
  def initialize
    @page = 1
  end
  def turn
    @page = @page + 1
    return
  end
  def page
    @page
  end
end
```

##### As a busy person, so that I can keep track of my business, I want to be able to add an item to a list
```
class TodoList
  def initialize
    @todos = []
  end
  def add(item)
    @todos.push(item)
    return
  end
  def todos
    @todos
  end
end
```

### Mapping a user story to the code
##### As a bank account user, so that I can save my money, I would like to be able to deposit money into my bank account

Pull out the nouns and the verbs of the user story above and describe what role they play in the bank account code.

### Exercise 2
In the other two user stories, pull out the nouns and the verbs and consider what role they play in the corresponding code.


### Exercise 3
Using the following user stories, complete the code to implement the user story. How would you run the code to check the user story has been implemented?

##### As a shop owner, so that I can open my shop for the day, I would like to be able to unlock the door.
```
class Door
  def initialize
    @locked = true
  end
  def unlock
  end
  def locked?
  end
end
```

##### As someone who struggles to sleep, so that I can fall asleep, I would like to be able to count sheep.
```
class Sheep
  def initialize
    @number = 0
  end
  def count
  end
end
```
