# Domain modelling

1. Understand why we would use multiple objects in our programs
2. Understand how diagramming could support our understanding of a problem
3. Use diagramming as a technique to inform how we might design our program before
writing code

Given these user stories:

```
As a coach,
So that I know who I am coaching,
I would like a student to have a name
```
```
As a coach,
So that I can track attendance,
I would like a student to sign in and sign out
```
```
As a coach,
So that I can deliver the course,
I would like to add a student to the cohort
```
```
As a coach,
So that I can see who is in my cohort,
I would like to list students in the cohort
```
```
As a coach,
So that I know how many students are in,
I would like to count how many students are signed in
```

Let's talk about how we could go about deciding our domain model for these requirements.



### Exercise 1

Taking a look at these user stories:

What would a domain diagram for these user stories look like?

```
As a librarian
So that the public can read my books
I would like a book to have a name and an author
```

```
As a librarian
So that the public can read my books
I would like be able to loan and return a book
```
```
As a librarian
So that the public know what books are in the library
I would like to add a book to the library
```

```
As a librarian
So that the public know what books are in the library
I would like the library to list all books it has
```

```
As a librarian
So that the public know what books are in the library
I would like the library to list all available books
```
```
As a librarian
So that the public know what books are in the library
I would like the library to list all books by specific author
```

### Exercise 2

An example implementation of our domain diagram for our cohort/student problem could be.
Try running the code in irb.
What would you do to convince yourself the methods in student and cohort are working?

```
class Student
   def initialize(name)
      @name = name
      @on_site=false
   end

   def sign_in
     @on_site = true
     return
   end

   def sign_out
     @on_site = false
     return
   end  

   def on_site?
     @on_site
   end
end
```

```
class Cohort
  def initialize
     @students = []
  end

  def add(student)
      @students.push(student)
  end

  def students
     @students
  end

  def count_of_signed_in_students
    @students.select { |student| student.on_site? }.count
  end
end    
```


### Follow on
Some activities that may help you practise this skill could be to:
- Have a go at writing the code and manually testing (you may find the starter code below helpful)
- Have a go at writing tests in rspec
- Have a go at isolating your tests between book and library

```
class Book
  def initialize(name, author)
    @name = name
    @author = author
    @on_loan = false
  end  
end
```
```
class Library
   def initialize
      @books = []
   end

   def available
   end

   def books_by(author)
   end

   def list_books
   end
end
```
