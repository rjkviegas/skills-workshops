# Databases - Domain Modelling using CRC Cards

Modelling a database structure from user stories is a useful skill.
Here, we'll look at Class Responsibility Collaborator as one way to model a domain.  See this [example](../domain_modelling_student_directory_using_crc_cards/crc_example.md).

## Learning objectivess

An exercise to learn three things:

1. Model a simple domain using CRC cards
2. Infer database structure from domain structure
3. Validate the model using queries

## Instructions

Following are some user stories.

### Use CRC cards to model the domain (15 mins)

Using [CRC cards](http://agilemodeling.com/artifacts/crcModel.htm), model the domain in an Object-Oriented way.

### Create a database structure for the domain model (15 mins)

Draw out the structure of the database for the model you have built, in the following way (the example is a possible implementation of a `books` table):

```
Table: books

| id  | title     | author          |
|-----------------------------------|
|  1  | "1984"    | "George Orwell" |
|  2  | "Matilda" | "Roald Doahl"   |
```

> You may need to use foreign keys and associations. There may be one or more 'join' tables involved too, if you need to implement many-to-many relationships.

### Stretch goal: Create a database to validate the model

Create a database on your computer following the database structure you have designed.

For each user story, write a SQL query that would yield the information or achieve the task.

## Resources

- [ELI5: Relational Databases](https://www.reddit.com/r/explainlikeimfive/comments/3qqm9h/eli5_relational_databases/)
- [ActiveRecord guide: Database Associations](http://guides.rubyonrails.org/association_basics.html#the-types-of-associations) (with diagrams!)

## User Stories

```
As a library manager
So I can see how many books the library owns
I want to see the number of books owned by the library

As a librarian
So I can advise members about books
I want to see a list of books with title and author

As a librarian
So I know who can borrow books
I want to se a list of members names

As a librarian
So I can track where books are
I need to assign books to their current reader
```

### Bonus user stories

```
As a member
So I can remember when to bring my books back
I want to see a list of books I borrowed, and their due-by date

As a librarian
So I can call members who have overdue books
I want to see borrower's name and phone number for each overdue books
```
